CREATE TABLE IF NOT EXISTS accounts (
    account_id bigserial,
    user_id BIGINT NOT NULL UNIQUE,
    username BIGINT NOT NULL UNIQUE,
    names  BIGINT NOT NULL,
    email  VARCHAR(100),
    phone INT,
    password VARCHAR (50),
    PRIMARY KEY (user_id) 
);

CREATE TABLE IF NOT EXISTS posts (
    post_id BIGINT NOT NULL UNIQUE,
    user_id BIGINT NOT NULL UNIQUE,
    content VARCHAR,
    created_at TIMESTAMP,
    PRIMARY KEY (post_id),
     CONSTRAINT fk_user_id
    FOREIGN KEY (user_id)
    REFERENCES accounts(user_id)
);

CREATE TABLE IF NOT EXISTS coments (
    coment_id VARCHAR UNIQUE,
    user_id BIGINT NOT NULL UNIQUE,
    post_id BIGINT NOT NULL UNIQUE,
    content VARCHAR,
    created_at TIMESTAMP,
    PRIMARY KEY (coment_id),
    CONSTRAINT fk_user_id
    FOREIGN KEY (user_id),
    REFERENCES accounts(user_id),
    CONSTRAINT fk_post_id,
    FOREIGN KEY (post_id),
    REFERENCES posts(post_id)
);

CREATE TABLE IF NOT EXISTS followers (
    follower_id BIGINT NOT NULL UNIQUE,
    user_id BIGINT NOT NULL UNIQUE,
    status VARCHAR (20),
    PRIMARY KEY (follower_id),
    CONSTRAINT fk_user_id
    FOREIGN KEY (user_id)
    REFERENCES accounts(user_id)
);
