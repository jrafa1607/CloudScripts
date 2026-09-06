### 🛠️ Setup Guide
The automations available in this Repository use the **AWS Command Line Interface (CLI)** configured with **AWS Identity Center (SSO)** credentials. Follow the steps below to configure your environment

---

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

#### 🔐 Authentication & Execution

After concluding the configuration of the **accounts** and **config** files, you must validate the setup by performing an AWS Login via CLI.
To do this, simply run the command: **`aws sso login`**. This command will open your browser for Authentication and store a Temporary Credential in Cache.
This Credential will be used to execute the automations.

```bash
aws sso login --profile <ProfileName-Num1>
```
