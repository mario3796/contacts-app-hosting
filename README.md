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
  ![This is a alt text.](https://github.com/mario3796/contacts-app-hosting/blob/master/images/screenshots/RDS(1).png "This is a sample image.")
  - Choose the PostgreSQL 12.5-R1, then choose the free tier template
  ![This is a alt text.](https://github.com/mario3796/contacts-app-hosting/blob/master/images/screenshots/RDS(2).png "This is a sample image.")
  - In the settings fill the username and password, and in the connectivity set public access to Yes
  ![This is a alt text.](https://github.com/mario3796/contacts-app-hosting/blob/master/images/screenshots/RDS(3).png "This is a sample image.")
  - In the additional configuration fill the initial database name, then click on create database
  ![This is a alt text.](https://github.com/mario3796/contacts-app-hosting/blob/master/images/screenshots/RDS(4).png "This is a sample image.")
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
  ![This is a alt text.](https://github.com/mario3796/contacts-app-hosting/blob/master/images/screenshots/ebdeploy.png "This is a sample image.")
  - Then run ```eb use``` to use the environment.
  - Then run ```eb deploy``` to deploy the compressed project to the cloud
  - Finally, that will appear to you
  ![This is a alt text.](https://github.com/mario3796/contacts-app-hosting/blob/master/images/screenshots/ebhealth.png "This is a sample image.")

<!-- - Frontend Link: [http://udagram-frontend-2.s3-website-us-east-1.amazonaws.com/](http://udagram-frontend-2.s3-website-us-east-1.amazonaws.com/) -->
