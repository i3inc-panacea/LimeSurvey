CREATE DATABASE limesurvey_db;
GRANT ALL PRIVILEGES ON limesurvey_db.* TO 'limesurvey_user'@'localhost' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;