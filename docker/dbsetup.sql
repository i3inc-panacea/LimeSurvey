CREATE DATABASE limesurvey_db;
CREATE USER 'limesurvey_user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON limesurvey_db.* TO 'limesurvey_user'@'localhost' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;