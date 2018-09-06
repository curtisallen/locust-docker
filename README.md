# Locust Docker
Builds a [locust.io](https://locust.io)docker image.

## Building

    VERSION=0.9.0 make build

## Environment Variables

|Variable|Description|Default|
|-|-|-|
|`LOCUST_SCRIPT`|Locust script to run|`/locust-tasks/tasks.py`|
|`TARGET_HOST`|sent to locust `--host` cli arg||
|`LOCUST_MODE`| can be `standalone`, `worker`, or `master`|`standalone`|
|`LOCUST_MASTER`|Locust master instance||
|`LOCUST_MASTER_WEB`|Locust master web||
