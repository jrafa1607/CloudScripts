#!/usr/bin/bash
accounts=`cat accounts`

# Declare an array of string with type
declare -a StringArrayRegions=("us-east-1" "sa-east-1")

for account in $accounts;
do
        for region in ${StringArrayRegions[@]}; # Iterate the string array using for loop
        do
                echo "==== Request the Quotas Update - IAM Managed Policies from 10 to 20: $account in the Region: $region ======"
                docsdb=$(aws service-quotas request-service-quota-increase --service-code iam --quota-code L-0DA4ABF3 --desired-value 20 --region $region --profile $account)
                
                echo "$account - $region - $docsdb" | tee -a report_quotas_increase.txt
                echo "========================================================================================"
        done
done
