/* 2021-07-12 16:18:18 [14 ms] */ CREATE TABLE rabbitUser(     id VARCHAR(20) NOT NULL PRIMARY KEY COMMENT '아이디',     password VARCHAR(255) NOT NULL COMMENT '비밀번호',     nickname VARCHAR(20) COMMENT '닉네임',     point INT DEFAULT 0 COMMENT '포인트',     address VARCHAR(255) COMMENT '주소',     telephone VARCHAR(11) COMMENT '전화번호',     rank1 int COMMENT '등급' )
/* 2021-07-12 16:37:48 [11 ms] */ CREATE TABLE rabbitStore(       name VARCHAR(20) NOT NULL COMMENT '가게 이름',     location VARCHAR(50) NOT NULL COMMENT '위치',     telephone VARCHAR(30) COMMENT '전화번호',     rating DECIMAL(1, 1) COMMENT '별점',     open_time VARCHAR(5) COMMENT '여는 시간',     close_time VARCHAR(5) COMMENT '닫는 시간',     stars INT COMMENT '찜 수',     thumbnail VARCHAR(255) COMMENT '사진',      PRIMARY KEY (name, telephone) )
/* 2021-07-12 16:42:04 [17 ms] */ CREATE TABLE rabbitStore(     id INT AUTO_INCREMENT PRIMARY KEY COMMENT '고유번호',       name VARCHAR(20) NOT NULL COMMENT '가게 이름',     location VARCHAR(50) NOT NULL COMMENT '위치',     telephone VARCHAR(30) COMMENT '전화번호',     rating INT COMMENT '별점',     open_time VARCHAR(5) COMMENT '여는 시간',     close_time VARCHAR(5) COMMENT '닫는 시간',     stars INT COMMENT '찜 수',     thumbnail VARCHAR(255) COMMENT '사진'       )
/* 2021-07-12 16:45:29 [10 ms] */ CREATE TABLE rabbitStore(      id INT AUTO_INCREMENT PRIMARY KEY COMMENT '숫자 아이디',      name VARCHAR(20) NOT NULL COMMENT '가게 이름',     location VARCHAR(50) NOT NULL COMMENT '위치',     telephone VARCHAR(30) COMMENT '전화번호',     rating INT COMMENT '별점',     open_time VARCHAR(5) COMMENT '여는 시간',     close_time VARCHAR(5) COMMENT '닫는 시간',     stars INT COMMENT '찜 수',     thumbnail VARCHAR(255) COMMENT '사진'       )
/* 2021-07-12 17:10:33 [14 ms] */ CREATE TABLE rabbitMenu(     id INT AUTO_INCREMENT PRIMARY KEY COMMENT '고유번호',     food_name VARCHAR(20) NOT NULL COMMENT '이름',     store_id INT COMMENT '식당 번호',     description VARCHAR(255) COMMENT '메뉴설명',     thumbnail VARCHAR(255) COMMENT '사진',      FOREIGN KEY (store_id) REFERENCES rabbitStore(id) )
