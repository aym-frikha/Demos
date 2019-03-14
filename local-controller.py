from lib import juju_cli

controller_name = 'localhost'
model_name = 'dev-env'
bundle_name = 'cs:~kwmonroe/bundle/java-devenv-4'

juju_cli.bootstrap('localhost', options=['-d', model_name])
juju_cli.deploy(model_name, bundle_name)