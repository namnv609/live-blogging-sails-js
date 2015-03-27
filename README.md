#Installation instructions
* Install MongoDB
    * Import the public key used by the package management system
        * ```sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10```
    * Create a list file for MongoDB
        * ```echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list```
    * Reload local package database
        * ```sudo apt-get update```
    * Install the MongoDB packages
        * Latest stable version:
            * ```sudo apt-get install -y mongodb-org```
        * Install a specific release of MongoDB (using line bellow if needed):
            * ```sudo apt-get install -y mongodb-org=2.6.1 mongodb-org-server=2.6.1 mongodb-org-shell=2.6.1 mongodb-org-mongos=2.6.1 mongodb-org-tools=2.6.1```
    * Set MongoDB database path
        * ```sudo mongod --dbpath=/var/lib/mongodb```
* Clone this repository
    * ```git clone git@bitbucket.org:namnv609/live-blogging.git```
* Install Node modules
    * Change to project directory and enter command:
        * ```sudo npm install```
* Migration database
    * ```npm run migrations``` (if you use MongoDB port other 27017, please edit port in **package.json** file)
* Start application
    * ```npm start```
* Access website:
    * User:
        * [http://localhost:1337](http://localhost:1337)
    * Admin:
        * [http://localhost:1337/login](http://localhost:1337/login)
            * Username: **admin**
            * Password: **123456**