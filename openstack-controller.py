from lib import juju_cli, openstack_utils
import os
from jinja2 import Environment, FileSystemLoader


THIS_DIR = os.path.dirname(os.path.abspath(__file__))
cloud_name = 'openstack'
controller_name = 'openstack'
model_name = 'stage-env'
k8s_bundle = "Clouds/Openstack/Bundles/k8s-bundle.yaml"

def render_openstack_cloud_files():
    keystone_ip = juju_cli.run('openstack', 'keystone/0', 'hostname --ip-address')

    j2_env = Environment(loader=FileSystemLoader(THIS_DIR),
                         trim_blocks=True)

    openstack_cloud_juju = j2_env.get_template('Clouds/Openstack/template/openstack-cloud-juju.yaml.j2').render(
        keystone_ip=keystone_ip.rstrip())

    openstack_cloud_sdk = j2_env.get_template('Clouds/Openstack/template/openstack-cloud-sdk.yaml.j2').render(
        keystone_ip=keystone_ip.rstrip())

    with open('Clouds/Openstack/openstack-cloud.yaml', 'w') as f:
        f.write(openstack_cloud_juju)

    with open('lib/clouds.yaml', 'w') as f:
        f.write(openstack_cloud_sdk)

def bootstrap_juju():
    juju_cli.add_cloud(cloud_name, 'Clouds/Openstack/openstack-cloud.yaml')
    juju_cli.add_credential(cloud_name, 'Clouds/Openstack/openstack-credentials.yaml')
    openstack_utils.create_public_network()
    openstack_utils.create_private_network()
    openstack_utils.create_router()
    openstack_utils.creat_flavor()
    pub_net = openstack_utils.conn.network.find_network(openstack_utils.public_net_name)
    priv_net = openstack_utils.conn.network.find_network(openstack_utils.private_net_name)
    juju_cli.bootstrap(cloud_name, options=['--config', 'network=' + str(priv_net.id),
    '--config', 'external-network=' + str(pub_net.id), '--config','use-floating-ip=true', '-d', model_name])
    juju_cli.deploy(model_name, k8s_bundle)

if __name__ == '__main__':
    render_openstack_cloud_files()
    bootstrap_juju()