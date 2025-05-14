# aws-static-website
An example of a simple static website, running on an EC2 webserver, deployed on AWS using Terraform. Includes a Gitlab CI/CD deployment pipeline.

# IaC Configuration
The provided terraform code deploys an EC2 instance and a security group that allows HTTP inbound traffic and all outbound traffic.
The webserver is configured to run [user_data.sh](terraform/scripts/user_data.sh) on launch. The script and starts installs Apache HTTP Servers, then it creates a basic index.html file.

I deployed this static website on AWS as this is the cloud platform I have been using most recently.

# Prerequisites
To manually deploy this static website from your local machine, you will require

* The [Terraform CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) installed on your local machine.
* An AWS account and its associated credentials (access key and secret access key).

# Deployment

1. Update the AWS provider in [providers.tf](terraform/providers.tf) with your AWS access key and secret access key
2. Initialise the directory with `terraform init`
3. Run `terraform plan` to check the resources that will be created, changed or destroyed by your deployment.
4. If you are happy with the results of the plan, run `terraform apply` to deploy the static website.
5. If successful, the deployment should output the EC2 instance's public IP, which you can use to access your static website.

# Gitlab CI/CD Pipeline
The provided [gitlab-ci.yml](.gitlab-ci.yml) file defines three stages to successfully deploy the static webpage:

* `validate` initialises terraform and validates that the terraform code is syntactically correct and consistent.
* `plan` runs a `terraform plan` command and outputs the result to a `tfplan` artifact.
* `apply` runs a `terraform apply` command using the `tfplan` artifact. This stage is run manually and can only be run on `main`

My most recent CI/CD experience has been with Gitlab CI/CD, but I have used Azure DevOps in previous jobs.



