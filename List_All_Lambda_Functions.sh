#!/usr/bin/bash
accounts=`cat accounts`

# Declare an array of string with type
declare -a StringArrayRegions=("us-east-1" "sa-east-1")

for account in $accounts;
do
        for region in ${StringArrayRegions[@]}; # Iterate the string array using for loop
        do
                echo "==== List All Lambda Functions from Account: $account"
				cmd=$(aws lambda list-functions --query 'Functions[].[FunctionName,FunctionArn]' --output json --region $region --profile $account)
				echo "$account - $region" 
				
		echo "$cmd"
		echo "============================================================================="
        done
done
