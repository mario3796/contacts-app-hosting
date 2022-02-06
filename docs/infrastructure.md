# Infrastructure Description

- An entire full-stack application is deployed on AWS cloud.
- The application consists of 3 tiers UI, API & DB.
- Each tier of application uses a service in amazon web service.
- The client uses the application through the front-end(user interfaces) which deployed on S3 Bucket service.
- The front-end fetches the data from the API server which is deployed on Elastic Beanstalk service.
- The API server performs transactions on postgres database which deployed on RDS service.
