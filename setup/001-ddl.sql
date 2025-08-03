CREATE type form_status AS ENUM('pending', 'cancelled', 'approved');
CREATE type role AS ENUM('admin', 'driver');

CREATE TABLE service_types (
    id SERIAL PRIMARY KEY,
    description VARCHAR(25)
);

CREATE TABLE vehicles (
    id SERIAL PRIMARY KEY,
    brand VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    license_plate VARCHAR(15) NOT NULL,
    capacity_kg DECIMAL(10,2) CHECK (capacity_kg > 0),
    available BOOLEAN,
	insurance DATE NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE statuses (
    id SERIAL PRIMARY KEY,
    description VARCHAR(25) NOT NULL
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
	password_hash VARCHAR(255) NOT NULL,
	role role NOT NULL,
	license_expiration_date DATE
);

CREATE TABLE question_types (
	id SERIAL PRIMARY KEY,
	type VARCHAR(50) NOT NULL
);

CREATE TABLE questions (
	id SERIAL PRIMARY KEY,
	question VARCHAR(50) NOT NULL,
	description VARCHAR(255) DEFAULT NULL,
	type_id INTEGER NOT NULL,
	is_active BOOLEAN NOT NULL DEFAULT TRUE,
	FOREIGN KEY (type_id) REFERENCES question_types(id)
);

CREATE TABLE question_options (
	id SERIAL PRIMARY KEY,
	question_id INTEGER NOT NULL,
	option VARCHAR(50) NOT NULL,
	FOREIGN KEY (question_id) REFERENCES questions(id)
);

CREATE TABLE submissions (
    id SERIAL PRIMARY KEY,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	status form_status NOT NULL DEFAULT 'pending'
);

CREATE TABLE answers (
	id SERIAL PRIMARY KEY,
	submission_id INTEGER NOT NULL,
	question_id INTEGER,
	answer TEXT,
	option_id INTEGER,
	FOREIGN KEY (submission_id) REFERENCES submissions(id),
	FOREIGN KEY (question_id) REFERENCES questions(id),
	FOREIGN KEY (option_id) REFERENCES question_options(id)
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    vehicle_id INTEGER NOT NULL,
    origin VARCHAR(100) NOT NULL,
    destination VARCHAR(100) NOT NULL,
	total_amount DECIMAL(10, 2) NOT NULL,
    status_id INTEGER NOT NULL,
	details TEXT,
	service_type_id INTEGER NOT NULL,
	date DATE NOT NULL DEFAULT CURRENT_DATE,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(id),
    FOREIGN KEY (status_id) REFERENCES statuses(id),
    FOREIGN KEY (service_type_id) REFERENCES service_types(id)
);

