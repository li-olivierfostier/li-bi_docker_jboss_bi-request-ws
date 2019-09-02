# ubuntu
[ ![logo](https://github.com/li-olivierfostier/docker_ubuntu/blob/master/ubuntu.png?raw=true)]
(http://www.ubuntu.com/)


# Information

This image is used to set the locale to en_US.UTF-8.
It is used as the base image for other projects.

The Docker builds on [CircleCI](https://circleci.com) :

* You get "Successfully built"

* But, when you test `locale-gen en_US.UTF-8`, it failed [![Circle CI](https://circleci.com/gh/li-olivierfostier/docker_ubuntu.svg?style=shield)]
(https://circleci.com/gh/li-olivierfostier/docker_ubuntu)

* You can see this error in the log when you attempt to change the locale from an Ubuntu image :

```
Step 3 : RUN locale-gen en_US.UTF-8 && echo 'LANG="en_US.UTF-8"' > /etc/default/locale
 ---> Running in b24799cb6c0a
Generating locales...
cannot change mode of new locale archive: No such file or directory
  en_US.UTF-8... failed
Generation complete.
 ---> 7f9b8ce08b3c
 ```

The base docker image :

  * [ubuntu:14.04](https://registry.hub.docker.com/u/library/ubuntu/)

The GitHub project :

  * [li-olivierfostier/docker-ubuntu](https://github.com/li-olivierfostier/docker-ubuntu/)

The Docker Hub :

  * [li-olivierfostier/ubuntu/](https://registry.hub.docker.com/u/li-olivierfostier/ubuntu/)



# Installation
You can clone this project and build with docker command :

```
git clone https://github.com/li-olivierfostier/docker-ubuntu.git \
&& cd docker-ubuntu \
&& docker build -t li-olivierfostier/ubuntu .
```

You can build directly from the [GitHub project](https://github.com/li-olivierfostier/docker-ubuntu/) :

```
docker build -t li-olivierfostier/ubuntu github.com/pascalgrimaud/docker-ubuntu.git
```

Alternately, you can pull the image from [Docker Hub](https://registry.hub.docker.com/u/li-olivierfostier/ubuntu/) :

```
docker pull li-olivierfostier/ubuntu
```

