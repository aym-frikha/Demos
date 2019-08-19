#!/bin/bash
juju config landscape-client registration-key="123456"
landscape_ip=$(juju run \
	     --application landscape-haproxy 'unit-get private-address')

landscape_crt=$(juju run \
      	     --application landscape-haproxy \
       	          'sudo openssl x509 -in /var/lib/haproxy/default.pem' | base64)

juju config landscape-client url="https://${landscape_ip}/message-system" \
                  		       ping-url="http://${landscape_ip}/ping" \
                  		       ssl-public-key="base64:${landscape_crt}"

juju run --application landscape-client 'sudo systemctl restart landscape-client.service'
