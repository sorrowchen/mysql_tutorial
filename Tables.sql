create table test ( 
Snum int, 
Sname varchar(10)
)
engine myisam charset utf8 ;#创建一个表, myisam引擎, utf8编码

show tables; #显示表

rename table test to newtest;

show tables;

insert into test values
(1,'zhangsan'),
(2,'lisi'),
(3,'wangwu');#在表中插入数据

select * from test;#选择表中所有内容

truncate test ;
#truncate相当于删表之后重建, delete是从行的粒度来操作表.
drop table newtest;

create table class (
id int primary key auto_increment,
sname varchar(10) not null default '',
gender char(1) not null default '',
company varchar(20) not null default '',
salary decimal(8,2) not null default 0.00,
fanbu smallint not null default 0
)engine myisam charset utf8; #建了个class表

desc class; #显示表结构

insert into class 
(id, sname, gender, company, salary, fanbu)
values
(1,'张三', '男', '思科', 8000.00, 300);#字段和值相应

insert into class 
(sname, gender, company, salary)
values
('李四', '男', '百度', 6000.00);#插入部分字段数据

insert into class 
values
(3,'忘舞', '女', '腾讯', 4321.88, 150);#不写字段就表示插入数据包含所有字段

insert into class 
(sname, gender, company, salary, fanbu)
values
('刘备', '男', '蜀国', 150.00, 220),
('曹操', '男', '魏国', 300.00, 100),
('孙权', '男', '吴国', 250.00, 90);#添加多行数据

update class 
set fanbu = fanbu+20000 where sname='忘舞';#给忘舞发20000饭补, 包养?

update class 
set fanbu = 159 where gender='男' and salary>5600.00;#多个条件

delete from class where salary > 8800.00;#炒掉薪资比8800高的员工

select sname, company, salary from class 
where id > 4; #查询id>4的字段

select * from class; #查询所有行所有字段
