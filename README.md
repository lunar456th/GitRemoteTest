This document was created by Github API that can use on command line.

How to create github repository using command line
==================================================
* curl -u "ID:PASSWORD" https://api.github.com/user/repos -d '{"name":"PROJECT_NAME"}';
* git init
* touch README.md
* git add *
* git commit -m "."
* git remote add origin https://github.com/ID/PROJECT_NAME.git
* git push -u origin master

Put your ID, password and project name into "ID", "PASSWORD" and "PROJECT_NAME".

