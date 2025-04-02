CREATE TABLE serviceType (
    id INTEGER PRIMARY KEY,
    description VARCHAR(25)
);

CREATE TABLE paymentMethod (
    id INTEGER PRIMARY KEY,
    description VARCHAR(50) NOT NULL
);

CREATE TABLE paymentIndicator (
    id INTEGER PRIMARY KEY,
    description VARCHAR(25) NOT NULL
);

CREATE TABLE expenseType (
    id INTEGER PRIMARY KEY,
    description VARCHAR(50) NOT NULL
);

CREATE TABLE vehicles (
    id INTEGER PRIMARY KEY,
    brand VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    licensePlate VARCHAR(15) NOT NULL UNIQUE,
    capacityKg DECIMAL(10,2) CHECK (capacityKg > 0),
    available BOOLEAN,
    currentMileage DECIMAL(10,2) NOT NULL CHECK (currentMileage > 0),
    nextMaintenanceMileage DECIMAL(10,2) NOT NULL CHECK (nextMaintenanceMileage > 0)
);

CREATE TABLE states (
    id INTEGER PRIMARY KEY,
    description VARCHAR NOT NULL
);

CREATE TABLE clientAddresses (
    id INTEGER PRIMARY KEY,
    address VARCHAR(100) NOT NULL
);

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE DEFAULT 'unknown'
);

CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    password VARCHAR(50) NOT NULL,
    role VARCHAR(20) NOT NULL
);

CREATE TABLE quotes (
    id INTEGER PRIMARY KEY,
    userID INTEGER NOT NULL,
    stateId INTEGER NOT NULL,
    serviceType INTEGER NOT NULL,
    totalAmount DECIMAL(10,2) NOT NULL,
    date DATE NOT NULL DEFAULT CURRENT_DATE,
    details TEXT,
    FOREIGN KEY (userID) REFERENCES users(id) ON DELETE RESTRICT,
    FOREIGN KEY (stateId) REFERENCES states(id)
);

CREATE TABLE products (
    id INTEGER PRIMARY KEY,
    description TEXT,
    weightKg DECIMAL(10,2) CHECK (weightKg > 0),
    dimensions DECIMAL(10,2),
    isFragile BOOLEAN NOT NULL,
    quoteId INTEGER NOT NULL,
    FOREIGN KEY (quoteId) REFERENCES quotes(id)
);

CREATE TABLE orders (
    id INTEGER PRIMARY KEY,
    quoteId INTEGER NOT NULL,
    driverId INTEGER NOT NULL,
    vehicleId INTEGER NOT NULL,
    origin VARCHAR(100) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    stateId INTEGER NOT NULL,
    FOREIGN KEY (quoteId) REFERENCES quotes(id),
    FOREIGN KEY (driverId) REFERENCES employees(id),
    FOREIGN KEY (vehicleId) REFERENCES vehicles(id),
    FOREIGN KEY (stateId) REFERENCES states(id)
);

CREATE TABLE financialReports (
    id INTEGER PRIMARY KEY,
    date DATE NOT NULL,
    totalIncome DECIMAL(10,2),
    totalExpense DECIMAL(10,2),
    netProfit DECIMAL(10,2)
);

CREATE TABLE incomes (
    id INTEGER PRIMARY KEY,
    justification TEXT,
    paymentMethodId INTEGER NOT NULL,
    date DATE NOT NULL DEFAULT CURRENT_DATE,
    amount DECIMAL(10,2) CHECK (amount > 0),
    financialReportId INTEGER NOT NULL,
    FOREIGN KEY (paymentMethodId) REFERENCES paymentMethod(id),
    FOREIGN KEY (financialReportId) REFERENCES financialReports(id)
);

CREATE TABLE expenses (
    id INTEGER PRIMARY KEY,
    details TEXT,
    paymentMethodId INTEGER NOT NULL,
    date DATE NOT NULL DEFAULT CURRENT_DATE,
    paymentIndicatorId INTEGER NOT NULL,
    financialReportId INTEGER NOT NULL,
    amount DECIMAL(10,2) CHECK (amount > 0),
    typeId INTEGER,
    FOREIGN KEY (paymentMethodId) REFERENCES paymentMethod(id),
    FOREIGN KEY (paymentIndicatorId) REFERENCES paymentIndicator(id),
    FOREIGN KEY (financialReportId) REFERENCES financialReports(id),
    FOREIGN KEY (typeId) REFERENCES expenseType(id) ON DELETE RESTRICT
);

CREATE TABLE performanceReports (
    id INTEGER PRIMARY KEY,
    date DATE NOT NULL,
    driverId INTEGER NOT NULL,
    completedDeliveries INTEGER NOT NULL,
    averageDeliveryTime INTEGER NOT NULL,
    averageRating DECIMAL(10,2),
    FOREIGN KEY (driverId) REFERENCES employees(id)
);

CREATE TABLE notifications (
    id INTEGER PRIMARY KEY,
    userId INTEGER NOT NULL,
    message TEXT NOT NULL,
    date TIMESTAMP NOT NULL,
    FOREIGN KEY (userId) REFERENCES users(id)
);