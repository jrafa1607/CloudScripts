#!/usr/bin/bash
accounts=`cat accounts`

# Declare an array of string with type
declare -a StringArrayRegions=("us-east-1" "sa-east-1")

for account in $accounts;
do
        for region in ${StringArrayRegions[@]}; # Iterate the string array using for loop
        do
                echo "==== Check All users from Account: $account"
                docsdb=$(aws docdb describe-db-clusters --profile $account --region $region --query 'DBClusters[].DBClusterIdentifier' --output text)
                
                echo "$account - $region - $docsdb" | tee -a docsdb_result.txt
                echo "================================="
        done
done
