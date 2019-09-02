# LOGIC-IMMO
# bi-request-ws
[ ![logo](https://github.com/li-olivierfostier/li-bi_docker_jboss_bi-request-ws/blob/master/logic-immo.png?raw=true)]
(http://www.logic-immo.com/)


# Information

This image is used to setup a Webservice to LIPRO and give some statistic for customers

[![CircleCI](https://circleci.com/gh/li-olivierfostier/li-bi_docker_jboss_bi-request-ws.svg?style=shield)](https://circleci.com/gh/li-olivierfostier/li-bi_docker_jboss_bi-request-ws)
(https://circleci.com/gh/li-olivierfostier/li-bi_docker_jboss_bi-request-ws)

The base docker image :

  * [ubuntu:14.04](https://registry.hub.docker.com/u/library/ubuntu/)

The GitHub project :

  * [li-olivierfostier/li-bi_docker_jboss_bi-request-ws](https://github.com/li-olivierfostier/li-bi_docker_jboss_bi-request-ws/)

The Docker Hub :

  * [li-olivierfostier/ubuntu/](https://registry.hub.docker.com/u/li-olivierfostier/li-bi_docker_jboss_bi-request-ws/)



# Installation
You can clone this project and build with docker command :

```
git clone https://github.com/li-olivierfostier/li-bi_docker_jboss_bi-request-ws.git \
&& cd docker-ubuntu \
&& docker build -t li-olivierfostier/bi-request-ws .
```

You can build directly from the [GitHub project](https://github.com/li-olivierfostier/li-bi_docker_jboss_bi-request-ws/) :

```
docker build -t li-olivierfostier/ubuntu github.com/pascalgrimaud/docker-ubuntu.git
```

Alternately, you can pull the image from [Docker Hub](https://registry.hub.docker.com/u/li-olivierfostier/bi-request-ws/) :

```
docker pull li-olivierfostier/ubuntu
```

# Usage

Quick start with binding to port 8080, 9990 and random password :

```
docker run -d -p 8080:8080 -p 9990:9990 ofostier/jboss-as-711
```

To get the password :

```
docker logs <container id>
```

Start and set a specific password for JBoss admin user :

```
docker run -d -p 8080:8080 -p 9990:9990 -e JBOSS_PASS="pass" \
ofostier/jboss-as-711
```

If you forget the admin password, delete the file .password and restart the container :

```
docker exec -it <container id> rm /.password
```

# Check WS
You can know access WS throught this URL
```
http://MYSERVERIP:8080/bi-request-ws/rest/statistique/visualisation/clientcmmFS/0001482145/21?univers=1
```

