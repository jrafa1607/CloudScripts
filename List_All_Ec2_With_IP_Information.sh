#!/usr/bin/bash
accounts=`cat accounts`

# Declare an array of string with type
declare -a StringArrayRegions=("us-east-1" "sa-east-1")

for account in $accounts;
do
        for region in ${StringArrayRegions[@]}; # Iterate the string array using for loop
        do
                echo "==== Checl All Ec2 from Account: $account"
                cmd=$(aws ec2 describe-instances --query 'Reservations[].Instances[].[InstanceId,Name,AvailabilityZone,PrivateDnsName,PrivateIpAddress,PublicDnsName,PublicIpAddress,State.Name]' --output text --region $region --profile $account)
                
                echo "$account - $region - $cmd" | tee -a ec2List.txt
                echo "================================="
        done
done
