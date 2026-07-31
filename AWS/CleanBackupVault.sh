#!/usr/bin/bash
accounts=`cat accounts`

echo "Vault Name: "
read vault

echo "Region: "
read region

for account in $accounts;
do
    echo "========================================================"
    echo "Check all The Recovery Points in the Vault: $vault in the AWS Account: $account"

	list=$(aws backup list-recovery-points-by-backup-vault --query 'RecoveryPoints[].[RecoveryPointArn]' --backup-vault-name $vault --region $region --profile $account --output json > RecoveryPointsList)
	
	rp=`cat RecoveryPointsList`

	for point in $rp;
	do
		echo "Removing the Recovery Point: $point"
		removerp=$(aws backup delete-recovery-point --recovery-point-arn $point --backup-vault-name $vault --output text --region $region --profile $account)
		
		echo $removerp		
       	done
fi
done
