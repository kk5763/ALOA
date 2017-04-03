create table account(
  id number primary key,
  username varchar(500) not null ,
  email varchar(500) unique,
  password varchar(500) not null,
  tel varchar(500) default 0,
  joinDate date default sysdate,
  status varchar(500) default 'plain',
  reportCount number default 0,
  server number default 0,
  admin number default 0,
  emailauth number default 0);
  
create table restaurant(
  resNo number primary key,
  resName varchar(500) not null ,
  bossEmail varchar(500) not null,
  resAddress varchar(1000), 
  resTel varchar(500) ,
  resKind varchar(500) ,
  resPrice varchar(500),
  resParking varchar(500) ,
  resSaletime varchar(500) , 
  resRest varchar(500) , 
  resHoliday varchar(200) ,
  request varchar(1000) , 
  createDate date default sysdate,
);모든 보고서/Data Modeler Reports
  
  create sequence seq_restaurant nocache nocycle;
  
create table reviewBoard(
    reviewNo number primary key,
    email varchar(500),
    resNo number not null,
    content varchar(100),
    createDate date default sysdate,
    grade number not null,
);
 
create sequence seq_reviewNo nocache nocycle;

  
create table ReportRev(
  reEmail varchar(500) ,
  reportName varchar(100) ,
  reportContent varchar(1000) ,
  resNo number ,
  reviewNo number ,
  deEmail varchar(50) ,
  reStatus varchar(20) default 'unprocess',
  );
  
create table ReportRes(
  reEmail varchar(500) not null,
  reportName varchar(100) not null,
  reportContent varchar(1000) not null,
  resNo number not null,
  deEmail varchar(500) not null,
  reStatus varchar(200) default 'unprocess',
  
  );
  
  
  create table imageBoard(
                image varchar(200),
                resno number not null,
            );
              
create table bookMark(
                resNo number,
                member varchar(50),
            
);



create table reservation(
				id number primary key, 
				userid number ,
				resno number,
				reservestore varchar(50) ,
				reservename varchar(50) ,
				reservetel varchar(50) ,
				reserveemail varchar(100),
				reserverrequest varchar(1000),
	            		reserverno number ,
				reservedate varchar(50) ,
				reservetime varchar(50) , 
				reservenumber varchar(10) ,
				reserveaddress varchar(200),
				resercancle number,
        		member varchar(50)
			
);
 

drop table account purge;
drop table restaurant purge;
drop table reviewboard purge;
drop table ReportRev purge;
drop table ReportRes purge;
drop table imageboard purge;
drop table bookmark purge;
drop table reservation purge;

drop sequence seq_reviewno ;
drop sequence  seq_restaurant;


      commit;