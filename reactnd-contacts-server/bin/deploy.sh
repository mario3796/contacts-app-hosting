eb init $EB_ENV --platform node.js --region us-east-1
eb use $EB_APP
eb deploy $EB_ENV
# eb create