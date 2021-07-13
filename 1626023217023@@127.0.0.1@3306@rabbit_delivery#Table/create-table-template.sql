CREATE TABLE rabbitMenu(
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT '고유번호',
    food_name VARCHAR(20) NOT NULL COMMENT '이름',
    store_id INT COMMENT '식당 번호',
    description VARCHAR(255) COMMENT '메뉴설명',
    thumbnail VARCHAR(255) COMMENT '사진',

    FOREIGN KEY (store_id) REFERENCES rabbitStore(id)
);