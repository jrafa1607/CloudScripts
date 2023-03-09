#!/usr/bin/bash
contas=`cat contas`
# Declare an array of string with type
declare -a StringArrayRegions=("us-east-1" "us-east-2" "us-west-2" "sa-east-1" )
for conta in $contas;
do
        for regiao in ${StringArrayRegions[@]}; # Iterate the string array using for loop
        do
                echo "==== Verificando usuarios da conta: $conta"
                docsdb=$(aws docdb describe-db-clusters --profile $conta --region $regiao --query 'DBClusters[].DBClusterIdentifier' --output text)
                echo "$conta - $regiao - $docsdb" | tee -a docsdb_resultado.txt
                echo "================================="
        done
done