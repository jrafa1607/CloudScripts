# CloudScripts
> This repository stores the automations developed to perform Cross-Region and Multi-Account tasks. 
> All automations were developed in Python or ShellScript.

## AWS
### 🚀💻 Prerequisites

- [x] [CLI Install and Configuration](https://aws.amazon.com/pt/cli/)
- [x] Config the files: `Config` e `Credentials` on the directory .AWS 
- [x] Copiar as automações disponíveis neste repositório para um diretório na home do seu usuário.
- [x] Copiar para dentro do diretório recém-criado, o arquivo chamado "contas"

Lembrando que o arquivo <b>contas</b> deve ter o nome das contas do seu ambiente AWS, o mesmo nome configurado no arquivo <b>Config</b>. Por exemplo:

#### Arquivo Contas
`<AccountName-Num1>`<br>
`<AccountName-Num2>`

#### Arquivo Config
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