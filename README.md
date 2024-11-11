# Docker compose makefile
[![Build Status](https://travis-ci.org/xtaje/docker-compose-makefile.svg?branch=master)](https://travis-ci.org/xtaje/docker-compose-makefile)
[![Release](https://img.shields.io/github/release/xtaje/docker-compose-makefile.svg)](https://github.com/xtaje/docker-compose-makefile/releases/latest)
[![Commits since last release](https://img.shields.io/github/commits-since/xtaje/docker-compose-makefile/latest.svg)](https://github.com/xtaje/docker-compose-makefile/commits/master)
[![Github All Releases](https://img.shields.io/github/downloads/xtaje/docker-compose-makefile/total.svg)](https://github.com/xtaje/docker-compose-makefile)
[![GitHub issues](https://img.shields.io/github/issues/xtaje/docker-compose-makefile.svg)](https://github.com/xtaje/docker-compose-makefile/issues)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/xtaje/docker-compose-makefile.svg)](https://github.com/xtaje/docker-compose-makefile/pulls)
[![license](https://img.shields.io/github/license/xtaje/docker-compose-makefile.svg)](https://github.com/xtaje/docker-compose-makefile/blob/master/LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/xtaje/docker-compose-makefile.svg?style=social&label=Stars)](https://github.com/xtaje/docker-compose-makefile/stargazers)

Template and lib for docker-compose

## INSTALLATION
### INSTALLATION
To install mk-lib run command
```bash
   curl -sL https://raw.githubusercontent.com/xtaje/docker-compose-makefile/master/scripts/install.sh | sh
```

### UPGRADE
To upgrade existing mk-lib run command
```bash
make mk-upgrade
```

## USAGE
![Screen](https://raw.githubusercontent.com/xtaje/docker-compose-makefile/master/docs/screencast.gif)

**Common** (see [samples](https://github.com/xtaje/docker-compose-makefile/tree/master/samples))
- `make console` - open container's console

**From Makefile.minimal.mk** (see [samples](https://github.com/xtaje/docker-compose-makefile/tree/master/samples))
- `make start` - start all containers
- `make start` c=hello - start container hello
- `make stop` - stop all containers
- `make status` - show list of containers with statuses
- `make logs` - show logs
- `make clean` - clean all data

**From this library**
- `make help` - show help (see above)
- `make mk-upgrade` - check for updates of mk-lib
- `make mk-version` - show current version of mk-lib

### VARIABLES
* **ROOT_DIR** - full path to dir with *Makefile*
* **MK_DIR** - fill path to *.mk-lib* dir
* **DOCKER_COMPOSE** - docker-compose executable command
* **DOCKER_COMPOSE_FILE** - docker-compose.yml file 

## SAMPLES

Basic commands (you can copy and paste it into your Makefile)

```makefile
up: ## Start all or c=<name> containers in foreground
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up $(c)

start: ## Start all or c=<name> containers in background
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d $(c)

stop: ## Stop all or c=<name> containers
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop $(c)

status: ## Show status of containers
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) ps

restart: ## Restart all or c=<name> containers
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop $(c)
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up $(c) -d

logs: ## Show logs for all or c=<name> containers
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) logs --tail=100 -f $(c)

clean: confirm ## Clean all data
	@$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down
```
You may see samples [here](https://github.com/xtaje/docker-compose-makefile/tree/master/samples)

## CUSTOMIZATION
You can create _.make.env_ file in directory with Makefile or **current** directory

Available variables

* **DOCKER_COMPOSE** = {docker-compose executable command}
* **DOCKER_COMPOSE_FILE** = {custom docker-compose.yml file}

## TO-DO
- check dependencies
- update readme

## CHANGELOG
See [CHANGELOG](CHANGELOG.md)

## LICENSE
MIT (see [LICENSE](LICENSE))

## AUTHOR
[Roman Kudlay](http://roman.kudlay.pro) ([roman@kudlay.pro](mailto:roman@kudlay.pro))
