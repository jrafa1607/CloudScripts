#!/usr/bin/bash

contas=`cat contas`

for conta in $contas;
do
        echo "========================================================"
        echo "Verificando Buckets da conta: $conta"

        list=$(aws s3api list-buckets --query "Buckets[].Name" --output text --profile $conta > buckets)
        buckets=`cat buckets`

        for bucket in $buckets;
        do

                cmd=$(aws s3api get-bucket-versioning --bucket $bucket --output text --profile $conta)

                if [ -z "$cmd" ]; then
                        verscmd=$(aws s3api put-bucket-versioning --bucket $bucket --versioning-configuration Status=Enabled --profile $conta)
                        echo "$conta - $bucket - "Disabled --NewStatus: Enabled"" | tee -a buckets-list-updated.txt
                elif [ $cmd == "Suspended" ]; then
                        verscmd=$(aws s3api put-bucket-versioning --bucket $bucket --versioning-configuration Status=Enabled --profile $conta)
                        echo "$conta - $bucket - $cmd "--NewStatus: Enabled"" | tee -a buckets-list-updated.txt
                elif [ $cmd == "Disabled" ]; then
                        verscmd=$(aws s3api put-bucket-versioning --bucket $bucket --versioning-configuration Status=Enabled --profile $conta)
                        echo "$conta - $bucket - $cmd "--NewStatus: Enabled"" | tee -a buckets-list-updated.txt
                else
                        echo "$conta - $bucket - $cmd" | tee -a buckets-list.txt

                fi
        done

done