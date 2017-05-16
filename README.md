# angular-cli-for-e2e
docker image for running e2e protractor test on bitbucket pipelines

I found it very hard to configure bitbucket pipelines to run protractor configuration of angular/cli

This is there i ended up:


## example bitbucket-pielines.yml

     image: versys650/angular-cli-for-e2e
     
     pipelines:
      default:
        - step:
        script: # Modify the commands below to build your repository.
          - npm install    
          - ng test --singleRun=true
          - export DISPLAY=:1
          - Xvfb $DISPLAY -ac -screen 0 1280x1024x8 &
          - ng e2e --env=prod
