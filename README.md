[![Security Rating](https://sonarqube.lab.kytoonlabs.com/api/project_badges/measure?project=kytoonlabs_openwebsockets_AYFLWxlcG9VkHk7uz0ao&metric=security_rating&token=302f64d25af2f640a60b4b346c72555e0b33a6b7)](https://sonarqube.lab.kytoonlabs.com/dashboard?id=kytoonlabs_openwebsockets_AYFLWxlcG9VkHk7uz0ao) [![Vulnerabilities](https://sonarqube.lab.kytoonlabs.com/api/project_badges/measure?project=kytoonlabs_openwebsockets_AYFLWxlcG9VkHk7uz0ao&metric=vulnerabilities&token=302f64d25af2f640a60b4b346c72555e0b33a6b7)](https://sonarqube.lab.kytoonlabs.com/dashboard?id=kytoonlabs_openwebsockets_AYFLWxlcG9VkHk7uz0ao)

# OpenWebSockets

OWS is a implementation of [laravel-websockets](https://beyondco.de/docs/laravel-websockets/getting-started/introduction), created to be used in a standalone fashion under docker, docker-compose or kubernetes scenarios.

Latest version of OWS is built under:
- Alpine 3.16
- PHP 8.1
- Laravel 9
- MariaDB 10
- laravel-websockets 1.13.1

Please see section [configuration](#configuration) to change publising ports, ssl certs and enabling stats.

## Running with Docker Run

To deploy a OWS service using docker please follow:

1. Install [Docker](http://docs.docker.com/installation/)

2. Run `docker run --name ows -e OWS_APP_ID=yourappid -e OWS_APP_KEY=yourappkey -e OWS_APP_SECRET=yourappsecret -d -p 6001:6001 kytoonlabs/openwebsockets`
3. Configure your application to consume the OWS service at `http://{docker_host}:6001`

## Running with Docker Compose

To deploy OWS using _docker-compose_ you should:
1. Install [Docker](http://docs.docker.com/installation/) and docker-compose
2. Create a **docker-compose.yml** file
    ```
    version: 3
    volumes:
        ows-data:
    services:
        ows:
            image: kytoonlabs/openwebsockets
            ports:
                - '6001:6001'
            environment:
                OWS_APP_ID: yourappid
                OWS_APP_KEY: yourappkey
                OWS_APP_SECRET: yourappsecret
            volumes:
                - ows-data:/var/lib/mysql
            restart: always
    ```
3. Launch docker-compose with `docker-compose up -d`

## Configuration
OWS implements laravel-websockets project and some capabilities can be configured following the table below. Feature requests that apply to this implementation can be requested at the repository's [issues](https://github.com/kytoonlabs/openwebsockets/issues) section.

|Env Variable|Description|Default|
|-|-|-:|
|**OWS_APP_ID**|Application ID|1000|
|**OWS_APP_KEY**|Application Key code|123456|
|**OWS_APP_SECRET**|Application Secret code|ThisIsMySecret|
|**OWS_APP_NAME**|Application Name|ows|
|**OWS_PORT**|Listening Port|6001|
|**OWS_APP_CAPACITY**|Limit number of comnnections||
|**OWS_CLIENT_MESSAGES**|Allow messages between clients|false|
|**OWS_ENABLE_STATS**|Enable statistics collection|true|
|**OWS_APP_PATH**|Path for the statistics dashboard||
|**OWS_SSL_LOCAL_CERT**|SSL/TLS Certificate||
|**OWS_SSL_LOCAL_PK**|SSL/TLS Key||
|**OWS_SSL_PASSPHRASE**|SSL/TLS Passphrase||

For more information about the laravel-websockets project please visit the [official](https://beyondco.de/docs/laravel-websockets/getting-started/introduction) documentation.

## Contributing

If you'd like to report a bug, give us feedback, or contribute to OpenWebSockets implementation, please read our contributor guidelines.

## License

OpenWebSockets is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
