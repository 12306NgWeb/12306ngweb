drop table ngweb_task;
drop table ngweb_user;

create table ngweb_task (
	id number(19,0),
	title varchar2(128) not null,
	description varchar2(255),
	user_id bigint not null,
    primary key (id)
);

create table ngweb_user (
	id number(19,0),
	login_name varchar2(64) not null unique,
	name varchar2(64) not null,
	password varchar2(255) not null,
	salt varchar2(64) not null,
	roles varchar2(255) not null,
	regiser_date date not null,
	primary key (id)
);


create sequence ngweb_seq_task start with 100 increment by 20;
create sequence ngweb_seq_user start with 100 increment by 20;