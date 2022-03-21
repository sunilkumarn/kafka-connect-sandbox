CREATE EXTENSION "uuid-ossp";

CREATE TABLE IF NOT EXISTS emails (
  email_id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
  subject VARCHAR(255) NOT NULL,
  to_address VARCHAR(255) NOT NULL,
  from_address VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL
);
CREATE INDEX idx_emails_updated_at ON emails (updated_at);
CREATE INDEX idx_emails_created_at ON emails (updated_at);

CREATE TABLE IF NOT EXISTS email_events (
  email_event_id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
  email_id uuid,
  event_data jsonb NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  FOREIGN KEY (email_id) REFERENCES emails (email_id)
);

CREATE INDEX idx_event_data ON email_events USING GIN (event_data);
CREATE INDEX idx_email_events_updated_at ON email_events (updated_at);
CREATE INDEX idx_email_events_created_at ON email_events (updated_at);

INSERT INTO emails(subject, to_address, from_address, created_at, updated_at)
  VALUES('Stuck on backwater planet, please help', 'prez@milkyway.galaxy', 'fprefect@megadodo.biz', NOW(), NOW());

INSERT INTO emails(subject, to_address, from_address, created_at, updated_at)
  VALUES('re: Stuck on backwater planet, please help', 'fprefect@megadodo.biz', 'prez@milkyway.galaxy', NOW(), NOW());

INSERT INTO emails(subject, to_address, from_address, created_at, updated_at)
  VALUES('This is not funny', 'prez@milkyway.galaxy', 'fprefect@megadodo.biz', NOW(), NOW());

INSERT INTO emails(subject, to_address, from_address, created_at, updated_at)
  VALUES('Diode pain left side - WFH today', 'marvin@heartofgold.space', 'prez@milkyway.galaxy', NOW(), NOW());

INSERT INTO emails(subject, to_address, from_address, created_at, updated_at)
  VALUES('re: This is not funny', 'fprefect@megadodo.biz', 'prez@milkyway.galaxy', NOW(), NOW());

INSERT INTO emails(subject, to_address, from_address, created_at, updated_at)
  VALUES('Madagascar', 'trillian@islington.net', 'adent@islington.net', NOW(), NOW());
