eb init $EB_APP --platform node.js --region us-east-1
eb create $EB_ENV
eb use $EB_ENV
eb deploy $EB_ENV