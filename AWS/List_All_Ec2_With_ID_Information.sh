#!/usr/bin/bash
contas=`cat contas`
# Declare an array of string with type
declare -a StringArrayRegions=("us-east-1" "us-east-2" "us-west-2" "sa-east-1" )
for conta in $contas;
do
        for regiao in ${StringArrayRegions[@]}; # Iterate the string array using for loop
        do
                echo "==== Verificando Ec2 da conta: $conta"
                cmd=$(aws ec2 describe-instances --query 'Reservations[].Instances[].[InstanceId,Name,State.Name]' --output text --region $regiao --profile $conta)
                echo "$conta - $regiao - $cmd" | tee -a ec2List.txt
                echo "================================="
        done
done