# Pipeline Process

- Before starting to develop the project the client initializes local repository in root folder.
- The client makes a remote repository in GitHub for the project.
- While developing the client stages his/her changes, then commits these changes.
- Then he/she pushes those commits into the remote repository which the circleCI config.yml file is included.
- The commit trigger the CircleCI pipeline, and the pipeline perform the workflows which is configured in config.yml file.
- Finally the workflows are finished at the deploying the application to the AWS cloud.
