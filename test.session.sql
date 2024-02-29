
-- @block
use mydb2;

-- @block
DESCRIBE stu;

-- @block
SELECT * FROM stu;

-- @block
UPDATE stu set name = 'glenn', gender = 'v' WHERE id = 2;

-- @block
create DATABASE IF NOT EXISTS mydb3;

-- @block
use mydb3;

-- @block
CREATE TABLE user (
  u_id INT,
  u_name VARCHAR(255),
  u_pwd VARCHAR(255),
  u_email VARCHAR(255),
  u_phone VARCHAR(255)
);

-- @block
DESCRIBE user;

-- @block
INSERT INTO user VALUES
(1, 'tom', '123456', 'tom@99.com', '18811112222'),
(2, 'jack', '123444', 'jack@163.com','19811112223'),
(3, 'rose', '676767', 'rose@163.com','13511112224');

-- @block
SELECT * FROM user; 

-- @block
SELECT u_id FROM user where u_name = 'tom' AND u_pwd = '123456';
-- @block
SELECT * FROM user where u_name = 'rose';

-- @block
create DATABASE mydb4;

-- @block
USE mydb4;

-- @block
drop TABLE if EXISTS emp;

-- @block
create TABLE emp (
  e_id int,
  e_name varchar(20),
  e_gender varchar(1),
  e_data varchar(50)
);
-- @block
ALTER TABLE emp
Add column e_job varchar(50);

-- @block
DESCRIBE emp;

-- @block
INSERT INTO emp VALUES
(1,'lb','n','3018-3-16','xxxzx'),
(2,'zf','v','3018-3-16','wzx');

-- @block
SELECT * FROM emp;

-- @block
SELECT e_name, e_gender, e_job from emp;

-- @block
SELECT e_name name, e_gender gender, e_job job from emp;

-- @block
USE mydb4;

-- @block
CREATE TABLE user (
  id INT,
  name varchar(20),
  gender varchar(1)
);

-- @block
INSERT INTO user VALUES
(1, 'zs', 'n'),
(1, 'zs', 'n'),
(1, NULL, 'n');

-- @block
SELECT * from user;


-- @block
CREATE TABLE user2 (
  id INT PRIMARY KEY,
  name VARCHAR(20),
  gender VARCHAR(2)
);

-- @block
SELECT * FROM user2;

--@block
desc user2;

--@block
INSERT INTO user2 VALUES(NULL, 'zs', 'n');

--@block
INSERT INTO user2 values(1, 'zs', 'n');

--@block
INSERT INTO user2 VALUES(1, 'zs', 'n');

--@block
use mydb4;
--@block
CREATE TABLE user3 (
  id INT PRIMARY KEY auto_increment,
  name varchar(20),
  gender varchar(2)
);

--@block
desc user3;

--@block
INSERT INTO user3 VALUES
(NULL, 'zs', 'n'),
(NULL, 'ls', 'n'),
(NULL, 'ww', 'n');

--@block
SELECT * FROM user3;

--@block
delete from user3 where id = 2;

--@block
insert INTO user3 VALUES
(NULL, 'qq', 'n');

--@block
SELECT database() from dual;

--@block
Create TABLE user4 (
  id INT primary key auto_increment,
  name VARCHAR(20) not NULL,
  gender varchar(2),
  password varchar(30) NOT NULL
);

--@block
ALTER TABLE user4
modify column id int primary key auto_increment;
--@block
DESCRIBE user4;

--@block
DROP DATABASE IF EXISTS mybd2;

--@block
DROP DATABASE IF EXISTS mybd3;
DROP DATABASE IF EXISTS mybd4;