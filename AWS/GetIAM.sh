#!/usr/bin/bash
contas=`cat contas`

for conta in $contas;
do
        echo "========================================================"
        echo "Check all The Users from the AWS Account: $conta"

        list=$(aws iam list-users --profile $conta --query 'Users[].[UserName]' --output text > users)
        echo -e "\n- All the Users Listed: "

        usr=$(aws iam list-users --profile $conta --query 'Users[].[UserName]' --output text)
        echo "$usr"

        users=`cat users`
        for user in $users;
        do

                getstatus=$(aws iam list-access-keys --user-name $user --profile $conta  --output json)
                getkeys=$(aws iam list-access-keys --user-name $user --profile $conta --query 'AccessKeyMetadata[].[AccessKeyId]' --output text > keys)

                echo -e "\nInfo About All the Keys for the user: $user"
                echo "$getstatus"
                echo "$getkeys"

                keys=`cat keys`
                for key in $keys;
                do
                        listkey=$(aws iam get-access-key-last-used --access-key-id $key --profile $conta --output json)
                        echo "Information About the Last Access of the Key: $key"
                        echo "$listkey"
                        echo "==========*==========="

                done


        done

done