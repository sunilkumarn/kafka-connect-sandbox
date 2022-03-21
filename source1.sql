CREATE EXTENSION "uuid-ossp";

CREATE TABLE IF NOT EXISTS users (
  user_id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email_address VARCHAR(255) NOT NULL,
  phone_number VARCHAR(15),
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL
);

CREATE INDEX idx_users_updated_at ON users (updated_at);
CREATE INDEX idx_users_created_at ON users (updated_at);

INSERT INTO users(name, email_address, phone_number, created_at, updated_at)
  VALUES ('Zaphod Beeblebrox', 'prez@milkyway.galaxy', '+12008675309', NOW(), NOW());

INSERT INTO users(name, email_address, phone_number, created_at, updated_at)
  VALUES ('Dent Arthurdent', 'adent@islington.net', '+444242123456', NOW(), NOW());

INSERT INTO users(name, email_address, phone_number, created_at, updated_at)
  VALUES ('Tricia McMillan', 'trillian@islington.net', '+444242654321', NOW(), NOW());

INSERT INTO users(name, email_address, phone_number, created_at, updated_at)
  VALUES ('Ford Prefect', 'fprefect@megadodo.biz', '+444242314156', NOW(), NOW());

INSERT INTO users(name, email_address, phone_number, created_at, updated_at)
  VALUES ('Marvin the Paranoid Android', 'marvin@heartofgold.space', NULL, NOW(), NOW());

INSERT INTO users(name, email_address, phone_number, created_at, updated_at)
  VALUES ('Kumars Android', 'kumar@heartofgold.space', NULL, NOW(), NOW());
