#!/usr/bin/bash
contas=`cat contas`

echo "Informe o nome do Cofre: "
read vault

echo "Informe a Região: "
read region

for conta in $contas;
do
    echo "========================================================"
    echo "Check all The Recovery Points in the Vault: $vault in the AWS Account: $conta"

	list=$(aws backup list-recovery-points-by-backup-vault --query 'RecoveryPoints[].[RecoveryPointArn]' --backup-vault-name $vault --region $region --profile $conta --output json > RecoveryPointsList)
	
	rp=`cat RecoveryPointsList`

	for point in $rp;
	do
		echo "Removing the Recovery Point: $point"
		removerp=$(aws backup delete-recovery-point --recovery-point-arn $point --backup-vault-name $vault --output text --region $region --profile $conta)
		
		echo $removerp		
       	done
fi
done
