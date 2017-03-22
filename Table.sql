create table account(
  username varchar(50) not null ,
  email varchar(50) primary key,
  password varchar(50) not null,
  tel number not null,
  joinDate date default sysdate,
  status varchar(50) default 'plain',
  reportCount number default 0);
  
create table restaurant(
  resNo number primary key,
  resName varchar(50) not null ,
  bossEmail varchar(50) not null,
  resAddress varchar(50) not null,
  resTel number not null,
  resKind varchar(50) not null,
  resPrice varchar(50) not null,
  resParking varchar(50) not null,
  resSaletime number not null,
  resRest number not null,
  resHoliday varchar(20) not null,
  createDate date default sysdate,
  CONSTRAINT reference_id foreign key(bossEmail) references account(email)
  );
  
  create sequence seq_restaurant nocache nocycle;
  
    create table reviewBoard(
                reviewNo number primary key,
                email varchar(50),
                resNo number not null,
                content varchar(100),
                createDate date default sysdate,
                grade number not null,
                constraint reference_resNo foreign key(resNo) references restaurant(resNo),
                constraint reference_id2 foreign key(email) references account(email)
                );
 
create sequence seq_reviewNo nocache nocycle;

  
create table ReportRev(
  reEmail varchar(50) not null,
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
  reEmail varchar(50) not null,
  reportName varchar(100) not null,
  reportContent varchar(1000) not null,
  resNo number not null,
  deEmail varchar(50) not null,
  reStatus varchar(20) default 'unprocess',
  
  constraint reference_reviewNo2 foreign key(resNo) references restaurant(resNo),
  CONSTRAINT reference_reId1 foreign key(reEmail) references account(email),
  CONSTRAINT reference_deId1 foreign key(deEmail) references account(email)
  );
  
  create table authorities(
  email varchar2(50) not null,
  authority varchar2(50) not null,
  constraint fk_authorities_users foreign key(email) references account(email));
  
  create table imageBoard(
                image varchar(50),
                reviewNo number not null,
                constraint reference_reviewNo1 foreign key(reviewNo) references reviewBoard(reviewNo));
              
create table bookMark(
                resNo number,
                member varchar(50),
                constraint reference_member foreign key(member) references account(email)
);
                