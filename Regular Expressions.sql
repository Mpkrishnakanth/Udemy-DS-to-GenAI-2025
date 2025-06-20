use KP;

SELECT * FROM dataset;

SELECT customerID FROM dataset
WHERE customerID LIKE 'O%' OR
customerID LIKE 'K%' OR
customerID LIKE 'M%' OR
customerID LIKE 'C%';

-- INSTEAD OF THE ABOVE WE CAN USE THIS REGEXP to overcome that limmitations
SELECT customerID FROM dataset
WHERE customerID REGEXP'[OKMC]';