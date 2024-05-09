create table users (
	id serial primary key,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(100)
);

insert into users (first_name, last_name, email) values
('Peter', 'Parker', 'peter@mail.com'),
('Tony', 'Stark', 'ironman@mail.com'),
('Natasha', 'Romanov', 'natasha@mail.com');



create table posts (
	id serial primary key,
	creator_id int,
	title varchar(50),
	text_info text
);

insert into posts (creator_id, title, text_info) values
(1, 'Hola', 'Lorem ipsum dolor sit amet.'),
(2, 'Hi', 'Lorem ipsum dolor sit amet.'),
(3, 'Hello', 'Lorem ipsum dolor sit amet.'),
(1, 'Bye', 'Lorem'),
(3, 'Adios', 'Lorem ipsum');

create table likes (
	id serial primary key,
	user_id int,
	post_id int
);

insert into likes (user_id, post_id) values
(1, 3),
(2, 3),
(3, 1);

select * from posts inner join likes
on posts.id = likes.post_id inner join users
on likes.user_id = users.id;

