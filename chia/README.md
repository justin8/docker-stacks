Note this bug that applies within Docker: https://github.com/Chia-Network/chia-blockchain/issues/1535

If IPv6 isn't enabled, you'll get a failure to bind to port 55400 error on startup. In the `config.yaml` file generated on first run, change `self_hostname: &self_hostname "localhost"` -> `self_hostname: &self_hostname "0.0.0.0"`

## Management
In order to manage and run chia commands inside of the container, run `docker-compose exec chia bash`, then inside of the container run `. /chia-blockchain/activate` and now `chia` commands will work successfully.
