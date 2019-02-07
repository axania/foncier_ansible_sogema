#!/bin/bash

<<<<<<< HEAD
declare -a env=("dev" "qa" "pp-ml")
declare -a group=("all" "docker" "haproxy")
=======
declare -a env=("dev" "qa")
declare -a group=("all" "docker" "alfresco")
>>>>>>> master

## now loop through the above array
for i in "${env[@]}"
do
   for j in "${group[@]}"
   do
  	  ansible-vault encrypt $i/group_vars/$j/vault.yml --vault-password-file ~/vault/foncier.txt || true  
   done
done
