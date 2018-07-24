CREATE TABLE IF NOT EXISTS {{ index .Options "Namespace" }}refresh_tokens (
  instance_id varchar(255) DEFAULT NULL,
  id serial PRIMARY KEY,
  token varchar(255) DEFAULT NULL,
  user_id uuid DEFAULT NULL,
  revoked boolean DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
);

CREATE INDEX refresh_tokens_instance_id_idx ON {{ index .Options "Namespace" }}refresh_tokens (instance_id);
CREATE INDEX refresh_tokens_instance_id_user_id_idx ON {{ index .Options "Namespace" }}refresh_tokens (instance_id,user_id);
CREATE INDEX refresh_tokens_token_idx ON {{ index .Options "Namespace" }}refresh_tokens (token);
