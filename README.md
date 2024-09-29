# wHat is this?

This is a example of a .NET Core application that gets built and deployed using Azure DevOps Pipelines. 
THere is also a IaC (Infrastructure as Code) that deploys the application to Azure App Service.

# How to use this?

This solution is the final solution for a lab in Azure DevOps with Terraform.

In order to run this, 

1. import the repository to Azure DevOps.
2. Create a storage account which is publicly accessible and create a container and SAS key and point to it in backend.tf (note, usage of the SAS token is not recommended in production - this is just for training purposes)
3. THere are two pipelines

azure-pipelines.yml - This pipeline builds the application and deploys it to Azure App Service
buildinfra.yml - This pipeline deploys the infrastructure to Azure using Terraform

Inside the pipelines, you'll need to update the service connections to point to your Azure subscription.



