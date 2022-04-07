# EarnApp Docker
### Docker Image for [EarnApp](https://earnapp.com/i/yr4dnbd)

Note: This is an unofficial build and comes with no warranty of any kind what so ever.
By using this image you also agree to BrightData's terms and conditions.

[Source Code](https://github.com/Arno05/EarnApp-Docker)

### Also works on ARM64 processors and Docker on Windows/WSL 

## Available Tags
1. `latest` - Built and updated daily
2. `lite` - A non-systemd image. (An already existing UUID is needed for this image.)

## How to:
### _Non Compose_
1. Make a directory for earnapp data
    - `mkdir $HOME/earnapp-data`
2. Run the container
    - `docker run -d --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v $HOME/earnapp-data:/etc/earnapp --name earnapp arno05/earnapp`
3. Get the UUID
    - `docker exec -it earnapp earnapp showid`
4. Copy and paste the app `UUID` in the [EarnApp Dashboard](https://earnapp.com/dashboard) 

### Compose
    1. Make a new directory, create a file named `docker-compose.yml` and paste the following into it.
```YML
version: "3.3"
services:
    app:
        image: arno05/earnapp
        privileged: true
        volumes:
            - /sys/fs/cgroup:/sys/fs/cgroup:ro
            - ./etc:/etc/earnapp
```

#### Lite Version
Use the `lite` version if you don't want to run the container priviledged or having any of the issues [here](https://github.com/fazalfarhan01/EarnApp-Docker/issues/2).

```YML
version: "3.3"
services:
    app:
        image: arno05/earnapp:lite
        volumes:
            - ./etc:/etc/earnapp
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
- 
## Like my work?
Consider donating.
- BTC: 1PdUFXmVUxy88NRPJ2RFuhyjUqMiJyZybR
- ETH: 0x715810d3619b6831b3d4ff0465ec3523aceb20c6
- PayPal: [@fazalfarhan01](https://www.paypal.me/fazalfarhan01)
