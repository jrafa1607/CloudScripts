### ☁️ AWS Cloud Automations 🚀
*A robust collection of scripts and automations designed for efficient, secure, and multi-account AWS management.*

[![AWS CLI](https://img.shields.io/badge/AWS%20CLI-v2-orange?style=for-the-badge&logo=amazon-aws&logoColor=white)](https://aws.amazon.com/cli/)
[![Python](https://img.shields.io/badge/Python-3.x-blue?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Shell Script](https://img.shields.io/badge/Shell%20Script-Bash-green?style=for-the-badge&logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)
[![Security & Governance](https://img.shields.io/badge/Security-SSO%20&%20IAM-red?style=for-the-badge&logo=amazonaws&logoColor=white)](https://aws.amazon.com/iam/)

---

### 📖 Overview

Welcome to **AWS Cloud Automations**! This repository provides a centralized toolkit of **Shell Scripts, Python programs, and AWS CLI commands** engineered to streamline infrastructure management across **multiple AWS accounts and regions**.

Designed for **Cloud Engineers, DevOps, and SRE professionals**, these automations eliminate repetitive manual tasks, reduce operational overhead, and enforce governance at scale.

---

### ✨ Why Automate AWS Operations?

| Pillar | Description |
| :--- | :--- |
| 💰 **Cost Optimization** | Remove and Handle idle, obsolete, and orphaned resources. |
| 🛡️ **Compliance** | Ensure that Resources and Configurations are always in **Compliance**. |
| 📈 **Scalability** | Apply complex actions quickly across **Multiple Accounts and Regions**. |
| ⚙️ **Standardization** | Automating Tasks removes the Variability and Risk associated with Manual Practices. |

---

### 🛠️ Setup Guide
The automations available in this Repository use the **AWS Command Line Interface (CLI)** configured with **AWS Identity Center (SSO)** credentials. Follow the steps below to configure your environment:

#### Prerequisites & Configuration Steps
1. **AWS CLI Installation:** Ensure that the latest available version of the AWS CLI is Installed: [AWS CLI](https://aws.amazon.com/cli/).
2. **Configure AWS SSO:** Use the Official AWS Guide: [Configure the AWS CLI for AWS SSO](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-sso.html).
3. **Local Setup:** You will need to copy the desired scripts from this repository into your environment.
4. **Account Definition:** Create a File named `accounts` in your local environment's directory.
5. **Update the File:** Update this File with the **Account Names**. 

#### File Example: `accounts`
```text
<ProfileName-Num1>
<ProfileName-Num2>
<ProfileName-Num3>
<ProfileName-Num4>
```

6. **Authentication (SSO Credentials Configuration):**

* Your CLI Installation Environment must contain the directory: `~/.aws/config`
* Edit the Config File, with the **Account Name** used in the `accounts` file into the Profile Field.

#### File Example: `~/.aws/config`

```ini
[profile <ProfileName-Num1>]
sso_start_url = <Your-SSO-Portal-URL>
sso_region = <Your-SSO-Region>
sso_account_id = <ID Number>
sso_role_name = <PermissionSetRoleName>
region = <default-aws-region>
output = json

[profile <ProfileName-Num2>]
sso_start_url = <Your-SSO-Portal-URL>
sso_region = <Your-SSO-Region>
sso_account_id = <ID Number>
sso_role_name = <PermissionSetRoleName>
region = <default-aws-region>
output = json

```

---

## 🔐 Authentication & Execution

> After concluding the configuration of the **accounts** and **config** files, you must validate the setup by performing an AWS Login via CLI.
> To do this, simply run the command: `aws sso login`. This command will open your browser for Authentication and store a Temporary Credential in Cache.
> This Credential will be used to execute the automations.
> 
> 

```bash
aws sso login --profile <ProfileName-Num1>

```

---

## 🤝 Contributing & Feedback

Contributions, feature requests, and bug reports are always welcome! Feel free to open an issue or submit a pull request.

---

⚠️ **Important:** Always Review the Automations before executing them. It is important to fully understand which actions will be implemented.
Therefore, whenever possible, test them first in non-production environments before executing them in production environments.
