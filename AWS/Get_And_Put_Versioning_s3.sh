#!/usr/bin/bash
accounts=`cat accounts`

for account in $accounts;
do
        echo "========================================================"
        echo "Check the s3 Buckets in the Account: $account"

        list=$(aws s3api list-buckets --query "Buckets[].Name" --output text --profile $account > buckets)
        buckets=`cat buckets`

        for bucket in $buckets;
        do
                cmd=$(aws s3api get-bucket-versioning --bucket $bucket --output text --profile $account)

                if [ -z "$cmd" ]; then
                        verscmd=$(aws s3api put-bucket-versioning --bucket $bucket --versioning-configuration Status=Enabled --profile $account)
                        echo "$account - $bucket - "Disabled --NewStatus: Enabled"" | tee -a buckets-list-updated.txt
                elif [ $cmd == "Suspended" ]; then
                        verscmd=$(aws s3api put-bucket-versioning --bucket $bucket --versioning-configuration Status=Enabled --profile $account)
                        echo "$account - $bucket - $cmd "--NewStatus: Enabled"" | tee -a buckets-list-updated.txt
                elif [ $cmd == "Disabled" ]; then
                        verscmd=$(aws s3api put-bucket-versioning --bucket $bucket --versioning-configuration Status=Enabled --profile $account)
                        echo "$account - $bucket - $cmd "--NewStatus: Enabled"" | tee -a buckets-list-updated.txt
                else
                        echo "$account - $bucket - $cmd" | tee -a buckets-list.txt

                fi
        done

done
