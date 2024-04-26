# Python Client Generation Demo

## OpenAPI Generator

```shell
make generate # generate the whole api client

make generate_models_only # generate models only
```



## openapi-python-client
```shell
python3 -m venv .venv
source .venv/bin/activate

pip install openapi-python-client

openapi-python-client generate --url https://api.dev.getmoments.com/v2.0/schema/getmoments_api.yaml
```