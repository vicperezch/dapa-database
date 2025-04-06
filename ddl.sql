CREATE TABLE serviceType (
    id SERIAL PRIMARY KEY,
    description VARCHAR(25)
);

CREATE TABLE paymentMethod (
    id SERIAL PRIMARY KEY,
    description VARCHAR(50) NOT NULL
);

CREATE TABLE paymentIndicator (
    id SERIAL PRIMARY KEY,
    description VARCHAR(25) NOT NULL
);

CREATE TABLE expenseType (
    id SERIAL PRIMARY KEY,
    description VARCHAR(50) NOT NULL
);

CREATE TABLE vehicles (
    id SERIAL PRIMARY KEY,
    brand VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    license_plate VARCHAR(15) NOT NULL UNIQUE,
    capacity_kg DECIMAL(10,2) CHECK (capacity_kg > 0),
    available BOOLEAN,
    current_mileage DECIMAL(10,2) NOT NULL CHECK (current_mileage > 0),
    next_maintenance_mileage DECIMAL(10,2) NOT NULL CHECK (next_maintenance_mileage > 0)
);

CREATE TABLE states (
    id SERIAL PRIMARY KEY,
    description VARCHAR NOT NULL
);

CREATE TABLE clientAddresses (
    id SERIAL PRIMARY KEY,
    address VARCHAR(100) NOT NULL
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE DEFAULT 'unknown'
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    password VARCHAR(50) NOT NULL,
    role VARCHAR(20) NOT NULL
);

CREATE TABLE quotes (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    state_id INTEGER NOT NULL,
    service_type INTEGER NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    date DATE NOT NULL DEFAULT CURRENT_DATE,
    details TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE RESTRICT,
    FOREIGN KEY (state_id) REFERENCES states(id)
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    description TEXT,
    weight_kg DECIMAL(10,2) CHECK (weight_kg > 0),
    dimensions DECIMAL(10,2),
    is_fragile BOOLEAN NOT NULL,
    quote_id INTEGER NOT NULL,
    FOREIGN KEY (quote_id) REFERENCES quotes(id)
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    quote_id INTEGER NOT NULL,
    driver_id INTEGER NOT NULL,
    vehicle_id INTEGER NOT NULL,
    origin VARCHAR(100) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    state_id INTEGER NOT NULL,
    FOREIGN KEY (quote_id) REFERENCES quotes(id),
    FOREIGN KEY (driver_id) REFERENCES employees(id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(id),
    FOREIGN KEY (state_id) REFERENCES states(id)
);

CREATE TABLE financialReports (
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    total_income DECIMAL(10,2),
    total_expense DECIMAL(10,2),
    net_profit DECIMAL(10,2)
);

CREATE TABLE incomes (
    id SERIAL PRIMARY KEY,
    justification TEXT,
    payment_method_id INTEGER NOT NULL,
    date DATE NOT NULL DEFAULT CURRENT_DATE,
    amount DECIMAL(10,2) CHECK (amount > 0),
    financial_report_id INTEGER NOT NULL,
    FOREIGN KEY (payment_method_id) REFERENCES paymentMethod(id),
    FOREIGN KEY (financial_report_id) REFERENCES financialReports(id)
);

CREATE TABLE expenses (
    id SERIAL PRIMARY KEY,
    details TEXT,
    payment_method_id INTEGER NOT NULL,
    date DATE NOT NULL DEFAULT CURRENT_DATE,
    payment_indicator_id INTEGER NOT NULL,
    financial_report_id INTEGER NOT NULL,
    amount DECIMAL(10,2) CHECK (amount > 0),
    type_id INTEGER,
    FOREIGN KEY (payment_method_id) REFERENCES paymentMethod(id),
    FOREIGN KEY (payment_indicator_id) REFERENCES paymentIndicator(id),
    FOREIGN KEY (financial_report_id) REFERENCES financialReports(id),
    FOREIGN KEY (type_id) REFERENCES expenseType(id) ON DELETE RESTRICT
);

CREATE TABLE performanceReports (
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    driver_id INTEGER NOT NULL,
    completed_deliveries INTEGER NOT NULL,
    average_delivery_time INTEGER NOT NULL,
    average_rating DECIMAL(10,2),
    FOREIGN KEY (driver_id) REFERENCES employees(id)
);

CREATE TABLE notifications (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    message TEXT NOT NULL,
    date TIMESTAMP NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);