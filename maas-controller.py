from lib import juju_cli

base_dir = 'clouds/maas/'

bootstrap_tag = 'virtual'
cloud_name = 'maas'
controller_name = 'maas'
model_name = 'openstack'
bundle = base_dir + "bundles/openstack.yaml"

def bootstrap():
    """Bootstrap a juju controller on MAAS.

    :returns: None
    """
    juju_cli.add_cloud(cloud_name, base_dir + 'maas-cloud.yaml')
    juju_cli.add_credential(cloud_name, base_dir + 'maas-credentials.yaml')
    juju_cli.bootstrap(cloud_name, options=['--bootstrap-constraints', 'tags=' + bootstrap_tag])

if __name__ == '__main__':
    bootstrap()
    juju_cli.add_model(controller_name, model_name)
    juju_cli.deploy(model_name, bundle)
