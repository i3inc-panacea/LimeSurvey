FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /app
RUN apt-get update -y
RUN apt-get install apache2 mariadb-server -y
RUN apt-get update -y
RUN apt-get install php7.2 php7.2-cli php7.2-common php7.2-mbstring php7.2-xml php7.2-mysql php7.2-gd php7.2-zip php7.2-ldap php7.2-imap unzip wget curl -y
RUN wget https://download.limesurvey.org/lts-releases/limesurvey3.24.2+201020.zip
RUN unzip limesurvey3.24.2+201020.zip
RUN cp -r limesurvey /var/www
RUN chown www-data:www-data -R /var/www/limesurvey
COPY ./dbsetup.sql .
COPY ./limesurvey.conf /etc/apache2/sites-available/limesurvey.conf
RUN service mysql start &&  mysql < dbsetup.sql
RUN a2ensite limesurvey
RUN a2enmod rewrite
EXPOSE 80
COPY ./entry.sh .
CMD ["./entry.sh"] 