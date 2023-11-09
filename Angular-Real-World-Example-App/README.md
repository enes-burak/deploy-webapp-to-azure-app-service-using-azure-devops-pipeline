# Deploy-Angular-webapp-to-Azure-App-Service-using-Azure-Pipelines

Prerequisites :
- An Azure account with an active subscription. <a href="https://azure.microsoft.com/en-us/free/?WT.mc_id=A261C142F" target="_blank">Create an account for free.</a> 
- An Azure DevOps organization. <a href="https://learn.microsoft.com/en-us/azure/devops/pipelines/get-started/pipelines-sign-up?view=azure-devops" target="_blank">Create an account for free.</a> 

# Project Task and Steps:
1- Create a Azure Container Registry >>> <a href="https://github.com/hkaanturgut/azure-devops-apps/tree/main/terraspace%20codes/app/stacks/acr" target="_blank">ACR Terraspace Codes</a> 

![Screenshot 2023-02-05 at 8 52 24 AM](https://user-images.githubusercontent.com/113396342/217688610-006dc446-8ecf-4a3d-b15f-f154b2cf40b5.png)

#

2- Create a Azure DevOps Project 

![Screenshot 2023-02-08 at 2 31 20 PM](https://user-images.githubusercontent.com/113396342/217632564-f86fd45d-71dd-4d84-be47-1daae752e659.png)
#

3- Create new service connection to make a connection between ACR-AzureDevOps and Github-AzureDevOps
   
   - Project Settings > Service Connections > Create service connection 

![Screenshot 2023-02-05 at 8 57 12 AM](https://user-images.githubusercontent.com/113396342/217633014-62678a4b-86c4-440c-a497-0c29e4289f29.png)

![Screenshot 2023-02-05 at 8 57 48 AM](https://user-images.githubusercontent.com/113396342/217633694-1400bf3b-9124-4843-8fd6-9a289aa5bbe7.png)

![Screenshot 2023-02-05 at 8 58 37 AM](https://user-images.githubusercontent.com/113396342/217633906-991d0dc1-4bd3-4c3b-8d25-0ad1460d7c16.png)

#

4- Create a new Pipeline 

![Screenshot 2023-02-05 at 8 56 39 AM](https://user-images.githubusercontent.com/113396342/217632782-b58144bd-7164-4054-97f5-fe6e953e0756.png)
#

5-  Walk through the steps of the wizard by first selecting GitHub as the location of your source code. 

![Screenshot 2023-02-05 at 9 10 47 AM](https://user-images.githubusercontent.com/113396342/217638839-0d15cdc5-4775-4c7e-bab2-59274c42692f.png)
#
6- When the list of repositories appears, select your repository. 

![Screenshot 2023-02-05 at 9 10 57 AM](https://user-images.githubusercontent.com/113396342/217639058-7971399c-4d8d-4b30-9c21-d935837f5dc8.png)
#

7- When the Configure tab appears, select Docker build and push an image to ACR.

![Screenshot 2023-02-05 at 9 11 04 AM](https://user-images.githubusercontent.com/113396342/217639369-3de7ef44-3c35-4ebb-a93b-be832263e750.png)
#

8- Build and Push job has been done.

![Screenshot 2023-02-05 at 9 22 56 AM](https://user-images.githubusercontent.com/113396342/217639635-1b75cd55-36c8-4b94-910c-6d6fa7c21ac2.png)

    - Image has been deployed to ACR

![Screenshot 2023-02-05 at 9 23 38 AM](https://user-images.githubusercontent.com/113396342/217639788-e040ab94-5a69-409d-804d-fb87388d33ba.png)
#

# RELEASE TO AZURE WEB APPS

- Create a Azure Linux Web App for Containers >>> <a href="https://github.com/hkaanturgut/azure-devops-apps/tree/main/terraspace%20codes/app/stacks/angular-app_linux_webapp" target="_blank">App Service Terraspace Codes</a> 

![Screenshot 2023-02-05 at 9 23 08 AM](https://user-images.githubusercontent.com/113396342/217700929-adb3b2b3-830d-4b43-917e-166b305c1367.png)
#

1- Create a Release Pipeline from the Release tab of the Pipeline

![Screenshot 2023-02-05 at 9 24 30 AM](https://user-images.githubusercontent.com/113396342/217688921-9083a95c-2e43-4288-8e13-d4ae9866583d.png)
#

2- Select Azure App Service deployment

![Screenshot 2023-02-05 at 9 24 59 AM](https://user-images.githubusercontent.com/113396342/217689291-709b0b52-0965-41c0-ac6c-86b159c9e55b.png)
#

3- Add the artifact 

![Screenshot 2023-02-05 at 9 25 23 AM](https://user-images.githubusercontent.com/113396342/217689347-8de010ed-1a8e-4421-b793-31105be835c7.png)

    - Do not forget to enable continuous deployment trigger
    
![Screenshot 2023-02-05 at 9 25 47 AM](https://user-images.githubusercontent.com/113396342/217689586-f4efccc5-27da-4f75-8984-acd315764d98.png)  
#

4- Make the configurations of the stage 
   
    - Save and click on Create release
    
![Screenshot 2023-02-05 at 9 28 03 AM](https://user-images.githubusercontent.com/113396342/217701323-af893b0c-e984-4988-a29e-3c6f4df99936.png)


![Screenshot 2023-02-05 at 9 28 28 AM](https://user-images.githubusercontent.com/113396342/217693477-c924c69f-3152-43ac-8562-1cfd4a5d6be0.png)
#

- Release pipeline is succesfull

![Screenshot 2023-02-05 at 9 32 22 AM](https://user-images.githubusercontent.com/113396342/217693646-333fa57a-f9e0-435f-9837-b93ec8a881f5.png)
#

- Logs of the stage can be viewed from logs tab

![Screenshot 2023-02-05 at 9 32 46 AM](https://user-images.githubusercontent.com/113396342/217693883-537d486f-0fe2-4d8e-8b02-95b6ca3c4ed4.png)
#

## Add the website expose port from the Azure Portal otherwise website will not work
   
   App Service > Configuration > Application Settings > New application setting > 
   
   ![Screenshot 2023-02-09 at 7 01 45 PM](https://user-images.githubusercontent.com/113396342/218096900-4851e758-d2a7-4c03-a361-480c5a02e254.png)

   Add the exposing port that is on the Dockerfile ( this port is just for example )
   
   ![Screenshot 2023-02-09 at 7 02 06 PM](https://user-images.githubusercontent.com/113396342/218097051-68ad3708-9d14-49b8-8815-70d20ec1cd76.png)
#

- Here is the working website throug Azure Web App

![Screenshot 2023-02-05 at 9 32 53 AM](https://user-images.githubusercontent.com/113396342/217694126-a94e0bea-20ef-4e11-ada5-2cc9de4f1258.png)
#

# TESTING OUR AUTO RELEASE PIPELINE

- I changed the sentence under our main title on home page

![Screenshot 2023-02-05 at 9 35 06 AM](https://user-images.githubusercontent.com/113396342/217694936-170470c5-b8b7-4761-a0f6-7b55906d5955.png)
#

- Pipeline has been trigged as changed code just pushed to the Github repository

![Screenshot 2023-02-05 at 9 36 24 AM](https://user-images.githubusercontent.com/113396342/217695165-9433d686-0f2e-49a3-8387-d23c2e8a1959.png)
#

- After pipeline is done , release pipeline has been automaticly triggered.

![Screenshot 2023-02-05 at 9 39 43 AM](https://user-images.githubusercontent.com/113396342/217695310-4fed7700-b67d-4255-bc87-2c3f9e27a32b.png)
#

- Release pipeline succesfully deployed

![Screenshot 2023-02-05 at 9 41 50 AM](https://user-images.githubusercontent.com/113396342/217695400-5b85174a-bccc-4cfd-92eb-b3e512b76e7e.png)
#

# RESULT

![Screenshot 2023-02-05 at 9 41 56 AM](https://user-images.githubusercontent.com/113396342/217695655-0f6ddf58-bb56-4ca4-9854-8f38de801981.png)

# TROUBLESHOOTING

- If you are getting this port error , make sure you add the website port setting > <a href="https://github.com/hkaanturgut/DEPLOY-5-WEBAPPS-TO-AZURE-APP-SERVICE-USING-AZURE-DEVOPS-PIPELINES#add-the-website-expose-port-from-the-azure-portal-otherwise-website-will-not-work" target="_blank">Solution</a> 

![Screenshot 2023-02-09 at 7 08 23 PM](https://user-images.githubusercontent.com/113396342/218098268-eeb103b1-55e9-4e9d-973b-689b2b53ddab.png)
