CREATE TABLE IF NOT EXISTS {{ index .Options "Namespace" }}users (
  instance_id varchar(255) DEFAULT NULL,
  id uuid PRIMARY KEY NOT NULL,
  aud varchar(255) DEFAULT NULL,
  role varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  encrypted_password varchar(255) DEFAULT NULL,
  confirmed_at timestamp NULL DEFAULT NULL,
  invited_at timestamp NULL DEFAULT NULL,
  confirmation_token varchar(255) DEFAULT NULL,
  confirmation_sent_at timestamp NULL DEFAULT NULL,
  recovery_token varchar(255) DEFAULT NULL,
  recovery_sent_at timestamp NULL DEFAULT NULL,
  email_change_token varchar(255) DEFAULT NULL,
  email_change varchar(255) DEFAULT NULL,
  email_change_sent_at timestamp NULL DEFAULT NULL,
  last_sign_in_at timestamp NULL DEFAULT NULL,
  raw_app_meta_data json DEFAULT '{}',
  raw_user_meta_data json DEFAULT '{}',
  is_super_admin boolean DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
);

CREATE INDEX users_instance_id_idx ON {{ index .Options "Namespace" }}users (instance_id);
CREATE INDEX users_instance_id_email_idx ON {{ index .Options "Namespace" }}users (instance_id,email);