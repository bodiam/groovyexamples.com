alter table example drop foreign key FKB125116A581C403A;
drop table if exists example;
drop table if exists user;
create table example (id bigint not null auto_increment, version bigint not null, author_id bigint not null, code varchar(4000) not null, date_created datetime not null, description varchar(4000) not null, language varchar(255) not null, text varchar(4000) not null, title varchar(255) not null, type varchar(6) not null, primary key (id));
create table user (id bigint not null auto_increment, version bigint not null, date_created datetime not null, display_name varchar(255) not null, email_address varchar(255) not null, password varchar(255) not null, user_name varchar(255) not null unique, primary key (id));
alter table example add index FKB125116A581C403A (author_id), add constraint FKB125116A581C403A foreign key (author_id) references user (id);
