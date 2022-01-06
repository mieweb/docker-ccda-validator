# docker-ccda-validator

CCDA Validator in a docker container

## What You'll need

1. Docker

## Development Usage

git clone this repo (and submodules! VERY important!)
```
git clone --recurse-submodules https://github.com/mieweb/docker-ccda-validator.git
```

Build the docker
```
cd docker-ccda-validator
docker build -t docker-ccda-validator .
```

Run the docker
```
docker run -dp 8080:8080 docker-ccda-validator
```

Wait...
Try opening up any of the following URLS:

http://SERVER_IP:8080/referenceccdaservice/static/validationui.html
![validationui](https://i.imgur.com/DM3E6ny.png)

http://SERVER_IP:8080/referenceccdaservice/swagger-ui.html#/reference-ccda-validation-controller
![swagger-ui](https://i.imgur.com/1OdtDyg.png)