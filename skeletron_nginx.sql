ALTER DATABASE skeletron_nginx CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- root: tutti i permessi (già garantiti di default)
GRANT ALL PRIVILEGES ON skeletron_nginx.* TO 'root'@'%';

-- db_user: solo operazioni DML
REVOKE ALL PRIVILEGES ON skeletron_nginx.* FROM 'db_user'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON skeletron_nginx.* TO 'db_user'@'%';

FLUSH PRIVILEGES;
