#!/bin/bash

declare -a env=("dev" "qa" "uat" "vagrant")
declare -a group=("all" "docker" "haproxy" "mongo" )

## now loop through the above array
for i in "${env[@]}"
do
   for j in "${group[@]}"
   do
  	  ansible-vault decrypt $i/group_vars/$j/vault.yml --vault-password-file ~/vault/audit.txt || true  
   done
done