CREATE TABLE IF NOT EXISTS {{ index .Options "Namespace" }}audit_log_entries (
  instance_id uuid DEFAULT NULL,
  id uuid PRIMARY KEY NOT NULL,
  payload json DEFAULT NULL,
  created_at timestamp DEFAULT NULL
);

CREATE INDEX audit_logs_instance_id_idx ON {{ index .Options "Namespace" }}audit_log_entries (instance_id);
