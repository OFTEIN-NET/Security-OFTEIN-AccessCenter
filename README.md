## OF@TEIN Playground Access Center

This software is designed for checking and providing the connection to OF@TEIN Playground (Testbed).

### Motivation

Providing common/similar access to every operators and developers to OF@TEIN resources in every sites from different networks (including public internet) for experimentation and resource management.

### Overall Design

The detailed design of OF@TEIN access center is shown below.

![Access-Center-Design](https://github.com/OFTEIN-NET/Security-OFTEIN-AccessCenter/blob/master/Access-Center-Deployment.jpg)

### Installation

#### Required Software

* Ubuntu Linux OS (tested on Ubuntu 12.04.03)
* Apache web server for web portal interface
* Ookla Speedtest Mini [http://www.speedtest.net/mini] for bandwidth measurement, but it is need to be changed due to licensing issue.
* jnetscan [https://sourceforge.net/projects/jnetscan/] for port scan (as a java application)
* Access schemes software
    * Open SSH server [https://www.openssh.com] for tunneled desktop access through well-known ports
    * Community version of Ulteo Virtual Desktop [https://en.wikipedia.org/wiki/Ulteo_Open_Virtual_Desktop] for java-based shared virtual desktop web application, but also need to be changed due to no more open source licensing
    * Oracle Virtual Box [https://www.virtualbox.org] for remote desktop to secure pre-configured virtual machines

#### Installation

* Apache Web Server, Open SSH Server, and Oracle VirtualBox can be installed through 'apt-get' from Ubuntu Linux command line.
* Copy the 'www' folder into root directory of your Apache web server (for example '/var/www/').
* Restart Apache Web Server

### Configuration

* Create user in Ubuntu Linux for Open SSH access
* Create user in 'Ulteo Virtual Desktop' or other software
* Create lightweight VM in Oracle VirtualBox with VRDP enabled [https://www.virtualbox.org/manual/ch08.html#vboxmanage-modifyvm-vrde]

## Testing/Verification

Access your access center portal with your browser "http://<your_ip_address>/"

## Notes

If you change the software, you need to change necessary link in your index.html

Please check our deployment in http://103.22.221.53


