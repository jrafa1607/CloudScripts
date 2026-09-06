#!/usr/bin/bash
accounts=`cat accounts`

# Declare an array of string with type
declare -a StringArrayRegions=("us-east-1" "sa-east-1")

for account in $accounts;
do
        for region in ${StringArrayRegions[@]}; # Iterate the string array using for loop
        do
                echo "==== All Trails in the Account: $account"
                cmd=$(aws cloudtrail list-trails --output text --region $region --profile $account)
                
		echo "$account - $region - $cmd" | tee -a trails.txt
                echo "================================="
        done
done
