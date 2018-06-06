# Onboarding

1. Download [Docker CE](https://store.docker.com/editions/community/docker-ce-desktop-mac)

2. Pull the project from github `git pull url`

3. Change into the project directory `cd docker-nginx-node-postgres`
4. Change into the app directory `cd app` and run `npm install` inside
5. Change into the api directory `cd ../api` and run `npm install` inside
6. Run `npm run dev:install`
	- This runs the 00-install-dev.sh script, It will build the docker images from dev.docker-compose.yml, start the database to allow it to register a user the stop the database. You should only have to do this one time.
	- if the above command finishes successfully you can run `npm run dev:up`, this runs a `docker-compose -f dev.docker-compose.yml up`. All this command does is run the images we created with the install script .`-f` specifies the file to run.

7. Run `npm run dev:up`
	- check the url `locahost` and `localhost/api`

# HTTPS

You shouldn't have to do anything other then added the PEM file to keychain.

1. Open Keychain
2. Click `Certificates` under Category
3. Click `File` -> `Import File` -> Navigate to the `config/nginx/ssl` and click on the rootCA.pem file
4. Right Click on the `RSVP` certificate 
5. Click `Get Info` 
6. Click the Arrow to the left of `trust`
7. Change `When using this certificate` to `Always Trust`



