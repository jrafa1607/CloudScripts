#!/usr/bin/bash
contas=`cat contas`
# Declare an array of string with type
declare -a StringArrayRegions=("us-east-1" "sa-east-1")
for conta in $contas;
do
        for regiao in ${StringArrayRegions[@]}; # Iterate the string array using for loop
        do
                echo "==== Solicitando o aumento de Quotas de VPCs de 20 Por regioes para 25 na conta: $conta na regiao $regiao ======"
                docsdb=$(aws service-quotas request-service-quota-increase --service-code vpc --quota-code L-F678F1CE --desired-value 25 --region $regiao --profile $conta)
                echo "$conta - $regiao - $docsdb" | tee -a report_quotas_increase.txt
                echo "========================================================================================"
        done
done