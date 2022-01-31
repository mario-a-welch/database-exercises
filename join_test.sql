USE join_test_db;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
        ('joe', 'joe@example.com', 2),
        ('sally', 'sally@example.com', 3),
        ('adam', 'adam@example.com', 3),
        ('jane', 'jane@example.com', null),
        ('mike', 'mike@example.com', null);

INSERT INTO users (name, email, role_id)
VALUES ('mario', 'mario@example.com', 2),
       ('maverick', 'maverick@example.com', 2),
       ('alexis', 'alexis@example.com', 2),
       ('keith', 'keith@example.com', null);


#JOIN
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles on users.role_id = roles.id;

#LEFT JOIN
#Will display all  user name data from the left table for a total of 10
SELECT users.name as user_name, roles.name as role_name
FROM users
LEFT JOIN roles on users.role_id = roles.id;

#RIGHT JOIN
#Will display all role names from the right table for a total of 8
SELECT users.name as user_name, roles.name as role_name
FROM users
RIGHT JOIN roles on users.role_id = roles.id;

SELECT roles.name AS role, COUNT(user.role_id) AS number_Of_Roles
FROM roles
LEFT JOIN users user on roles.id = user.role_id
GROUP BY roles.name;