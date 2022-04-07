# EarnApp Docker
### Docker Image for [EarnApp](https://earnapp.com/i/yr4dnbd)

## Clone
```BASH
git clone https://github.com/arno05/earnapp_docker.git
```

## Available Tags
1. `latest` - Built and updated daily
2. `lite` - Use when you have problems with regular version.
**Note**: `lite` version cannot generate it's own UUID and the same has to be provided as an environment variable.

## How to:
### _Non Compose_
1. Make a directory for earnapp data
    - `mkdir $HOME/earnapp-data`
2. Run the container
    - `docker run -d --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v $HOME/earnapp-data:/etc/earnapp --name earnapp arno05/earnapp`
    
    or if you are using the `lite` version
    - `docker run -d -e EARNAPP_UUID='sdk-node-XXXXXXXXXXXXXXXXXXX'  --name earnapp arno05/earnapp:lite`
3. Get the UUID
    - `docker exec -it earnapp showid`
4. Copy and paste the app `UUID` in the [EarnApp Dashboard](https://earnapp.com/dashboard) 

### Compose
1. Make a new directory, create a file named `docker-compose.yml` and paste the following into it.
```YML
version: '3.3'
services:
    app:
        image: arno05/earnapp
        privileged: true
        volumes:
            - /sys/fs/cgroup:/sys/fs/cgroup:ro
            - ./etc:/etc/earnapp
```

Use the `lite` version if you don't want to run the container priviledged or having any of the issues [here](https://github.com/fazalfarhan01/EarnApp-Docker/issues/2).

```YML
version: '3.3'
services:
    app:
        image: arno05/earnapp:lite
        environment:
            EARNAPP_UUID: YOUR_NODE_ID_HERE
```

2. Run `docker-compose up -d`

3. You can access the earnapp cli using the command
    ```BASH
    docker-compose exec app earnapp <YOUR COMMAND GOES HERE>
    ```

## Like my work?
Consider donating.
- BTC: 18qKaNx7MAbKTNPDGJwNE2sjAZMC9YQDQp
- ETH: 0xf31a4dfe1e6fa8bedc3b1ba49acc64ea1e8b04cf
- XMR: 87yRQ1ZXwtTgLQUY4k39f1BTtDwShFrusCqSVs7PmQyEA3NM8nUYYTiLXeG2S49xWeUdYq3Fq2g4hXFdSB8kaRapPcmQupm
 
## Like original work from fazalfarhan01 ?
Consider donating.
- BTC: 1PdUFXmVUxy88NRPJ2RFuhyjUqMiJyZybR
- ETH: 0x715810d3619b6831b3d4ff0465ec3523aceb20c6
- PayPal: [@fazalfarhan01](https://www.paypal.me/fazalfarhan01)
