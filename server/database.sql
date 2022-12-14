CREATE TABLE tb_userPhoto (
    photo_id SERIAL PRIMARY KEY UNIQUE,
    photo_file BYTEA
);
CREATE TABLE tb_user (
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR NOT NULL,
    profile_name VARCHAR NOT NULL,
    password VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    sign_up_date DATE DEFAULT CURRENT_DATE,
    photo_id INTEGER DEFAULT NULL,
    num_seguindo INTEGER DEFAULT 0,
    num_seguidores INTEGER DEFAULT 0,
    UNIQUE (user_id, profile_name, email)
);
ALTER TABLE tb_user
ADD CONSTRAINT FK_User_3 FOREIGN KEY (photo_id) REFERENCES tb_userPhoto (photo_id);
CREATE TABLE tb_follower(
    following_user_id INTEGER NOT NULL,
    followed_user_id INTEGER NOT NULL
);
ALTER TABLE tb_follower
ADD CONSTRAINT FK_Follower_1 FOREIGN KEY (following_user_id) REFERENCES tb_user (user_id);
ALTER TABLE tb_follower
ADD CONSTRAINT FK_Follower_3 FOREIGN KEY (followed_user_id) REFERENCES tb_user (user_id);
CREATE TABLE tb_post (
    post_id SERIAL PRIMARY KEY,
    created_by_user_id INTEGER NOT NULL,
    ceated_datetime DATE DEFAULT CURRENT_DATE,
    caption VARCHAR NOT NULL,
    UNIQUE (post_id)
);
ALTER TABLE tb_post
ADD CONSTRAINT FK_Post_3 FOREIGN KEY (created_by_user_id) REFERENCES tb_user (user_id);
CREATE TABLE tb_like (
    post_id INTEGER NOT NULL,
    User_id INTEGER NOT NULL
);
ALTER TABLE tb_like
ADD CONSTRAINT FK_Like_1 FOREIGN KEY (post_id) REFERENCES tb_post (post_id);
ALTER TABLE tb_like
ADD CONSTRAINT FK_Like_2 FOREIGN KEY (User_id) REFERENCES tb_user (user_id);
CREATE TABLE tb_postMedia (
    post_media_id SERIAL PRIMARY KEY,
    post_id INTEGER NOT NULL,
    media_file BYTEA NOT NULL,
    UNIQUE (post_media_id)
);
ALTER TABLE tb_postMedia
ADD CONSTRAINT FK_Post_media_3 FOREIGN KEY (post_id) REFERENCES tb_post (post_id);
CREATE TABLE tb_comment (
    comment_id SERIAL PRIMARY KEY,
    created_by_user INTEGER NOT NULL,
    post_id INTEGER NOT NULL,
    caption VARCHAR NOT NULL,
    comment_replied_to_id INTEGER,
    UNIQUE (comment_id)
);
ALTER TABLE tb_comment
ADD CONSTRAINT FK_Comment_3 FOREIGN KEY (created_by_user) REFERENCES tb_user (user_id);
ALTER TABLE tb_comment
ADD CONSTRAINT FK_Comment_4 FOREIGN KEY (post_id) REFERENCES tb_post (post_id);
ALTER TABLE tb_comment
ADD CONSTRAINT FK_Comment_5 FOREIGN KEY (comment_replied_to_id) REFERENCES tb_comment (comment_id);
CREATE TABLE tb_notificationLike(
    post_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL
);
ALTER TABLE tb_notificationLike
ADD CONSTRAINT FK_NotificationLike_1 FOREIGN KEY (post_id) REFERENCES tb_post (post_id);
ALTER TABLE tb_Notificationlike
ADD CONSTRAINT FK_NotificationLike_2 FOREIGN KEY (User_id) REFERENCES tb_user (user_id);
CREATE TABLE tb_notificationFollow(
    user_id_following INTEGER NOT NULL,
    user_id_followed INTEGER NOT NULL
);
ALTER TABLE tb_notificationFollow
ADD CONSTRAINT FK_NotificationFollow_1 FOREIGN KEY (user_id_following) REFERENCES tb_user (user_id);
ALTER TABLE tb_notificationFollow
ADD CONSTRAINT FK_NotificationFollow_2 FOREIGN KEY (user_id_followed) REFERENCES tb_user (user_id);
--dml
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '1',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 1'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '2',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 2'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '3',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 3'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '4',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 4'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '5',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 5'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '6',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 6'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '7',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 7'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '8',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 8'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '9',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 9'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '10',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 10'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '11',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 11'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '12',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 12'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '13',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 13'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '14',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 14'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '15',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 15'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '16',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 16'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '17',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 17'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '18',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 18'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '19',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 19'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '20',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 20'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '21',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 21'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '22',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 22'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '23',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 23'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '24',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 24'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '25',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 25'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '26',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 26'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '27',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 27'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '28',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 28'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '29',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 29'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '30',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 30'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '31',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 31'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '32',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 32'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '33',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 33'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '34',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 34'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '35',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 35'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '36',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 36'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '37',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 37'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '38',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 38'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '39',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 39'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '40',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 40'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '41',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 41'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '42',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 42'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '43',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 43'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '44',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 44'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '45',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 45'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '46',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 46'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '47',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 47'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '48',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 48'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '49',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 49'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '50',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 50'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '51',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 51'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '52',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 52'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '53',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 53'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '54',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 54'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '55',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 55'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '56',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 56'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '57',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 57'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '58',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 58'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '59',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 59'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '60',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 60'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '61',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 61'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '62',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 62'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '63',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 63'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '64',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 64'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '65',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 65'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '66',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 66'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '67',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 67'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '68',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 68'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '69',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 69'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '70',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 70'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '71',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 71'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '72',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 72'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '73',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 73'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '74',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 74'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '75',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 75'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '76',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 76'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '77',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 77'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '78',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 78'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '79',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 79'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '80',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 80'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '81',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 81'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '82',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 82'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '83',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 83'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '84',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 84'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '85',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 85'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '86',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 86'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '87',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 87'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '88',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 88'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '89',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 89'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '90',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 90'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '91',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 91'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '92',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 92'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '93',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 93'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '94',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 94'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '95',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 95'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '96',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 96'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '97',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 97'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '98',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 98'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '99',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 99'
    );
INSERT INTO tb_post (created_by_user_id, caption)
values (
        '100',
        'O clube de programacao expulsou Fernando, mais conhecido como Nandao, de seu sua administracao por tantos meses: 100'
    );
-- Insert de follower
insert into tb_follower (following_user_id, followed_user_id)
values ('1', '2');
insert into tb_follower (following_user_id, followed_user_id)
values ('2', '1');
insert into tb_follower (following_user_id, followed_user_id)
values ('2', '3');
insert into tb_follower (following_user_id, followed_user_id)
values ('3', '2');
insert into tb_follower (following_user_id, followed_user_id)
values ('5', '4');
insert into tb_follower (following_user_id, followed_user_id)
values ('1', '4');
insert into tb_follower (following_user_id, followed_user_id)
values ('1', '3');
insert into tb_follower (following_user_id, followed_user_id)
values ('1', '5');
insert into tb_follower (following_user_id, followed_user_id)
values ('3', '1');
insert into tb_follower (following_user_id, followed_user_id)
values ('4', '1');
insert into tb_follower (following_user_id, followed_user_id)
values ('5', '1');
insert into tb_follower (following_user_id, followed_user_id)
values ('5', '2');
insert into tb_follower (following_user_id, followed_user_id)
values ('2', '5');
insert into tb_follower (following_user_id, followed_user_id)
values ('4', '2');
insert into tb_follower (following_user_id, followed_user_id)
values ('2', '4');
insert into tb_follower (following_user_id, followed_user_id)
values ('5', '6');
insert into tb_follower (following_user_id, followed_user_id)
values ('6', '5');
insert into tb_follower (following_user_id, followed_user_id)
values ('6', '1');
insert into tb_follower (following_user_id, followed_user_id)
values ('6', '2');
insert into tb_follower (following_user_id, followed_user_id)
values ('6', '3');
insert into tb_follower (following_user_id, followed_user_id)
values ('6', '4');
select *
from tb_follower;
--Insert de like
insert into tb_like (post_id, user_id)
values ('5', '2');
insert into tb_like (post_id, user_id)
values ('5', '6');
insert into tb_like (post_id, user_id)
values ('5', '5');
insert into tb_like (post_id, user_id)
values ('4', '6');
insert into tb_like (post_id, user_id)
values ('4', '7');
insert into tb_like (post_id, user_id)
values ('9', '12');
insert into tb_like (post_id, user_id)
values ('7', '3');
insert into tb_like (post_id, user_id)
values ('3', '5');
insert into tb_like (post_id, user_id)
values ('8', '15');
insert into tb_like (post_id, user_id)
values ('12', '1');
insert into tb_like (post_id, user_id)
values ('13', '10');
insert into tb_like (post_id, user_id)
values ('14', '6');
insert into tb_like (post_id, user_id)
values ('15', '3');
insert into tb_like (post_id, user_id)
values ('16', '7');
insert into tb_like (post_id, user_id)
values ('17', '8');
insert into tb_like (post_id, user_id)
values ('18', '16');
insert into tb_like (post_id, user_id)
values ('17', '18');
insert into tb_like (post_id, user_id)
values ('10', '4');
insert into tb_like (post_id, user_id)
values ('30', '10');
insert into tb_like (post_id, user_id)
values ('6', '54');
insert into tb_like (post_id, user_id)
values ('2', '2');
select *
from tb_like;
--Insert de comentario
insert into tb_comment (created_by_user, post_id, caption)
values ('2', '5', 'Muito Interransante');
insert into tb_comment (created_by_user, post_id, caption)
values ('5', '5', 'Fantastico');
insert into tb_comment (created_by_user, post_id, caption)
values ('8', '4', 'Legal!!');
insert into tb_comment (created_by_user, post_id, caption)
values ('7', '13', 'kkkkkkkkkkkkkkkkkkkkkk');
insert into tb_comment (created_by_user, post_id, caption)
values ('6', '2', 'Quero me inscrever');
insert into tb_comment (created_by_user, post_id, caption)
values ('2', '10', 'Iniciativa f***');
CREATE or REPLACE FUNCTION sugestao() RETURNS trigger as $$
DECLARE vEmail varchar;
BEGIN
select tb_user.email
from tb_user
where (tb_user.user_id = new.created_by_user_id) into vEmail;
RAISE NOTICE '%',
vEmail;
RETURN NULL;
END;
$$ language 'plpgsql';
CREATE TRIGGER sugestaoAfirma
AFTER
INSERT ON post FOR EACH ROW EXECUTE PROCEDURE sugestao();
CREATE OR REPLACE FUNCTION numFollowers() returns trigger as $$
DECLARE numSeguidores INTEGER;
numSeguindo INTEGER;
begin
select count(following_user_id)
from tb_follower
where (following_user_id = new.following_user_id) into numSeguindo;
select count(followed_user_id)
from tb_follower
where (followed_user_id = new.followed_user_id) into numSeguidores;
UPDATE tb_user
SET num_seguindo = numSeguindo
where user_id = new.following_user_id;
UPDATE tb_user
SET num_seguidores = numSeguidores
where user_id = new.followed_user_id;
return NULL;
end;
$$ LANGUAGE plpgsql;

CREATE TRIGGER numFollowers
after
INSERT ON tb_follower for each row execute procedure numFollowers();
-- Povoamento dos usuarios feito em procedure
CREATE OR REPLACE PROCEDURE SP_inserirFuncionario (qtd integer) AS $$
DECLARE vFullName VARCHAR;
vProfileName VARCHAR;
vPassword VARCHAR;
vEmail VARCHAR;
vSingUpDate DATE;
vQtd INTEGER;
BEGIN vQtd := 1;
WHILE (vQtd < qtd + 1) LOOP vFullName := 'Estudante ' || vQtd;
vProfileName := 'OdeioMeuCurso' || vQtd;
vPassword := 'sqlazul' || vQtd;
vEmail := 'estudante' || vQtd || '@gmail.com';
insert into tb_user (full_name, profile_name, "password", email)
VALUES (vFullName, vProfileName, vPassword, vEmail);
vQtd := vQtd + 1;
END LOOP;
END;
$$ LANGUAGE plpgsql;
CALL SP_inserirFuncionario(64);
CREATE OR REPLACE FUNCTION autoLike() returns trigger as $$ begin
insert into tb_like(post_id, user_id)
VALUES (new.post_id, new.created_by_user);
end;
$$ LANGUAGE plpgsql;
CREATE TRIGGER autoLike
after
INSERT ON tb_post for each row execute procedure autoLike();