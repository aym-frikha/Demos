juju run-action ceilometer/2 --wait pause
juju run-action ceilometer/2 --wait openstack-upgrade
juju run-action ceilometer/2 --wait resume

juju run-action ceilometer/0 --wait pause
juju run-action ceilometer/0 --wait openstack-upgrade
juju run-action ceilometer/0 --wait resume

juju run-action ceilometer/1 --wait pause
juju run-action ceilometer/1 --wait openstack-upgrade
juju run-action ceilometer/1 --wait resume
