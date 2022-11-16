# CloudScripts

In this repository, the ShellScripts are developed for Command Automations in AWS. For this, you need to install and configure the AWS CLI
Installation Link: https://aws.amazon.com/pt/cli/

After that, you need to configure the .aws directory configuration file and enter the account profiles. The model is available in this repository with the name: config

Finally, just create a directory and insert a file with the name of all configured profiles. The template is available in this repository under the name: accounts

The Scripts Are:

- Aws_GetAndPutVersionings3.sh: Checks that s3 versioning is enabled, then enable it if isn't.
- Aws-GetIAM.sh: List All IAM Users With Information About the AccessKeys, included the Last Access.
- Aws_GetSG.sh: Collects information about every SecurityGroup present in the LandingZone.
- Aws_IncreaseQuotas_PoliciesForRoles.sh: Makes the request to increase policy quotas in roles.
- Aws_IncreaseQuotas_VpcForRegions.sh: Makes a request to increase Vpcs quotas by regions.
- AWS_ListAllStackWithRollbackFailed.sh: List all Stacks in LandingZone with the status: UPDATE_ROLLBACK_FAILED.
- Aws_ListDocumentsDB: DocumentsDB List in the LandingZone
- Aws_ListEc2WithIdInformation: Ec2 List + Info about Status (Stopped / Running)
- Aws_ListEc2WithIdInformation: Ec2 List + Info about Nextwork (IPV4, DNS, SG, etc.)