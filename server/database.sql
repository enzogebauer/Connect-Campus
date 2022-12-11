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
 
ALTER TABLE tb_user ADD CONSTRAINT FK_User_3
    FOREIGN KEY (photo_id)
    REFERENCES tb_userPhoto (photo_id)
;

CREATE TABLE tb_follower(
    following_user_id INTEGER NOT NULL,
    followed_user_id INTEGER NOT NULL
);
 
ALTER TABLE tb_follower ADD CONSTRAINT FK_Follower_1
    FOREIGN KEY (following_user_id)
    REFERENCES tb_user (user_id)
;
 
ALTER TABLE tb_follower ADD CONSTRAINT FK_Follower_3
    FOREIGN KEY (followed_user_id)
    REFERENCES tb_user (user_id)
;

CREATE TABLE tb_post (
    post_id SERIAL PRIMARY KEY,
    created_by_user_id INTEGER NOT NULL,
    ceated_datetime DATE DEFAULT CURRENT_DATE,
    caption VARCHAR NOT NULL,
    UNIQUE (post_id)
);
 
ALTER TABLE tb_post ADD CONSTRAINT FK_Post_3
    FOREIGN KEY (created_by_user_id)
    REFERENCES tb_user (user_id)
;

CREATE TABLE tb_like (
    post_id INTEGER NOT NULL,
    User_id INTEGER NOT NULL
);
 
ALTER TABLE tb_like ADD CONSTRAINT FK_Like_1
    FOREIGN KEY (post_id)
    REFERENCES tb_post (post_id)
;
 
ALTER TABLE tb_like ADD CONSTRAINT FK_Like_2
    FOREIGN KEY (User_id)
    REFERENCES tb_user (user_id)
;

CREATE TABLE tb_postMedia (
    post_media_id SERIAL PRIMARY KEY,
    post_id INTEGER NOT NULL,
    media_file BYTEA NOT NULL,
    UNIQUE (post_media_id)
);
 
ALTER TABLE tb_postMedia ADD CONSTRAINT FK_Post_media_3
    FOREIGN KEY (post_id)
    REFERENCES tb_post (post_id)
;

CREATE TABLE tb_comment (
    comment_id SERIAL PRIMARY KEY,
    created_by_user INTEGER NOT NULL,
    post_id INTEGER NOT NULL,
    caption VARCHAR NOT NULL,
    comment_replied_to_id INTEGER,
    UNIQUE (comment_id)
);
 
ALTER TABLE tb_comment ADD CONSTRAINT FK_Comment_3
    FOREIGN KEY (created_by_user)
    REFERENCES tb_user (user_id)
;
 
ALTER TABLE tb_comment ADD CONSTRAINT FK_Comment_4
    FOREIGN KEY (post_id)
    REFERENCES tb_post (post_id)
;
 
ALTER TABLE tb_comment ADD CONSTRAINT FK_Comment_5
    FOREIGN KEY (comment_replied_to_id)
    REFERENCES tb_comment (comment_id)
;

CREATE TABLE tb_notificationLike(
    post_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL
);

ALTER TABLE tb_notificationLike ADD CONSTRAINT FK_NotificationLike_1
    FOREIGN KEY (post_id)
    REFERENCES tb_post (post_id)
;
 
ALTER TABLE tb_Notificationlike ADD CONSTRAINT FK_NotificationLike_2
    FOREIGN KEY (User_id)
    REFERENCES tb_user (user_id)
;

CREATE TABLE tb_notificationFollow(
    user_id_following INTEGER NOT NULL,
    user_id_followed INTEGER NOT NULL
);

ALTER TABLE tb_notificationFollow ADD CONSTRAINT FK_NotificationFollow_1
    FOREIGN KEY (user_id_following)
    REFERENCES tb_user (user_id)
;
 
ALTER TABLE tb_notificationFollow ADD CONSTRAINT FK_NotificationFollow_2
    FOREIGN KEY (user_id_followed)
    REFERENCES tb_user (user_id)
;