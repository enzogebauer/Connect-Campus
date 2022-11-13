create DATABASE ConnectCampus
CREATE TABLE Post (
    post_id SERIAL PRIMARY KEY,
    created_by_user_id INTEGER,
    ceated_datetime DATE,
    caption VARCHAR,
    UNIQUE (post_id, created_by_user_id)
);