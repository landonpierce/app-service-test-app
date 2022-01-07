#/bin/bash
az webapp config access-restriction remove -g appservicedeploymenttest -n lpappservicedeploymenttestprod -s lock -r "DevOps Agent IP"