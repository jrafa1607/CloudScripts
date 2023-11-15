# CloudScripts
> This repository stores the automations developed to perform Cross-Region and Multi-Account tasks. All automations were developed in Python or ShellScript.

## AWS
### 🚀💻 Prerequisites

- [x] [CLI Install and Configuration](https://aws.amazon.com/pt/cli/)
- [x] Config the files: `Config` e `Credentials` on the directory .AWS 
- [x] Copy the scripts located in this repositoty to your environment.
- [x] Copy to your enviroment the file: `Contas`
- [x] Insert the ID's Number Accounts of your AWS LangindZone in the file: `Contas`, like:

#### File: Contas
`<AccountName-Num1>`<br>
`<AccountName-Num2>`

- [x] Configure the Config file with [AWS SSO Configure](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-sso.html) or Using these structure:

#### File: Config
`[profile <AccountName-Num1>]`<br>
`sso_start_url = URL`<br>
`sso_region = <region>`<br>
`sso_account_id=<ID Number>`<br>
`sso_role_name = <PermissionSet>`<br>
`output = json`<br>

`[profile <AccountName-Num2>]`<br>
`sso_start_url = URL`<br>
`sso_region = <region>`<br>
`sso_account_id=<ID Number>`<br>
`sso_role_name = <PermissionSet>`<br>
`output = json`<br>