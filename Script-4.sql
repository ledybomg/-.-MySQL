DROP DATABASE IF EXISTS vk;

CREATE DATABASE IF NOT EXISTS vk;

USE vk;

SHOW TABLES;

CREATE TABLE users(
     id  BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     first_name VARCHAR(150) NOT NULL,
     last_name VARCHAR(150) NOT NULL,
     email VARCHAR(150) UNIQUE NOT NULL,
     phone CHAR(11) UNIQUE NOT NULL,
     password_hash CHAR(65) DEFAULT NULL,
     created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
     INDEX (last_name)
);

CREATE TABLE profiles(
   user_id BIGINT UNSIGNED NOT NULL PRIMARY KEY,
   gender ENUM('f', 'm', 'x') NOT NULL,
   birthday DATE NOT NULL,
   photo_id BIGINT UNSIGNED,
   city VARCHAR(150),
   country VARCHAR(150),
   FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE messages(
   id SERIAL PRIMARY KEY,
   from_user_id BIGINT UNSIGNED NOT NULL,
   to_user_id BIGINT UNSIGNED NOT NULL,
   txt TEXT,
   created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
   updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   is_delivered BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (from_user_id) REFERENCES users(id),
     FOREIGN KEY (to_user_id) REFERENCES users(id)
);

CREATE TABLE friend_requests(
     from_user_id BIGINT UNSIGNED NOT NULL,
     to_user_id BIGINT UNSIGNED NOT NULL,
     accepted BOOL DEFAULT FALSE,
     PRIMARY KEY( from_user_id, to_user_id),
     FOREIGN KEY (from_user_id) REFERENCES users(id),
     FOREIGN KEY (to_user_id) REFERENCES users(id)
);

CREATE TABLE communities(
     id SERIAL PRIMARY KEY,
     name VARCHAR(150) NOT NULL,
     description VARCHAR(300),
     admin_id BIGINT UNSIGNED NOT NULL,
     KEY (name),
     FOREIGN KEY (admin_id) REFERENCES users(id)
);

CREATE TABLE communities_users(
     community_id BIGINT UNSIGNED NOT NULL,
     user_id BIGINT UNSIGNED NOT NULL,
     PRIMARY KEY (community_id, user_id),
     FOREIGN KEY (community_id) REFERENCES communities(id),
     FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE media_types(
     id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(50) UNIQUE NOT NULL
);
 
CREATE TABLE media(
     id SERIAL PRIMARY KEY,
     user_id BIGINT UNSIGNED NOT NULL,
     media_types_id INT UNSIGNED NOT NULL,
     file_name VARCHAR(300),
     file_size BIGINT UNSIGNED,
     created_at DATETIME DEFAULT NOW(),
     FOREIGN KEY (user_id) REFERENCES users(id),
      FOREIGN KEY (media_types_id) REFERENCES media_types(id)
);

CREATE TABLE ads(
   id SERIAL PRIMARY KEY,
   from_user_id BIGINT UNSIGNED NOT NULL,
   to_user_id BIGINT UNSIGNED NOT NULL,
   txt TEXT,
   created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
   updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   is_delivered BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (from_user_id) REFERENCES users(id),
     FOREIGN KEY (to_user_id) REFERENCES users(id)
     );
    
    CREATE TABLE photo(
     id SERIAL PRIMARY KEY,
     user_id BIGINT UNSIGNED NOT NULL,
     media_types_id INT UNSIGNED NOT NULL,
     file_name VARCHAR(300),
     file_size BIGINT UNSIGNED,
     created_at DATETIME DEFAULT NOW(),
     FOREIGN KEY (user_id) REFERENCES users(id),
      FOREIGN KEY (media_types_id) REFERENCES media_types(id)
);

CREATE TABLE ads_types(
     id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(50) UNIQUE NOT NULL
);
