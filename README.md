# CloudScripts

Neste repositório, está centralizado algoritmos em ShellScripts para Automações de comandos em ShellScript para AWS
Para isso, é necessário instalar e configrar o AWS CLI
Link de Instalação: https://aws.amazon.com/pt/cli/

Em seguida, é necessário configurar o arquivo de config do diretório .aws e inserir os profiles da conta.
O modelo está disponível neste repositório com o nome: config

Por fim, basta criar um diretório e inserir um arquivo com o nome de todos os profiles configurados.
O modelo está disponível neste repositório com o nome: contas

As automações são:

- Aws_ListDocumentsDB: Listagem de DocumentsDB
- Aws_ListEc2WithIdInformation: Listagem de Ec2 + Informações de execução (Stopped / Running)
- Aws_ListEc2WithIdInformation: Listagem de Ec2 + Informações de Rede, como IPV4, DNS, SG, dentre outras
