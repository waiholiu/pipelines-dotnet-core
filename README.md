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

For example, under 
```
    - task: AzureRmWebAppDeployment@4
      inputs:
        ConnectionType: 'AzureRM'
        azureSubscription: 'MIPDG--lod49466407(ef3e1b06-c3be-46c3-95dd-3e20738072e2)'
        appType: 'webApp'
        WebAppName: 'pul-yaml-44234366'
        packageForLinux: '$(System.ArtifactsDirectory)/drop/*.zip'
```

you'll need to update azureSubscription to be your own service connection


