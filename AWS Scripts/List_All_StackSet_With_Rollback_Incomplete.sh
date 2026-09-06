#!/usr/bin/bash
accounts=`cat accounts`

# Declare an array of string with type
declare -a StringArrayRegions=("us-east-1" "sa-east-1" )

for account in $accounts;
do
        for region in ${StringArrayRegions[@]}; # Iterate the string array using for loop
        do
                echo "==== List Stacks from: $account"
                echo "==== Check in the Region: $region"
                
                cmd=$(aws cloudformation list-stacks --stack-status-filter UPDATE_ROLLBACK_FAILED --profile $account --region $region)
                
                echo "$cmd"
                echo "===================================================="
        done
done
