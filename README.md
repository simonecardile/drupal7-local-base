# drupal7-local-base

A public learning repository to run Drupal 7 locally with Docker.

## Goal

This repository provides a local Docker-based environment for Drupal 7 using:

- Apache
- PHP 7.4
- MySQL 5.7
- Adminer

## Current scope

At this stage, the project includes:

- Drupal 7 core mounted locally in `web/`
- Apache + PHP 7.4 container
- MySQL 5.7 with persistent named volume
- Adminer for database inspection
- local installer-based Drupal setup

## Services

- App: `http://localhost:8080`
- Adminer: `http://localhost:8081`

## Database credentials

- Database: `drupal7`
- Username: `drupal`
- Password: `drupal`
- Host: `mysql`
- Port: `3306`

## Notes

- `web/sites/default/settings.php` is local runtime configuration and is ignored by Git
- `web/sites/default/files/` is runtime storage and is ignored by Git
- this repository is intended for local learning and legacy Drupal 7 maintenance practice
