CREATE TABLE IF NOT EXISTS coffee
                  (id INTEGER PRIMARY KEY AUTOINCREMENT,
                  name TEXT,
                  volume TEXT,
                  price REAL);
CREATE TABLE IF NOT EXISTS barista
                  (id INTEGER PRIMARY KEY AUTOINCREMENT,
                  name TEXT);

CREATE TABLE IF NOT EXISTS shift
                  (id INTEGER PRIMARY KEY AUTOINCREMENT,
                  date TEXT,
                  barista_id INTEGER,
                  coffee_id INTEGER,
                  FOREIGN KEY (barista_id) REFERENCES barista(id),
                  FOREIGN KEY (coffee_id) REFERENCES coffee(id));

INSERT INTO coffee (name, volume, price) VALUES ("Капучино", "200 мл", 300.0), ("Латте", "250 мл", 350.0);
INSERT INTO barista (name) VALUES ("Иван") ("Мария");
INSERT INTO shift (date, barista_id, coffee_id) VALUES ("10.09.2022", 1, 1), ("10.09.2022", 2, 1), ("11.09.2022", 1, 2);

# Выполняем запросы
SELECT name FROM barista WHERE id IN (SELECT DISTINCT barista_id FROM shift WHERE date = '10.09.2022');
# Какие кофе продали на смене
SELECT name FROM coffee WHERE id IN (SELECT DISTINCT coffee_id FROM shift WHERE date = '10.09.2022');
# Какой бариста продал кофе (пример "капучино 200 мл") на смене (пример 10.09.2022)
SELECT b.name FROM barista b JOIN shift s ON b.id = s.barista_id JOIN coffee c ON c.id = s.coffee_id WHERE in ("Капучино", "200 мл", "10.09.2022");
