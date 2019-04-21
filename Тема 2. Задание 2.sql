/*
Спроектируйте базу данных, которая позволяла бы организовать хранение медиа-файлов, загружаемых пользователем (фото, аудио, видео). 
Сами файлы будут храниться в файловой системе, а база данных будет хранить только пути к файлам, названия, описания, ключевых слов и принадлежности пользователю.
*/

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email varchar(255) comment 'Почта',
  fio VARCHAR(255) COMMENT 'Фио владельца',
  age int UNSIGNED comment 'Возраст',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  key index_email(email),
  UNIQUE unique_email(email)  
) COMMENT = 'Владельцы файлов';

DROP TABLE IF EXISTS files;
CREATE TABLE files (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  desription TEXT COMMENT 'Описание',
  type char comment 'Тип файла',
  marks varchar(100) comment 'Хештеги',
  adress varchar(255) COMMENT 'Путь к файлу',
  user_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id (user_id)
) COMMENT = 'Список файлов';