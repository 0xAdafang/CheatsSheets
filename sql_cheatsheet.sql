-- 🟢 SQL CHEATSHEET - BASES

-- 🔸 Création d'une table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    email VARCHAR(255) UNIQUE,
    is_admin BOOLEAN DEFAULT false,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 🔸 Insertion de données
INSERT INTO users (name, age, email) VALUES ('Alice', 30, 'alice@example.com');
INSERT INTO users (name, age, email, is_admin) VALUES ('Bob', 25, 'bob@example.com', true);

-- 🔸 Sélection (lecture)
SELECT * FROM users;
SELECT name, age FROM users WHERE age > 20;
SELECT * FROM users WHERE email LIKE '%@example.com';

-- 🔸 Mise à jour
UPDATE users SET age = 31 WHERE name = 'Alice';

-- 🔸 Suppression
DELETE FROM users WHERE id = 1;

-- 🔸 Tri & Limites
SELECT * FROM users ORDER BY age DESC LIMIT 5 OFFSET 0;

-- 🔸 Agrégation
SELECT COUNT(*) FROM users;
SELECT AVG(age), MAX(age), MIN(age) FROM users;

-- 🔸 GROUP BY
SELECT is_admin, COUNT(*) FROM users GROUP BY is_admin;

-- 🔸 Jointures
-- Supposons une table orders avec user_id en FK
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    total NUMERIC,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Jointure simple
SELECT u.name, o.total
FROM users u
JOIN orders o ON u.id = o.user_id;

-- 🔸 Alias
SELECT u.name AS username, o.total AS amount
FROM users u
JOIN orders o ON u.id = o.user_id;

-- 🔸 Sous-requêtes
SELECT * FROM users WHERE age > (SELECT AVG(age) FROM users);

-- 🔸 Transactions (PostgreSQL ou MySQL)
BEGIN;
UPDATE users SET is_admin = true WHERE name = 'Charlie';
-- rollback;
COMMIT;

-- 🔸 Index
CREATE INDEX idx_users_email ON users(email);

-- 🔸 Fonctions utiles
SELECT NOW();          -- Date et heure actuelle
SELECT CURRENT_DATE;   -- Date du jour
SELECT UPPER(name) FROM users;
SELECT LENGTH(name) FROM users;

-- 🔸 Vue (view)
CREATE VIEW admin_users AS
SELECT * FROM users WHERE is_admin = true;

-- 🔸 Drop & alter
ALTER TABLE users ADD COLUMN bio TEXT;
DROP TABLE orders;
DROP VIEW admin_users;
