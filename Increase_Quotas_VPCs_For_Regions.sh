#!/usr/bin/bash
accounts=`cat accounts`

# Declare an array of string with type
declare -a StringArrayRegions=("us-east-1" "sa-east-1")

for account in $accounts;
do
        for region in ${StringArrayRegions[@]}; # Iterate the string array using for loop
        do
                echo "==== Request the Increase of VPC Quotas from 20 to 25 in the Account: $account in the region: $region ======"
                docsdb=$(aws service-quotas request-service-quota-increase --service-code vpc --quota-code L-F678F1CE --desired-value 25 --region $region --profile $account)
                
                echo "$account - $region - $docsdb" | tee -a report_quotas_increase.txt
                echo "========================================================================================"
        done
done
