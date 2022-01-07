#/bin/bash
agent_ip=$(curl http://whatismyip.akamai.com | head -n 1| cut -d $' ' -f2)
az webapp config access-restriction add \
-g appservicedeploymenttest \
-n lpappservicedeploymenttestprod \
-s lock \
-p 1 \
--ip-address $agent_ip \
-r "DevOps Agent IP" \
--description "Allows access to the DevOps agent to deploy to this slot" 




