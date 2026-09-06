#!/usr/bin/bash
accounts=`cat accounts`

# Declare an array of string with type
declare -a StringArrayRegions=("us-east-1" "sa-east-1")

for account in $accounts;
do
        for region in ${StringArrayRegions[@]}; # Iterate the string array using for loop
        do
                echo "==== Check the Ec2 from Account: $account"
                cmd=$(aws ec2 describe-network-interfaces --filters Name=addresses.private-ip-address,Values=x.x.x.x --output text --region $region --profile $account)
                
                echo "$account - $region - $cmd" | tee -a ListSecurityGroups.txt
                echo "================================="
        done
done
