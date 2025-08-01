INSERT INTO service_type (description) VALUES 
('Standard Delivery'),
('Express Delivery'),
('Freight Shipping'),
('Same-Day Delivery'),
('Overnight Shipping'),
('International Shipping'),
('Heavy Cargo'),
('Temperature Controlled'),
('White Glove'),
('Parcel Service');

INSERT INTO payment_method (description) VALUES 
('Credit Card'),
('Debit Card'),
('PayPal'),
('Bank Transfer'),
('Cash'),
('Check'),
('Mobile Payment'),
('Cryptocurrency'),
('Money Order'),
('Direct Debit');

INSERT INTO payment_indicator (description) VALUES 
('Paid'),
('Unpaid'),
('Pending'),
('Failed'),
('Refunded'),
('Partially Paid'),
('Chargeback'),
('On Hold'),
('Cancelled'),
('Processing');

INSERT INTO vehicles (brand, model, license_plate, capacity_kg, available, current_mileage, next_maintenance_mileage) VALUES 
('Ford', 'Transit', 'ABC123', 1500.00, TRUE, 50000.00, 55000.00),
('Mercedes', 'Sprinter', 'DEF456', 2000.00, TRUE, 60000.00, 65000.00),
('Volvo', 'FH16', 'GHI789', 10000.00, FALSE, 120000.00, 125000.00),
('Toyota', 'Hiace', 'JKL012', 1200.00, TRUE, 30000.00, 35000.00),
('Isuzu', 'NPR', 'MNO345', 3000.00, TRUE, 80000.00, 85000.00),
('Chevrolet', 'Express', 'PQR678', 1800.00, FALSE, 70000.00, 75000.00),
('Nissan', 'NV200', 'STU901', 800.00, TRUE, 20000.00, 25000.00),
('Ram', 'ProMaster', 'VWX234', 1600.00, TRUE, 40000.00, 45000.00),
('Volkswagen', 'Crafter', 'YZA567', 1700.00, FALSE, 90000.00, 95000.00),
('Hyundai', 'Porter', 'BCD890', 1000.00, TRUE, 35000.00, 40000.00);

INSERT INTO states (description) VALUES 
('Pending'),
('Processing'),
('Shipped'),
('Delivered'),
('Cancelled'),
('Returned'),
('On Hold'),
('Failed'),
('Completed'),
('In Transit');

INSERT INTO client_addresses (address) VALUES 
('123 Main St, Anytown, USA'),
('456 Oak Ave, Somewhere, USA'),
('789 Pine Blvd, Nowhere, USA'),
('101 Elm St, Everywhere, USA'),
('202 Maple Dr, Anywhere, USA'),
('303 Cedar Ln, Elsewhere, USA'),
('404 Birch Rd, Nowhere, USA'),
('505 Spruce Way, Somewhere, USA'),
('606 Willow Cir, Anytown, USA'),
('707 Aspen Trl, Everywhere, USA');

INSERT INTO users (name, last_name, phone, email) VALUES 
('John', 'Doe', '555-1234', 'john.doe@example.com'),
('Jane', 'Smith', '555-5678', 'jane.smith@example.com'),
('Robert', 'Johnson', '555-9012', 'robert.johnson@example.com'),
('Emily', 'Williams', '555-3456', 'emily.williams@example.com'),
('Michael', 'Brown', '555-7890', 'michael.brown@example.com'),
('Sarah', 'Jones', '555-2345', 'sarah.jones@example.com'),
('David', 'Garcia', '555-6789', 'david.garcia@example.com'),
('Jessica', 'Martinez', '555-0123', 'jessica.martinez@example.com'),
('James', 'Davis', '555-4567', 'james.davis@example.com'),
('Lisa', 'Rodriguez', '555-8901', 'lisa.rodriguez@example.com');

INSERT INTO employees (user_id, license_expiration_date, password, role) VALUES 
(1, '2025-12-31', 'hashed_password_1', 'Driver'),
(2, '2024-10-15', 'hashed_password_2', 'Manager'),
(3, '2025-06-30', 'hashed_password_3', 'Driver'),
(4, '2024-11-20', 'hashed_password_4', 'Admin'),
(5, '2025-09-15', 'hashed_password_5', 'Driver'),
(6, '2024-08-10', 'hashed_password_6', 'Dispatcher'),
(7, '2025-07-25', 'hashed_password_7', 'Driver'),
(8, '2024-12-05', 'hashed_password_8', 'Accountant'),
(9, '2025-05-20', 'hashed_password_9', 'Driver'),
(10, '2024-09-30', 'hashed_password_10', 'Customer Service');

INSERT INTO question_types (type) VALUES 
('Multiple Choice'),
('Text Input'),
('Rating Scale'),
('Yes/No'),
('Dropdown'),
('Checkbox');

INSERT INTO questions (question, description, type_id, is_active) VALUES 
('How satisfied are you with our service?', 'Rate from 1 to 5', 3, TRUE),
('What is your preferred delivery time?', NULL, 2, TRUE),
('Would you recommend us to others?', NULL, 4, TRUE),
('Which services have you used?', 'Select all that apply', 6, TRUE),
('How did you hear about us?', NULL, 5, TRUE),
('What could we improve?', 'Open-ended feedback', 2, TRUE),
('Rate our driver professionalism', 'Scale 1-10', 3, TRUE),
('Do you need temperature control?', NULL, 4, TRUE);

INSERT INTO question_options (question_id, option) VALUES 
(1, '1 - Very Dissatisfied'),
(1, '2 - Dissatisfied'),
(1, '3 - Neutral'),
(1, '4 - Satisfied'),
(1, '5 - Very Satisfied'),
(3, 'Yes'),
(3, 'No'),
(4, 'Standard Delivery'),
(4, 'Express Delivery'),
(4, 'Freight Shipping');

INSERT INTO submissions (user_id, submitted_at, status) VALUES 
(1, '2023-01-15 10:00:00', 'approved'),
(2, '2023-01-16 11:30:00', 'pending'),
(3, '2023-02-05 09:15:00', 'approved'),
(4, '2023-02-10 14:45:00', 'cancelled'),
(5, '2023-03-12 08:20:00', 'approved'),
(6, '2023-03-18 13:10:00', 'pending'),
(7, '2023-04-22 16:30:00', 'approved'),
(8, '2023-04-25 10:00:00', 'cancelled'),
(9, '2023-05-08 11:15:00', 'approved'),
(10, '2023-05-15 15:45:00', 'pending');

INSERT INTO answers (submission_id, question_id, answer, option_id) VALUES 
(1, 1, NULL, 5),
(1, 2, 'Morning', NULL),
(2, 3, NULL, 6),
(3, 4, NULL, 8),
(3, 4, NULL, 9),
(4, 5, 'Online search', NULL),
(5, 6, 'Faster response times', NULL),
(6, 7, NULL, 5),
(7, 8, NULL, 6);

INSERT INTO quotes (submission_id, driver_id, vehicle_id, state_id, service_type, total_amount, date, details) VALUES 
(1, 1, 1, 4, 1, 150.00, '2023-01-15', 'Standard delivery for 2 packages'),
(2, NULL, NULL, 1, 2, 200.00, '2023-01-16', 'Express delivery request'),
(3, 3, 3, 4, 3, 500.00, '2023-02-05', 'Freight shipping for heavy items'),
(4, NULL, NULL, 5, 4, 250.00, '2023-02-10', 'Cancelled same-day delivery'),
(5, 5, 5, 4, 5, 350.00, '2023-03-12', 'Overnight shipping for documents'),
(6, NULL, NULL, 1, 6, 450.00, '2023-03-18', 'International shipping quote'),
(7, 7, 7, 4, 7, 600.00, '2023-04-22', 'Heavy cargo transport'),
(8, NULL, NULL, 5, 8, 400.00, '2023-04-25', 'Cancelled temperature controlled'),
(9, 9, 9, 4, 9, 550.00, '2023-05-08', 'White glove service for fragile items'),
(10, NULL, NULL, 1, 10, 120.00, '2023-05-15', 'Parcel service quote');

INSERT INTO products (description, weight_kg, dimensions, is_fragile, quote_id) VALUES 
('Electronics', 5.00, 30.00, TRUE, 1),
('Clothing', 3.00, 20.00, FALSE, 1),
('Furniture', 50.00, 150.00, FALSE, 3),
('Glassware', 8.00, 40.00, TRUE, 4),
('Documents', 0.50, 5.00, FALSE, 5),
('Artwork', 10.00, 80.00, TRUE, 6),
('Machinery parts', 200.00, 200.00, FALSE, 7),
('Pharmaceuticals', 5.00, 30.00, TRUE, 8),
('Antiques', 15.00, 60.00, TRUE, 9),
('Books', 12.00, 45.00, FALSE, 10);

INSERT INTO orders (quote_id, driver_id, vehicle_id, origin, destination, state_id) VALUES 
(1, 1, 1, '123 Main St, Anytown, USA', '456 Oak Ave, Somewhere, USA', 4),
(3, 3, 3, '789 Pine Blvd, Nowhere, USA', '101 Elm St, Everywhere, USA', 4),
(5, 5, 5, '202 Maple Dr, Anywhere, USA', '303 Cedar Ln, Elsewhere, USA', 4),
(7, 7, 7, '404 Birch Rd, Nowhere, USA', '505 Spruce Way, Somewhere, USA', 4),
(9, 9, 9, '606 Willow Cir, Anytown, USA', '707 Aspen Trl, Everywhere, USA', 4),
(2, 1, 2, '123 Main St, Anytown, USA', '456 Oak Ave, Somewhere, USA', 1),
(4, 3, 4, '789 Pine Blvd, Nowhere, USA', '101 Elm St, Everywhere, USA', 5),
(6, 5, 6, '202 Maple Dr, Anywhere, USA', '303 Cedar Ln, Elsewhere, USA', 1),
(8, 7, 8, '404 Birch Rd, Nowhere, USA', '505 Spruce Way, Somewhere, USA', 5),
(10, 9, 10, '606 Willow Cir, Anytown, USA', '707 Aspen Trl, Everywhere, USA', 1);

