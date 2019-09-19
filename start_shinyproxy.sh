#!/bin/bash/

##Copy any custom application.yml files into shinyproxy
cp -a app_yml/. . 
## Launch Shinyproxy
java -jar /opt/shinyproxy/shinyproxy.jar
