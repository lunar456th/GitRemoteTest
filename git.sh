#!/bin/bash

ID=yourid
PASSWORD=yourpassword
PROJECT_NAME=yourprojectname

curl -u "${ID}:${PASSWORD}" https://api.github.com/user/repos -d '{"name":"${PROJECT_NAME}"}';
mkdir ${PROJECT_NAME}
cd ${PROJECT_NAME}
git init
echo "${PROJECT_NAME}" > README.md
git add *
git commit -m "create README"
git remote add origin https://github.com/${ID}/${PROJECT_NAME}.git
git push -u origin master

# verify the result on web browser
python -mwebbrowser https://github.com/${ID}/${PROJECT_NAME}.git
