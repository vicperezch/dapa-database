CREATE VIEW quotes_view AS
SELECT q.id AS id,
	q.date AS date,
	u.name AS client,
	v.brand AS vehicle_brand,
	v.model AS vehicle_model,
	e.name AS driver
FROM quotes AS q
JOIN submissions AS s ON q.submission_id = s.id
JOIN users AS u ON s.user_id = u.id
JOIN employees AS d ON q.driver_id = d.id
JOIN users AS e ON d.user_id = e.id
JOIN vehicles AS v ON q.vehicle_id = v.id;

