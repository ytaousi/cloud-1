CREATE DATABASE phpmyadmin;
CREATE DATABASE wordpress;

CREATE USER 'pma-user' IDENTIFIED by 'pma-pass';
CREATE USER 'wp-user' IDENTIFIED by 'wp-password';
GRANT ALL PRIVILEGES ON phpmyadmin.* TO 'pma-user'@'%' IDENTIFIED BY 'pma-pass';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wp-user'@'%' IDENTIFIED BY 'wp-password';

FLUSH PRIVILEGES;