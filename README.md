# set-up-own-code-server
My attempt to make my own Visual Stuido Code server.
The main goal here is to use vs code to run `python` with `pipenv` over browser.

## Requirements
**Note: If you don't want use default paths you can change them in the `docker-compose.yaml` file.**

`docker-compose` requires two paths to set up `vs code` server:  
1. `/home/<your_username>/projects` for persistent storage of the project files.  
2. `/home/<you_username>/.local/share/virtualenvs` for persistnet storage of virtual envs.  

## Start
To start run:  
`docker-compose up -d`
