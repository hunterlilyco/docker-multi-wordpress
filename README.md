## Docker Multi-Environment Wordpress [automation]

This repo is based off of the existing [docker-wordpress](https://github.com/evertramos/docker-wordpress) repository, adapted to support a common development workflow.

Features:

- Automatically create prod / staging / dev wordpress instances based on user configuration.
- Automatically handle Lets Encrypt SSL generation and nginx reverse proxy when utilized with [docker-compose-letsencrypt-nginx-proxy-companion](https://github.com/evertramos/docker-compose-letsencrypt-nginx-proxy-companion)


### Usage

After everything is settle, and you have your three containers running (_proxy, generator and letsencrypt_) you do the following:

1. Clone this repository:

```bash
git clone https://github.com/hunterlilyco/docker-multi-wordpress.git
```

2. Update the service name in your _docker-compose.yml_ file **VERY IMPORTANT**

You must use any name, but make sure it is a unique service name in your environment, otherwise it will conflict with other services. 

3. Configure your _.env_ file:

Copy .env.sample to .env and update with your data

> The proxy network must match the network name you have set in the proxy settings. 

4. Start your project

```bash
docker-compose up -d
```

**Be patient** - when you first run this repo, the database might take sometime to launch and the process of getting a new certificate for your domain might take some time.

----

#### Make sure the wordpress data files has user and group set to **www-data**, so you could update, install, delete files from your admin panel.

----

