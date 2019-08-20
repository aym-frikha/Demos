#!/bin/bash


source clouds/openstack/rc


juju_unit='nova-compute-kvm/1'
#juju run-action nova-compute-kvm/1 --wait openstack-upgrade

hostname=`juju run --unit $juju_unit "hostname"`
hostname_id=`nova hypervisor-list | grep $hostname | awk '{print $2}'`
nova host-evacuate-live $hostname
while  [ "$(nova hypervisor-show $hostname_id | grep running_vms | awk '{print $4}')" != "0" ]; do  nova hypervisor-show $hostname_id | grep running_vms | awk '{print $4}' ;  sleep 1; done

juju run-action $juju_unit --wait pause
juju run-action $juju_unit --wait openstack-upgrade
juju run-action $juju_unit --wait resume




juju_unit='nova-compute-kvm/0'
#juju run-action nova-compute-kvm/1 --wait openstack-upgrade

hostname=`juju run --unit $juju_unit "hostname"`
hostname_id=`nova hypervisor-list | grep $hostname | awk '{print $2}'`
nova host-evacuate-live $hostname
while  [ "$(nova hypervisor-show $hostname_id | grep running_vms | awk '{print $4}')" != "0" ]; do  nova hypervisor-show $hostname_id | grep running_vms | awk '{print $4}' ;  sleep 1; done

juju run-action $juju_unit --wait pause
juju run-action $juju_unit --wait openstack-upgrade
juju run-action $juju_unit --wait resume



juju_unit='nova-compute-kvm/2'
#juju run-action nova-compute-kvm/1 --wait openstack-upgrade

hostname=`juju run --unit $juju_unit "hostname"`
hostname_id=`nova hypervisor-list | grep $hostname | awk '{print $2}'`
nova host-evacuate-live $hostname
while  [ "$(nova hypervisor-show $hostname_id | grep running_vms | awk '{print $4}')" != "0" ]; do  nova hypervisor-show $hostname_id | grep running_vms | awk '{print $4}' ;  sleep 1; done

juju run-action $juju_unit --wait pause
juju run-action $juju_unit --wait openstack-upgrade
juju run-action $juju_unit --wait resume


juju_unit='nova-compute-kvm/3'
#juju run-action nova-compute-kvm/1 --wait openstack-upgrade

hostname=`juju run --unit $juju_unit "hostname"`
hostname_id=`nova hypervisor-list | grep $hostname | awk '{print $2}'`
nova host-evacuate-live $hostname
while  [ "$(nova hypervisor-show $hostname_id | grep running_vms | awk '{print $4}')" != "0" ]; do  nova hypervisor-show $hostname_id | grep running_vms | awk '{print $4}' ;  sleep 1; done

juju run-action $juju_unit --wait pause
juju run-action $juju_unit --wait openstack-upgrade
juju run-action $juju_unit --wait resume

