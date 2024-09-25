# wHat is this?

This is a example of a .NET Core application that gets built and deployed using Azure DevOps Pipelines. 
THere is also a IaC (Infrastructure as Code) that deploys the application to Azure App Service.

# How to use this?
THere is two pipelines

azure-pipelines.yml - This pipeline builds the application and deploys it to Azure App Service
buildinfra.yml - This pipeline deploys the infrastructure to Azure using Terraform

In order to use buildinfra.yml, you need to chagne the backend.tf file to point to your Azure Storage Account.

