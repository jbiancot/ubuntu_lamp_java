# A Docker image with Ubuntu, Apache, PHP and Java

**Updated: 8-March-2018**

A more complete and standard Docker image containing:

* Ubuntu 16.04.4 LTS (xenial)
* Apache/2.4.18
* PHP 7.0.25
* Java JDK 1.8.0_161 - Java Development Kit
* Gradle 4.4.1
* MySQL client 5.7.21

This is an improvement over the Docker image: https://github.com/jbiancot/ubuntu_lamp

# Usage

If you are not running Apache Web Server on the host you can use port 80 **otherwise you would need to change the port.**

`docker run -p 80:80 -ti jbiancot/ubuntu_lamp_java /bin/bash`

Enjoy it !
