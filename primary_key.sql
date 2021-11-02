
-- Adding primary key to tables

CREATE TABLE peoplesTable (
    personId INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100),
    second_name VARCHAR(100),
    PRIMARY_KEY (personId)
)

-- Adding primary key method 2

CREATE TABLE peoplesTable (
    personId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    second_name VARCHAR(100)
)


-- Setting not null and default

CREATE TABLE peoplesTable (
    personId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL DEFAULT 'First Name',
    second_name VARCHAR(100) NOT NULL DEFAULT 'Second Name'
)


-- Save two fields as primary Id
CREATE TABLE likes (
    user_id INT AUTO_INCREMENT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (photo_id) REFERENCES photos(id),
    PRIMARY KEY (user_id,photo_id)
);


-- Creates table for follows
-- Notice the logic of follow and followee 
-- implementation use primary key to ensure unique
CREATE TABLE follows (
	follower_id INT NOT NULL,
	followee_id INT NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY (follower_id) REFERENCES users(id),
	FOREIGN KEY (followee_id) REFERENCES users(id),
	PRIMARY KEY (followee_id,follower_id)
);

-- tags names
CREATE TABLE tag (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
	tag_name VARCHAR(255) UNIQUE NOT NULL,
	created_at TIMESTAMP DEFAULT NOW()
);

-- photo tags
CREATE TABLE photo_tag (
	photo_id INTEGER NOT NULL,
	tag_id INTEGER NOT NULL,
	FOREIGN KEY (photo_id) REFERENCES photos(id),
	FOREIGN KEY (tag_id) REFERENCES tag(id),
	PRIMARY KEY (photo_id,tag_id)
);






