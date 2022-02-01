# Contacts App

## Introduction

- After development process of a full stack application whatever the frameworks which are used.
- We are moving to the deployment process in which we are going to deploy our app to the cloud
- This app includes 3 layers which are database, API, frontend.

### Why is Deployment Important

- Deployment is the mechanism through which applications are delivered from developers to users.
- Software deployment can happen within hours and the process of installation also becomes quicker.
- Deployment can configure permission roles to give better control overs sensitive group of computers.
- The methods used by developers to build, test, deploy new code will impact how fast a product  
can respond to changes in customer preferences or requirements and the quality of each change.

### Used Technologies

- Amazon Web Services
- CircleCI
- Github
- Git
- Local Machine Dependencies
  - Node v14.15.1
  - npm 6.14.8
  - AWS CLI v2

---

## Getting Started

### RDS Database Setup

- First, go sign in to AWS website and search for RDS service.
- Then click on databases on the navigation pane, and click on create database
- To create database, follow these steps
  - Choose standard create for creation method, then choose postgres engine type.
  ![This is a alt text.](https://github.com/mario3796/contacts-app-hosting/blob/master/images/screenshots/RDS(1).png)
  - Choose the PostgreSQL 12.5-R1, then choose the free tier template
  ![This is a alt text.](https://github.com/mario3796/contacts-app-hosting/blob/master/images/screenshots/RDS(2).png)
  - In the settings fill the username and password, and in the connectivity set public access to Yes
  ![This is a alt text.](https://github.com/mario3796/contacts-app-hosting/blob/master/images/screenshots/RDS(3).png)
  - In the additional configuration fill the initial database name, then click on create database
  ![This is a alt text.](https://github.com/mario3796/contacts-app-hosting/blob/master/images/screenshots/RDS(4).png)
- finally the database will be created.

---

### Backend Deployment

- To deploy backend application, do the following steps:
  - Make sure you have installed the node_modules by running ```npm install```
  - Build the application by running ```npm run build```
  - Run ```eb init```, this command will create 'config.yml' file inside '.elasticbeanstalk' folder
  - Then configure the file with the way that you want
  - Run ```npm create```, to deploy your build folder on aws elastic beanstalk service
  - To edit the deployed built project, compress your built project in zip file  
  by running this command ```npm run zip```, then move to config.yml file then add this  
  ![This is a alt text.](https://github.com/mario3796/contacts-app-hosting/blob/master/images/screenshots/ebdeploy.png)
  - Then run ```eb use``` to use the environment.
  - Then run ```eb deploy``` to deploy the compressed project to the cloud
  - Finally, that will appear to you
  ![This is a alt text.](https://github.com/mario3796/contacts-app-hosting/blob/master/images/screenshots/ebhealth.png)

---

### Frontend Deployment

- Before deployment, we need to sign in to AWS, and search for IAM service.
  - Move to Users Group in the navigation pane, then click on Create group.
  - Enter the User group name, then scroll down to Attach permissions policies, then search for  
  AdministratorAccess, then check on it, then click on Create group, then the users group will be created.
  - Go to Users in the navigation pane, then click on Add users.
  - Enter the User name, then check on Access key & Password, then click on Next.
  - Set permission to Add user to group, then you can add user to group by checking the created  
  user group which is created, then click on Next, then click on Next again, then Create user.
  - The user will be created, then click on Download.csv to download your credentials in an Excel file  
  , then click on close.

- To deploy the frontend Project, we will do the following steps
  - We have to navigate to frontend project folder, and run ```npm install``` to install node_modules.
  - Then run ```npm run build``` to build the project.
  - Go sign in to AWS and search for S3 service, then scroll down a bit and click on Create bucket.
  - In the general configuration, fill the bucket name
  - scroll down to Block Public Access, then uncheck Block all public access, then check this
  ![This is a alt text.](https://github.com/mario3796/contacts-app-hosting/blob/master/images/screenshots/s3acknowledge.png)
  - then click on Create bucket, and the bucket will be created.
  - Enter the newly created bucket and click on properties tab, then scroll down to static web hosting and click Edit.
  - Change Static web hosting from disable to enable.
  - Fill the Index document by typing index.html, then click on Save changes.
  - Click on permissions tab, then scroll down to Bucket policy and click on Edit.
  - In Edit Bucket policy, fill the policy with this
    ![This is a alt text.](https://github.com/mario3796/contacts-app-hosting/blob/master/images/screenshots/s3acknowledge.png)
  - Then replace bucketname with the name of bucket you created, then click on Save changes.
  - To upload the built project, you should configure your credentials by running this command ```aws configure```
  - Then run this ```aws s3 cp --recursive --acl public-read ./build s3://$S3_BUCKET/``` to upload your files.
  - Then click on properties tab, then scroll down to static website host and you will find this link.
    ![This is a alt text.](https://github.com/mario3796/contacts-app-hosting/blob/master/images/screenshots/s3link.png)

  - Frontend Link: [http://udagram-frontend-2.s3-website-us-east-1.amazonaws.com/](http://udagram-frontend-2.s3-website-us-east-1.amazonaws.com/)


