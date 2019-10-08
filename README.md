# links2-docker

## Dockerized Links 2 text browser

This image contains the Links 2 text browser.

## Running the image from the Docker Hub

Just run this command:

    docker run --rm -it --name links2 tmp6154/links2-docker

This will start a container with links2 browser.

## Building and running the image from Dockerfile

Clone this repository, *cd* into it and run the following command:

    docker build -t links2 .

Then, you could run links2 with a following command:

    docker run --rm -it --name links2 links2

## License

![GPLv3](https://github.com/tmp6154/links2-docker/blob/master/img/gplv3.png?raw=true "GPLv3")
