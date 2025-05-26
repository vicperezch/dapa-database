ALTER TABLE users
DROP COLUMN created_at,
DROP COLUMN last_modified_at,
DROP COLUMN deleted_at,
DROP COLUMN is_active;

ALTER TABLE vehicles
DROP COLUMN created_at,
DROP COLUMN last_modified_at,
DROP COLUMN deleted_at,
DROP COLUMN is_active;

