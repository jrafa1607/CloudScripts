# CloudScripts

In this repository, the ShellScripts are developed for Command Automations in AWS. For this, you need to install and configure the AWS CLI
Installation Link: https://aws.amazon.com/pt/cli/

After that, you need to configure the .aws directory configuration file and enter the account profiles. The model is available in this repository with the name: config

Finally, just create a directory and insert a file with the name of all configured profiles. The template is available in this repository under the name: accounts

The Scripts Are:

- Aws_GetAndPutVersionings3.sh: Checks that s3 versioning is enabled, then enable it if isn't.
- Aws_GetSG.sh: Collects information about every SecurityGroup present in the LandingZone.
- Aws_IncreaseQuotas_PoliciesForRoles.sh: Faz o request para o aumento de quotas de policies em roles.
- Aws_IncreaseQuotas_VpcForRegions.sh: Faz o request para o aumento de quotas de vpcs por regioes.
- Aws_ListDocumentsDB: Listagem de DocumentsDB
- Aws_ListEc2WithIdInformation: Listagem de Ec2 + Informações de execução (Stopped / Running)
- Aws_ListEc2WithIdInformation: Listagem de Ec2 + Informações de Rede, como IPV4, DNS, SG, dentre outras
