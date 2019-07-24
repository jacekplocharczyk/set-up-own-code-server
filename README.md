# set-up-own-code-server
My attempt to make my own Visual Stuido Code server.

## Create vs-code server with self-signed certificate
In the root of the repository build docker image:  
`docker build -t vscode-server:latest .`

Start server with following command:  
`docker run -it -p 127.0.0.1:8443:8443 -v "${PWD}:/home/coder/project" vscode-server`

Open browser and go to https://localhost:8443/.  
You have to skip warnings regarding self-signed certificate and enter password from the shell output.