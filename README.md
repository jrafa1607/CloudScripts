# Cloud Scripts - Automações

<!---Esses são exemplos. Veja https://shields.io para outras pessoas ou para personalizar este conjunto de escudos. Você pode querer incluir dependências, status do projeto e informações de licença aqui--->

![GitHub repo size](https://img.shields.io/github/repo-size/iuricode/README-template?style=for-the-badge)
![GitHub language count](https://img.shields.io/github/languages/count/iuricode/README-template?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/iuricode/README-template?style=for-the-badge)
![Bitbucket open issues](https://img.shields.io/bitbucket/issues/iuricode/README-template?style=for-the-badge)
![Bitbucket open pull requests](https://img.shields.io/bitbucket/pr-raw/iuricode/README-template?style=for-the-badge)

<p align="center">
  <img src="cloud-img.png" alt="Cloud Computing" style="width: 350px; height: 350px;">
</p>

> Nesse repositório, estão armazenadas as automações desenvolvidas para realizarem tarefas Cross-Region e Multi-Account. Todas as automações foram desenvolvidas em ShellScript.

## AWS
### 🚀💻 Pré-requisitos

Para executar as automações desenvolvidas para ambientes AWS, é necessário:
- [x] [Instalação e Configuração do AWS CLI](https://aws.amazon.com/pt/cli/)
- [x] Configurar no Diretório .AWS os arquivos `Config` e `Credentials`
- [x] Copiar as automações disponíveis neste repositório para um diretório na home do seu usuário.
- [x] Copiar para dentro do diretório recém-criado, o arquivo chamado "contas"]

Lembrando que o arquivo <b>contas</b> deve ter o nome das contas do seu ambiente AWS, o mesmo nome configurado no arquivo <b>Config</b>. Por exemplo:

#### Arquivo Contas
<AccountName-Num1>
<AccountName-Num2>

#### Arquivo Config
[profile <AccountName-Num1>]
sso_start_url = URL
sso_region = <region>
sso_account_id=<ID Number>
sso_role_name = <PermissionSet>
output = json

[profile <AccountName-Num2>]
sso_start_url = URL
sso_region = <region>
sso_account_id=<ID Number>
sso_role_name = <PermissionSet>
output = json