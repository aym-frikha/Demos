from lib import juju_cli

cloud_name = 'aws'
controller_name = 'aws'
model_name = 'prod-env'
k8s_bundle = "Clouds/AWS/LandscapeDemo/Bundles/bundle-landscape.yaml"

def bootstrap():
    juju_cli.add_credential(cloud_name, 'Clouds/AWS/aws-credentials.yaml')
    juju_cli.bootstrap(cloud_name, options=['--credential', cloud_name, '-d', model_name])

if __name__ == '__main__':
    bootstrap()
    juju_cli.add_model(controller_name, model_name)
    juju_cli.deploy(model_name, k8s_bundle)
