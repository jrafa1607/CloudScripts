#!/usr/bin/bash
contas=`cat contas`
# Declare an array of string with type
declare -a StringArrayRegions=("us-east-1" "us-east-2" "us-west-2" "sa-east-1" )
for conta in $contas;
do
        for regiao in ${StringArrayRegions[@]}; # Iterate the string array using for loop
        do
                echo "==== List Stacks from: $conta"
                echo "==== Check in the Region: $regiao"
                cmd=$(aws cloudformation list-stacks --stack-status-filter UPDATE_ROLLBACK_FAILED --profile $conta --region $regiao)
                echo "$cmd"
                echo "===================================================="
        done
done