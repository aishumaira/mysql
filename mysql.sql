CREATE TABLE class(
	id INT(10) NOT NULL PRIMARY KEY,
	#primary key = gk bisa keulang#
	name VARCHAR(100) NOT NULL,
	description TEXT NOT NULL
);

show tables;

INSERT INTO class (id, name, description)
	VALUES (1, "HTML", "Kelas belajar HTML");

SELECT * FROM class;

INSERT INTO class (id, name, description)
	VALUES
		(2, "CSS", "Kelas belajar CSS"),
		(3, "Javascript", "Kelas belajar Javascript"),
		(4, "Bootstrap", "Kelas belajar Bootstrap");
		
SELECT * FROM class;

SELECT `id`, `name` FROM class;

SELECT * FROM class
	WHERE id = 2;

SELECT * FROM class
	WHERE id > 2;

SELECT * FROM  class
	ORDER BY id DESC;

SELECT * FROM class
	LIMIT 3;

UPDATE class
	SET description = "Kelas untuk mempelajari HTML"
	WHERE id = 1;
	
SELECT * FROM class;

UPDATE class
	SET name = "Cascading Stylesheet",
	    description = "Kelas untuk belajar CSS"
	WHERE id = 2;

SELECT * FROM class;

DELETE FROM class
 WHERE id = 3;

SELECT * FROM class;
