#!/usr/bin/bash
contas=`cat contas`

for conta in $contas;
do
        echo "========================================================"
        echo "Check all The Hosted Zones from the AWS Account: $conta"

        list=$(aws route53 list-hosted-zones --query 'HostedZones[].[Id,Name,ResourceRecordSetCount]' --region us-east-1 --profile $conta)

        #List with All IDs from Hosted Zones in each AWS Account!
        listzones=$(aws route53 list-hosted-zones --query 'HostedZones[].[Id]' --output text --region us-east-1 --profile $conta > zones)

        zones=`cat zones`
        if [ -z $zones ]; then
                echo "The Account $conta doesn't have any Hosted Zone!"
        else

                for zone in $zones;
                do
                        echo "Check all The Records from the Hoste Zone: $zone"
                        echo " "
                        getstatus=$(aws route53 list-resource-record-sets --hosted-zone-id $zone --output text --region us-east-1 --profile $conta)

                        echo $getstatus

                done
        fi
done