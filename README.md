# drupal7-local-base

A public learning repository to run Drupal 7 locally with Docker.

## Goal

This repository provides a local Docker-based environment for Drupal 7 using:

- Apache
- PHP 7.4
- MySQL 5.7
- Adminer

It is intended for local learning and legacy Drupal 7 maintenance practice.

## Stack

- Docker Desktop
- WSL 2
- Docker Compose
- Apache
- PHP 7.4
- MySQL 5.7
- Adminer
- Drupal 7.103

## Services

- App: `http://localhost:8080`
- Adminer: `http://localhost:8081`

## Database credentials

- Database: `drupal7`
- Username: `drupal`
- Password: `drupal`
- Host: `mysql`
- Port: `3306`

## Repository Structure

```text
drupal7-local-base/
├─ web/
│  └─ sites/
│     └─ all/
│        ├─ modules/
│        │  ├─ contrib/
│        │  └─ custom/
│        └─ themes/
│           └─ custom/
├─ docker/
│  ├─ apache-php/
│  │  ├─ Dockerfile
│  │  └─ servername.conf
│  └─ php/
│     └─ drupal.ini
├─ scripts/
│  ├─ bootstrap.sh
│  ├─ reset-db.sh
│  └─ fix-permissions.sh
├─ .dockerignore
├─ .env.example
├─ .gitignore
├─ compose.yaml
├─ Makefile
└─ README.md
```

## Local Setup

### 1. Create the local environment file

```bash
cp .env.example .env
```

### 2. Bootstrap the project

```bash
make bootstrap
```

### 3. Open Drupal installer

Visit:

```text
http://localhost:8080
```

### 4. Open Adminer

Visit:

```text
http://localhost:8081
```

## Useful Commands

### Build containers
```bash
make build
```

### Start the stack
```bash
make up
```

### Stop and remove containers
```bash
make down
```

### Restart services
```bash
make restart
```

### Reset database volume
```bash
make reset-db
```

### Fix Drupal runtime permissions
```bash
make fix-permissions
```

### Show service status
```bash
make ps
```

### Show logs
```bash
make logs
make logs-app
make logs-mysql
make logs-adminer
```

### Open shells
```bash
make shell-app
make shell-mysql
```

### List Drupal database tables
```bash
make db-tables
```

## Runtime Notes

- `web/sites/default/settings.php` is local runtime configuration and is ignored by Git
- `web/sites/default/files/` is runtime storage and is ignored by Git
- if you change local runtime permissions, use `make fix-permissions`
- if you want a clean Drupal reinstall, use `make reset-db`

## Contrib Module Example

This repository includes a first contrib module workflow example with `Administration menu`.

It is useful for local Drupal 7 learning because it provides a very visible admin navigation layer for site builders and developers.

## What I learned in this repository

- how to run Drupal 7 locally with Docker
- how to combine Apache, PHP 7.4, and MySQL 5.7
- how Drupal runtime files differ from code files
- how to manage local permissions for `settings.php` and `sites/default/files`
- how to reset a Drupal database cleanly
- how to add and enable a contrib module in Drupal 7
- how to use Adminer to inspect the database

## Disclaimer

Drupal 7 is a legacy platform.
This repository is intended for local learning and maintenance practice, not as a production-ready template.
