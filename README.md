# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Setup
```bash
docker compose build

### Then
docker compose up
```

In case you have
ERRO: Error response from daemon: failed to create shim task: OCI runtime create failed: runc create failed: unable to start container process: exec: "config/setup_app.sh": permission denied: unknown

Do:
````bash
ls -la config/setup_app.sh
sudo chmod +x config/setup_app.sh

password: postgres
```
