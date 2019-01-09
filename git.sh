#!/bin/bash

ID=your_id
PASSWORD=your_password
PROJECT_NAME=your_project_name

curl -u "${ID}:${PASSWORD}" https://api.github.com/user/repos -d '{"name":"${PROJECT_NAME}"}';
git init
touch README.md
git add *
git commit -m "."
git remote add origin https://github.com/${ID}/${PROJECT_NAME}.git
git push -u origin master

# verify the result on web browser
python -mwebbrowser https://github.com/${ID}/${PROJECT_NAME}.git
