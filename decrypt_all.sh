#!/bin/bash

declare -a env=("dev" "qa")
declare -a group=("all" "docker" )

## now loop through the above array
for i in "${env[@]}"
do
   for j in "${group[@]}"
   do
  	  ansible-vault decrypt $i/group_vars/$j/vault.yml --vault-password-file ~/vault/foncier.txt || true  
   done
done
