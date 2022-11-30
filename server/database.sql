create DATABASE ConnectCampus
CREATE TABLE Post (
    post_id SERIAL PRIMARY KEY,
    created_by_user_id INTEGER,
    ceated_datetime DATE,
    caption VARCHAR,
    UNIQUE (post_id, created_by_user_id)
);
CREATE TABLE User_photo (
    photo_id SERIAL PRIMARY KEY UNIQUE,
    photo_file BLOB
);

CREATE TABLE User (
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR NOT NULL,
    profile_name VARCHAR NOT NULL,
    password VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    sign_up_date DATE,
    photo_id INTEGER,
    UNIQUE (user_id, profile_name, email)
);
 
ALTER TABLE User ADD CONSTRAINT FK_User_3
    FOREIGN KEY (photo_id)
    REFERENCES User_photo (photo_id)
;

CREATE TABLE Follower (
    following_user_id INTEGER,
    followed_user_id INTEGER,
    UNIQUE (following_user_id, followed_user_id)
);
 
ALTER TABLE Follower ADD CONSTRAINT FK_Follower_1
    FOREIGN KEY (following_user_id)
    REFERENCES User (user_id)
;
 
ALTER TABLE Follower ADD CONSTRAINT FK_Follower_3
    FOREIGN KEY (followed_user_id)
    REFERENCES User (user_id)
;

 
ALTER TABLE Post ADD CONSTRAINT FK_Post_3
    FOREIGN KEY (created_by_user_id)
    REFERENCES User (user_id)
;

CREATE TABLE Like (
    post_id INTEGER,
    User_id INTEGER
);
 
ALTER TABLE Like ADD CONSTRAINT FK_Like_1
    FOREIGN KEY (post_id)
    REFERENCES Post (post_id)
;
 
ALTER TABLE Like ADD CONSTRAINT FK_Like_2
    FOREIGN KEY (User_id)
    REFERENCES User (user_id)
;

CREATE TABLE Post_media (
    post_media_id SERIAL PRIMARY KEY,
    post_id INTEGER,
    media_file BLOB NOT NULL,
    UNIQUE (post_media_id, post_id)
);
 
ALTER TABLE Post_media ADD CONSTRAINT FK_Post_media_3
    FOREIGN KEY (post_id)
    REFERENCES Post (post_id)
;

CREATE TABLE Comment (
    comment_id SERIAL PRIMARY KEY,
    created_by_user INTEGER,
    post_id INTEGER,
    caption VARCHAR NOT NULL,
    comment_replied_to_id INTEGER,
    UNIQUE (comment_id, created_by_user, post_id)
);
 
ALTER TABLE Comment ADD CONSTRAINT FK_Comment_3
    FOREIGN KEY (created_by_user)
    REFERENCES User (user_id)
;
 
ALTER TABLE Comment ADD CONSTRAINT FK_Comment_4
    FOREIGN KEY (post_id)
    REFERENCES Post (post_id)
;
 
ALTER TABLE Comment ADD CONSTRAINT FK_Comment_5
    FOREIGN KEY (comment_replied_to_id)
    REFERENCES Comment (comment_id)
;