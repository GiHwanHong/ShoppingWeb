/* 상품테이블 */
create table shop_product(
	no 	int(5)	NOT NULL auto_increment,
	name varchar(20)		NULL	,
	price varchar(10)	NULL	,
	detail	text			NULL,
	date		varchar(20)	NULL,
	stock	varchar(10)	NULL,
	image	varchar(20)	NULL,
	PRIMARY KEY(no)	);
	
/* 상품 주문 테이블 */	
create table shop_order(
	no 	int(5)	NOT NULL auto_increment,
	product_no varchar(5)	NOT NULL	,
	quantity varchar(10)	NULL	,
	date		varchar(10)	NULL,
	state	varchar(10)	NULL,
	id		varchar(20)	NULL,
	PRIMARY KEY(no)	);
/* 관리자 테이블 */	
create table admin(
	admin_id		varchar(20)		NOT NULL,
	admin_passwd		varchar(20)	NULL,
	PRIMARY KEY(admin_id)
);
Drop table shop_product;
	