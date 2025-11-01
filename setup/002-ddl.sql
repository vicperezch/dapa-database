SET ROLE dapa_app;

-- ENUMS
CREATE type form_status AS ENUM('pending', 'cancelled', 'approved');
CREATE type role AS ENUM('admin', 'driver', 'helper');
CREATE type order_type AS ENUM('corporate', 'move', 'cargo');
CREATE type order_status AS ENUM('pending', 'assigned', 'pickup', 'collected', 'delivered');

-- TABLAS
CREATE TABLE vehicles (
    id SERIAL PRIMARY KEY,
    brand VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    license_plate VARCHAR(15) NOT NULL,
    capacity_kg DECIMAL(10,2) CHECK (capacity_kg > 0),
    is_available BOOLEAN NOT NULL DEFAULT true,
	insurance DATE NOT NULL
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

CREATE TABLE reset_tokens (
	id SERIAL PRIMARY KEY,
	token VARCHAR(255) NOT NULL UNIQUE,
	expiry TIMESTAMP NOT NULL,
	is_used BOOLEAN NOT NULL DEFAULT false,
	user_id INTEGER NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(id)
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
	is_required BOOLEAN NOT NULL default true,
	is_active BOOLEAN NOT NULL DEFAULT true,
	position INTEGER NOT NULL DEFAULT 1,
	deleted_at TIMESTAMP DEFAULT NULL,
	FOREIGN KEY (type_id) REFERENCES question_types(id)
);

CREATE TABLE question_options (
	id SERIAL PRIMARY KEY,
	question_id INTEGER NOT NULL,
	option VARCHAR(50) NOT NULL,
	deleted_at TIMESTAMP DEFAULT NULL,
	FOREIGN KEY (question_id) REFERENCES questions(id)
);

CREATE TABLE submissions (
    id SERIAL PRIMARY KEY,
    submitted_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	status form_status NOT NULL DEFAULT 'pending'
);

CREATE TABLE answers (
	id SERIAL PRIMARY KEY,
	submission_id INTEGER NOT NULL,
	question_id INTEGER NOT NULL,
	answer TEXT,
	FOREIGN KEY (submission_id) REFERENCES submissions(id),
	FOREIGN KEY (question_id) REFERENCES questions(id)
);

CREATE TABLE answer_options (
    answer_id INT NOT NULL REFERENCES answers(id),
    question_option_id INT NOT NULL REFERENCES question_options(id),
    PRIMARY KEY (answer_id, question_option_id),
	UNIQUE (answer_id, question_option_id)
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INTEGER,
    vehicle_id INTEGER,
	client_name VARCHAR(50) NOT NULL,
	client_phone VARCHAR(15) NOT NULL,
    origin VARCHAR(100) NOT NULL,
    destination VARCHAR(100) NOT NULL,
	total_amount DECIMAL(10, 2) NOT NULL,
	payment_method VARCHAR(50) NOT NULL,
	details TEXT,
	status order_status NOT NULL default 'pending',
	type order_type NOT NULL,
	date DATE NOT NULL DEFAULT CURRENT_DATE,
	submission_id INTEGER NOT NULL UNIQUE,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(id),
    FOREIGN KEY (submission_id) REFERENCES submissions(id)
);

CREATE TABLE order_tokens (
	id SERIAL PRIMARY KEY,
	order_id INTEGER NOT NULL UNIQUE,
	token VARCHAR(255) NOT NULL UNIQUE,
	expiry TIMESTAMP,
	FOREIGN KEY (order_id) REFERENCES orders(id)
);

CREATE TABLE expense_types (
	id SERIAL PRIMARY KEY,
	type VARCHAR(25) NOT NULL
);

CREATE TABLE expenses (
	id SERIAL PRIMARY KEY,
	date DATE NOT NULL DEFAULT CURRENT_DATE,
	type_id INTEGER NOT NULL,
	temporal_employee BOOLEAN NOT NULL,
	description VARCHAR(255),
	amount DECIMAL(10, 2) NOT NULL CHECK(amount > 0),
	FOREIGN KEY (type_id) REFERENCES expense_types(id)
);

CREATE TABLE perfomance_records (	
	id SERIAL PRIMARY KEY,
	date DATE NOT NULL DEFAULT CURRENT_DATE,
	order_goal INTEGER NOT NULL DEFAULT 0,
	utility_goal DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
	average_per_order_goal DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
	travel_goal INTEGER NOT NULL DEFAULT 0,
	delivery_goal DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
	achievement_rate_goal DECIMAL(10, 2) NOT NULL DEFAULT 0.00
);

