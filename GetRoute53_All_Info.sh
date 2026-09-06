#!/usr/bin/bash
accounts=`cat accounts`

for account in $accounts;
do
        echo "========================================================"
        echo "Check all The Hosted Zones from the AWS Account: $account"

        list=$(aws route53 list-hosted-zones --query 'HostedZones[].[Id,Name,ResourceRecordSetCount]' --region us-east-1 --profile $account)

        #List with All IDs from Hosted Zones in each AWS Account!
        listzones=$(aws route53 list-hosted-zones --query 'HostedZones[].[Id]' --output text --region us-east-1 --profile $account > zones)

        zones=`cat zones`
        if [ -z $zones ]; then
                echo "The Account $account doesn't have any Hosted Zone!"
        else
                for zone in $zones;
                do
                        echo "Check all The Records from the Hoste Zone: $zone"
                        echo " "
                        
                        getstatus=$(aws route53 list-resource-record-sets --hosted-zone-id $zone --output text --region us-east-1 --profile $account)
                        echo $getstatus
                done
        fi
done
