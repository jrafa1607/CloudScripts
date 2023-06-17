#!/usr/bin/bash
contas=`cat contas`
# Declare an array of string with type
declare -a StringArrayRegions=("us-east-1" "us-east-2" "us-west-2" "sa-east-1" )
for conta in $contas;
do
        for regiao in ${StringArrayRegions[@]}; # Iterate the string array using for loop
        do
                echo "==== List All Lambda Functions from Account: $conta"
                cmd=$(aws lambda list-functions --query 'Functions[].[FunctionName,FunctionArn]' --output json --region $regiao --profile $conta)
                echo "$conta - $regiao" 
		echo "$cmd"
		echo "================================================================================="
        done
done
