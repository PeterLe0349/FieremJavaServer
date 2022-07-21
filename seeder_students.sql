use school_db;

create table if not exists students (
        id INT NOT NULL AUTO_INCREMENT primary key,
        first_name VARCHAR(100) NOT NULL,
        last_name VARCHAR(100) NOT NULL,
        nickname VARCHAR(100) unique
);

insert into students (first_name, last_name, nickname)
values ('Peter','Le','Fierem'),
       ('Bill','Gates','Micros');


