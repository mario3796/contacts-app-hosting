eb init $EB_APP --platform "Node.js 14 running on 64bit Amazon Linux 2" --region us-east-1
eb create $EB_ENV
eb use $EB_ENV
eb deploy $EB_ENV