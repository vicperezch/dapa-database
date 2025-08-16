INSERT INTO vehicles (brand, model, license_plate, capacity_kg, available, insurance) VALUES
('Toyota', 'Hilux', 'ABC123', 1000.00, true, '2024-12-31'),
('Ford', 'Transit', 'DEF456', 1500.00, true, '2024-11-30'),
('Mercedes', 'Sprinter', 'GHI789', 2000.00, false, '2025-01-15'),
('Volkswagen', 'Crafter', 'JKL012', 1800.00, true, '2024-10-20'),
('Nissan', 'NV400', 'MNO345', 1600.00, true, '2025-03-10'),
('Renault', 'Master', 'PQR678', 1700.00, false, '2024-09-15'),
('Fiat', 'Ducato', 'STU901', 1400.00, true, '2025-02-28'),
('Peugeot', 'Boxer', 'VWX234', 1900.00, true, '2024-08-10'),
('Citroen', 'Jumper', 'YZA567', 1750.00, false, '2025-04-05'),
('Iveco', 'Daily', 'BCD890', 2200.00, true, '2024-07-22'),
('Isuzu', 'NQR', 'EFG123', 2500.00, true, '2025-05-18'),
('Mitsubishi', 'Canter', 'HIJ456', 2300.00, false, '2024-06-30'),
('Hyundai', 'Mighty', 'KLM789', 2100.00, true, '2025-06-12'),
('Chevrolet', 'NHR', 'NOP012', 1950.00, true, '2024-05-25'),
('Hino', '300', 'QRS345', 2700.00, false, '2025-07-30'),
('Volvo', 'FL', 'TUV678', 3000.00, true, '2024-04-18'),
('MAN', 'TGE', 'WXY901', 2800.00, true, '2025-08-15'),
('Scania', 'P-series', 'ZAB234', 3200.00, false, '2024-03-12'),
('DAF', 'LF', 'CDE567', 2900.00, true, '2025-09-20'),
('Kenworth', 'T170', 'FGH890', 3500.00, true, '2024-02-28'),
('Peterbilt', '220', 'IJK123', 3300.00, false, '2025-10-10'),
('Freightliner', 'M2', 'LMN456', 3100.00, true, '2024-01-15'),
('Mack', 'MD', 'OPQ789', 3400.00, true, '2025-11-25'),
('Western Star', '4700', 'RST012', 3600.00, false, '2023-12-31'),
('International', 'MV', 'UVW345', 3700.00, true, '2025-12-05');

INSERT INTO users (name, last_name, phone, email, password_hash, role, license_expiration_date) VALUES
('John', 'Doe', '1234567890', 'john.doe@example.com', 'hashed123', 'driver', '2025-06-30'),
('Robert', 'Johnson', '3456789012', 'robert.johnson@example.com', 'hashed345', 'driver', '2024-12-31'),
('Emily', 'Williams', '4567890123', 'emily.williams@example.com', 'hashed456', 'driver', '2025-05-15'),
('Sarah', 'Jones', '6789012345', 'sarah.jones@example.com', 'hashed678', 'driver', '2024-11-30'),
('David', 'Garcia', '7890123456', 'david.garcia@example.com', 'hashed789', 'driver', '2025-04-10'),
('Daniel', 'Davis', '9012345678', 'daniel.davis@example.com', 'hashed901', 'driver', '2024-10-20'),
('Olivia', 'Rodriguez', '0123456789', 'olivia.rodriguez@example.com', 'hashed012', 'driver', '2025-03-25'),
('Sophia', 'Hernandez', '2233445566', 'sophia.hernandez@example.com', 'hashed223', 'driver', '2024-09-15'),
('Benjamin', 'Lopez', '3344556677', 'benjamin.lopez@example.com', 'hashed334', 'driver', '2025-02-28'),
('William', 'Wilson', '5566778899', 'william.wilson@example.com', 'hashed556', 'driver', '2024-08-10'),
('Mia', 'Anderson', '6677889900', 'mia.anderson@example.com', 'hashed667', 'driver', '2025-01-15'),
('Charlotte', 'Taylor', '8899001122', 'charlotte.taylor@example.com', 'hashed889', 'driver', '2024-07-22'),
('Ethan', 'Moore', '9900112233', 'ethan.moore@example.com', 'hashed990', 'driver', '2025-06-12'),
('Lucas', 'White', '1029384756', 'lucas.white@example.com', 'hashed102', 'driver', '2024-06-30'),
('Harper', 'Harris', '2938475601', 'harper.harris@example.com', 'hashed293', 'driver', '2025-05-18'),
('Ella', 'Thompson', '4756012938', 'ella.thompson@example.com', 'hashed475', 'driver', '2024-05-25'),
('Jackson', 'Young', '5601293847', 'jackson.young@example.com', 'hashed560', 'driver', '2025-04-05');

INSERT INTO question_types (type) VALUES
('dropdown'),
('multiple'),
('unique');

INSERT INTO questions (question, description, type_id, is_active, position) VALUES
('Vehicle type', 'Select your vehicle type', 1, true, 1),          -- dropdown
('Additional services', 'Select all that apply', 2, true, 2),      -- multiple
('Payment method', 'Choose one option', 3, true, 3),               -- unique
('Preferred contact time', 'Select from dropdown', 1, true, 4),    -- dropdown
('Insurance options', 'Select all needed', 2, true, 5),            -- multiple
('Delivery speed', 'Choose one', 3, true, 6),                      -- unique
('Vehicle features', 'Select desired features', 2, true, 7),       -- multiple
('Fuel type', 'Select one', 3, true, 8),                          -- unique
('Service intervals', 'Select options', 1, true, 9),               -- dropdown
('Additional equipment', 'Select all needed', 2, true, 10),        -- multiple
('Preferred mechanic', 'Choose one', 3, true, 11),                 -- unique
('Tire options', 'Select from dropdown', 1, true, 12),             -- dropdown
('Roadside assistance', 'Select services', 2, true, 13),           -- multiple
('Warranty type', 'Select one', 3, true, 14),                      -- unique
('Vehicle color', 'Select from dropdown', 1, true, 15),            -- dropdown
('Accessories', 'Select all wanted', 2, true, 16),                 -- multiple
('Service package', 'Choose one', 3, true, 17),                    -- unique
('Insurance add-ons', 'Select from dropdown', 1, true, 18),        -- dropdown
('Safety features', 'Select all desired', 2, true, 19),            -- multiple
('Payment frequency', 'Select one', 3, true, 20),                  -- unique
('Vehicle size', 'Select from dropdown', 1, true, 21),             -- dropdown
('Comfort features', 'Select all preferred', 2, true, 22),         -- multiple
('Lease option', 'Choose one', 3, true, 23),                       -- unique
('Maintenance plan', 'Select from dropdown', 1, true, 24),         -- dropdown
('Technology packages', 'Select all wanted', 2, true, 25);         -- multiple

INSERT INTO question_options (question_id, option) VALUES
-- Dropdown options (type_id=1)
(1, 'Sedan'), (1, 'SUV'), (1, 'Truck'), (1, 'Van'), (1, 'Motorcycle'),
(4, 'Morning'), (4, 'Afternoon'), (4, 'Evening'), (4, 'Any time'),
(9, 'Monthly'), (9, 'Quarterly'), (9, 'Every 6 months'), (9, 'Annual'),
(12, 'All-season'), (12, 'Winter'), (12, 'Summer'), (12, 'Performance'),
(15, 'Red'), (15, 'Blue'), (15, 'Black'), (15, 'White'), (15, 'Silver'),
(18, 'Glass coverage'), (18, 'Rental car'), (18, 'Roadside'), (18, 'Gap insurance'),
(21, 'Compact'), (21, 'Midsize'), (21, 'Full-size'), (21, 'Oversized'),
(24, 'Basic'), (24, 'Standard'), (24, 'Premium'), (24, 'Platinum'),

-- Multiple choice options (type_id=2)
(2, 'Oil change'), (2, 'Tire rotation'), (2, 'Car wash'), (2, 'Interior cleaning'),
(5, 'Collision'), (5, 'Comprehensive'), (5, 'Liability'), (5, 'Uninsured motorist'),
(7, 'Sunroof'), (7, 'Leather seats'), (7, 'Navigation'), (7, 'Heated seats'),
(10, 'Roof rack'), (10, 'Trailer hitch'), (10, 'Bike rack'), (10, 'Cargo organizer'),
(13, 'Towing'), (13, 'Jump start'), (13, 'Lockout service'), (13, 'Fuel delivery'),
(16, 'Floor mats'), (16, 'Phone holder'), (16, 'Dash cam'), (16, 'Window tint'),
(19, 'ABS'), (19, 'Backup camera'), (19, 'Blind spot monitor'), (19, 'Lane assist'),
(22, 'Climate control'), (22, 'Massage seats'), (22, 'Ventilated seats'), (22, 'Ambient lighting'),
(25, 'Audio upgrade'), (25, 'Navigation'), (25, 'Safety tech'), (25, 'Entertainment'),

-- Unique choice options (type_id=3)
(3, 'Credit card'), (3, 'Debit card'), (3, 'Cash'), (3, 'Bank transfer'),
(6, 'Standard (3-5 days)'), (6, 'Express (2 days)'), (6, 'Overnight'), (6, 'Same day'),
(8, 'Gasoline'), (8, 'Diesel'), (8, 'Hybrid'), (8, 'Electric'),
(11, 'Dealer A'), (11, 'Dealer B'), (11, 'Dealer C'), (11, 'Any dealer'),
(14, 'Basic (1 year)'), (14, 'Extended (3 years)'), (14, 'Premium (5 years)'),
(17, 'Bronze'), (17, 'Silver'), (17, 'Gold'), (17, 'Platinum'),
(20, 'Monthly'), (20, 'Bi-weekly'), (20, 'Weekly'), (20, 'One-time'),
(23, '12 months'), (23, '24 months'), (23, '36 months'), (23, '48 months');

INSERT INTO submissions (submitted_at, status) VALUES
('2023-01-01 08:00:00', 'approved'),
('2023-01-02 09:15:00', 'pending'),
('2023-01-03 10:30:00', 'cancelled'),
('2023-01-04 11:45:00', 'approved'),
('2023-01-05 12:00:00', 'pending'),
('2023-01-06 13:15:00', 'approved'),
('2023-01-07 14:30:00', 'cancelled'),
('2023-01-08 15:45:00', 'approved'),
('2023-01-09 16:00:00', 'pending'),
('2023-01-10 17:15:00', 'approved'),
('2023-01-11 18:30:00', 'cancelled'),
('2023-01-12 19:45:00', 'approved'),
('2023-01-13 20:00:00', 'pending'),
('2023-01-14 21:15:00', 'approved'),
('2023-01-15 22:30:00', 'cancelled'),
('2023-01-16 23:45:00', 'approved'),
('2023-01-17 08:15:00', 'pending'),
('2023-01-18 09:30:00', 'approved'),
('2023-01-19 10:45:00', 'cancelled'),
('2023-01-20 11:00:00', 'approved'),
('2023-01-21 12:15:00', 'pending'),
('2023-01-22 13:30:00', 'approved'),
('2023-01-23 14:45:00', 'cancelled'),
('2023-01-24 15:00:00', 'approved'),
('2023-01-25 16:15:00', 'pending');

INSERT INTO answers (submission_id, question_id, answer, option_id) VALUES
-- Submission 1
(1, 1, NULL, 1), -- Vehicle type: Sedan (dropdown)
(1, 3, NULL, 9), -- Payment: Credit card (unique)
-- Submission 2
(2, 2, NULL, 5), -- Services: Oil change (multiple)
(2, 4, NULL, 13), -- Contact time: Morning (dropdown)
-- Submission 3
(3, 5, NULL, 17), -- Insurance: Collision (multiple)
(3, 6, NULL, 21), -- Delivery: Standard (unique)
-- Submission 4
(4, 7, NULL, 25), -- Features: Sunroof (multiple)
(4, 8, NULL, 29), -- Fuel: Gasoline (unique)
-- Submission 5
(5, 9, NULL, 33), -- Service intervals: Monthly (dropdown)
(5, 10, NULL, 37), -- Equipment: Roof rack (multiple)
-- Submission 6
(6, 11, NULL, 41), -- Mechanic: Dealer A (unique)
(6, 12, NULL, 45), -- Tires: All-season (dropdown)
-- Submission 7
(7, 13, NULL, 49), -- Roadside: Towing (multiple)
(7, 14, NULL, 53), -- Warranty: Basic (unique)
-- Submission 8
(8, 15, NULL, 57), -- Color: Red (dropdown)
(8, 16, NULL, 61), -- Accessories: Floor mats (multiple)
-- Submission 9
(9, 17, NULL, 65), -- Service package: Bronze (unique)
(9, 18, NULL, 69), -- Insurance add-ons: Glass (dropdown)
-- Submission 10
(10, 19, NULL, 73), -- Safety: ABS (multiple)
(10, 20, NULL, 77), -- Payment freq: Monthly (unique)
-- Submission 11
(11, 21, NULL, 81), -- Size: Compact (dropdown)
(11, 22, NULL, 85), -- Comfort: Climate control (multiple)
-- Submission 12
(12, 23, NULL, 89), -- Lease: 12 months (unique)
(12, 24, NULL, 93), -- Maintenance: Basic (dropdown)
-- Submission 13
(13, 25, NULL, 97), -- Tech: Audio upgrade (multiple)
(13, 1, NULL, 2), -- Vehicle type: SUV (dropdown)
-- Submission 14
(14, 2, NULL, 6), -- Services: Tire rotation (multiple)
(14, 3, NULL, 10), -- Payment: Debit card (unique)
-- Submission 15
(15, 4, NULL, 14), -- Contact time: Afternoon (dropdown)
(15, 5, NULL, 18), -- Insurance: Comprehensive (multiple)
-- Submission 16
(16, 6, NULL, 22), -- Delivery: Express (unique)
(16, 7, NULL, 26), -- Features: Leather seats (multiple)
-- Submission 17
(17, 8, NULL, 30), -- Fuel: Diesel (unique)
(17, 9, NULL, 34), -- Service intervals: Quarterly (dropdown)
-- Submission 18
(18, 10, NULL, 38), -- Equipment: Trailer hitch (multiple)
(18, 11, NULL, 42), -- Mechanic: Dealer B (unique)
-- Submission 19
(19, 12, NULL, 46), -- Tires: Winter (dropdown)
(19, 13, NULL, 50), -- Roadside: Jump start (multiple)
-- Submission 20
(20, 14, NULL, 54), -- Warranty: Extended (unique)
(20, 15, NULL, 58), -- Color: Blue (dropdown)
-- Submission 21
(21, 16, NULL, 62), -- Accessories: Phone holder (multiple)
(21, 17, NULL, 66), -- Service package: Silver (unique)
-- Submission 22
(22, 18, NULL, 70), -- Insurance add-ons: Rental car (dropdown)
(22, 19, NULL, 74), -- Safety: Backup camera (multiple)
-- Submission 23
(23, 20, NULL, 78), -- Payment freq: Bi-weekly (unique)
(23, 21, NULL, 82), -- Size: Midsize (dropdown)
-- Submission 24
(24, 22, NULL, 86), -- Comfort: Massage seats (multiple)
(24, 23, NULL, 90), -- Lease: 24 months (unique)
-- Submission 25
(25, 24, NULL, 94), -- Maintenance: Standard (dropdown)
(25, 25, NULL, 98); -- Tech: Navigation (multiple)

INSERT INTO orders (user_id, vehicle_id, origin, destination, total_amount, details, status, type, date, submission_id) VALUES
(1, 1, 'New York', 'Boston', 150.00, 'Fragile items', 'delivered', 'business', '2023-01-01', 1),
(3, 2, 'Los Angeles', 'San Francisco', 200.00, 'Office furniture', 'pickup', 'corporate', '2023-01-02', 2),
(4, 3, 'Chicago', 'Detroit', 175.50, 'Personal belongings', 'assigned', 'personal', '2023-01-03', 3),
(6, 4, 'Houston', 'Dallas', 120.75, 'Electronics', 'collected', 'business', '2023-01-04', 4),
(7, 5, 'Miami', 'Orlando', 90.00, 'Clothing', 'pending', 'personal', '2023-01-05', 5),
(9, 6, 'Seattle', 'Portland', 210.25, 'Artwork', 'delivered', 'corporate', '2023-01-06', 6),
(10, 7, 'Denver', 'Phoenix', 300.00, 'Medical supplies', 'pickup', 'business', '2023-01-07', 7),
(12, 8, 'Atlanta', 'Nashville', 180.50, 'Music equipment', 'assigned', 'personal', '2023-01-08', 8),
(13, 9, 'Boston', 'New York', 150.00, 'Documents', 'collected', 'corporate', '2023-01-09', 9),
(15, 10, 'San Francisco', 'Los Angeles', 200.00, 'Computer parts', 'pending', 'business', '2023-01-10', 10),
(16, 11, 'Detroit', 'Chicago', 175.50, 'Personal items', 'delivered', 'personal', '2023-01-11', 11),
(1, 17, 'New York', 'Philadelphia', 130.00, 'Food products', 'pickup', 'personal', '2023-01-17', 17),
(3, 18, 'Los Angeles', 'San Diego', 95.75, 'Beach equipment', 'assigned', 'corporate', '2023-01-18', 18),
(4, 19, 'Chicago', 'Milwaukee', 85.00, 'Office supplies', 'collected', 'business', '2023-01-19', 19),
(6, 20, 'Houston', 'Austin', 110.25, 'Music instruments', 'pending', 'personal', '2023-01-20', 20),
(7, 21, 'Miami', 'Tampa', 140.00, 'Art supplies', 'delivered', 'corporate', '2023-01-21', 21),
(9, 22, 'Seattle', 'Vancouver', 250.50, 'Sport equipment', 'pickup', 'business', '2023-01-22', 22),
(10, 23, 'Denver', 'Salt Lake City', 220.75, 'Camping gear', 'assigned', 'personal', '2023-01-23', 23),
(12, 24, 'Atlanta', 'Charlotte', 160.00, 'Electronics', 'collected', 'corporate', '2023-01-24', 24),
(13, 25, 'Boston', 'Washington DC', 190.25, 'Important documents', 'pending', 'business', '2023-01-25', 25);
