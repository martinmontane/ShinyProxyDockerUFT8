FROM openjdk:8-jre
RUN apt-get update \
        && apt-get install -y \
        locales

RUN locale-gen en_US.UTF-8 && update-locale
RUN locale-gen es_AR.UTF-8 && update-locale
RUN echo 'LANG="en_US.UTF-8"' > /etc/default/locale
ENV LANG es_AR.UTF-8  
ENV LANGUAGE es_AR:es:en_US:en  
ENV LC_ALL es_AR.UTF-8

RUN mkdir -p /opt/shinyproxy/
RUN wget https://www.shinyproxy.io/downloads/shinyproxy-2.0.2.jar -O /opt/shinyproxy/shinyproxy.jar

WORKDIR /opt/shinyproxy/
RUN mkdir app_yml

COPY ./start_shinyproxy.sh ./start_shinyproxy.sh

CMD ["bash", "start_shinyproxy.sh"]
