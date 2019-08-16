# set-up-own-code-server
My attempt to make my own Visual Stuido Code server.
The main goal here is to use vs code to run `python` with `pipenv` over browser.

## Requirements
**Note: If you don't want use default paths you can change them in the `docker-compose.yaml` file.**

`docker-compose` requires `/home/<your_username>/projects` directory  for persistent storage of the project files.

## Start
To start run:  
`docker-compose up -d`
