create table account(
  username varchar(500) not null ,
  email varchar(500) primary key,
  password varchar(500) not null,
  tel varchar(500) not null,
  joinDate date default sysdate,
  status varchar(500) default 'plain',
  reportCount number default 0,
  server number not null,
  admin number not null,
  emailauth number not null
  );
  
create table restaurant(
  resNo number primary key,
  resName varchar(500) not null ,
  bossEmail varchar(500) not null,
  resAddress varchar(1000) not null, 
  resTel number not null,
  resKind varchar(500) not null,
  resPrice varchar(500) not null,
  resParking varchar(500) not null,
  resSaletime varchar(500) not null, 
  resRest varchar(500) not null, 
  resHoliday varchar(200) not null,
  request varchar(1000) , 
  createDate date default sysdate,
  CONSTRAINT reference_id foreign key(bossEmail) references account(email)
);
  
  create sequence seq_restaurant nocache nocycle;
  
    create table reviewBoard(  
                reviewNo number primary key,
                email varchar(500),
                resNo number not null,
                content varchar(100),
                createDate date default sysdate,
                grade number not null,
                image varchar(500) not null,
                constraint reference_resNo foreign key(resNo) references restaurant(resNo),
                constraint reference_id2 foreign key(email) references account(email)
                );
 
create sequence seq_reviewNo nocache nocycle;

  
create table ReportRev(
  reEmail varchar(500) not null,
  reportName varchar(100) not null,
  reportContent varchar(1000) not null,
  resNo number not null,
  reviewNo number not null,
  deEmail varchar(50) not null,
  reStatus varchar(20) default 'unprocess',
  constraint reference_reviewNo foreign key(reviewNo) references reviewboard(reviewNo),
  CONSTRAINT reference_reId foreign key(reEmail) references account(email),
  CONSTRAINT reference_deId foreign key(deEmail) references account(email)
  );
  
create table ReportRes(
  reEmail varchar(500) not null,
  reportName varchar(100) not null,
  reportContent varchar(1000) not null,
  resNo number not null,
  deEmail varchar(500) not null,
  reStatus varchar(200) default 'unprocess',
  
  constraint reference_reviewNo2 foreign key(resNo) references restaurant(resNo),
  CONSTRAINT reference_reId1 foreign key(reEmail) references account(email),
  CONSTRAINT reference_deId1 foreign key(deEmail) references account(email)
  );
  
  
create table bookMark(
                resNo number,
                member varchar(50),
                constraint reference_member foreign key(member) references account(email)
);



create table reservation(
				reservestore varchar(50) not null,
				reservename varchar(50) not null,
				reservetel varchar(50) not null,
				reserveemail varchar(100) not null,
				reserverequest varchar(1000) not null,
				reserverno number not null,

				reservedate varchar(50) not null,
				reservetime varchar(10) not null, 
				reservenumber varchar(10) not null,
				reserveaddress varchar(200) not null

);
