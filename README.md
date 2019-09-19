# Shinyproxy in Docker

This repository contains a dockerfile for [Shinyproxy](https://www.shinyproxy.io). It is used in my [personal-server](), see there for further deployment details. Pull the docker container using `seabbs/shinyproxy-in-docker`. Mount an `application.yml` to `/opt/shinyproxy/app_yml` in order to customise the instance. 

Currently Shinyproxy `1.1.0` is used as `2.0.0` contains breaking changes and appears to have some bugs.
