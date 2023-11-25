-- SQLite

-- categories(pk:id,name)
CREATE TABLE IF NOT EXISTS categories (
    id INTEGER  PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL
);

-- items(pk:id, description, fk:category )
CREATE TABLE IF NOT EXISTS items (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    description TEXT NOT NULL,
    category INTEGER NOT NULL,
    FOREIGN KEY (category) REFERENCES categories(id)
);
-- tags(pk:id,name)
CREATE TABLE IF NOT EXISTS tags (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL
);

-- items_tags(pk:id,fk:tag_id, fk:item_id,)
CREATE TABLE IF NOT EXISTS items_tags (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tag_id INTEGER NOT NULL,
    item_id INTEGER NOT NULL,
    FOREIGN KEY (tag_id) REFERENCES tags(id),
    FOREIGN KEY (item_id) REFERENCES items(id)
);
-- teachers(pk:id, name, surname)
CREATE TABLE IF NOT EXISTS teachers(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    surname VARCHAR(255) NOT NULL
);

-- rentals(pk:id,item_id,teacher_id, start_date, end_date)
CREATE TABLE IF NOT EXISTS rentals(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    item_id INTEGER NOT NULL,
    teacher_id INTEGER NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    FOREIGN KEY (item_id) REFERENCES items(id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);

INSERT INTO categories ( name) VALUES ('Apparati di Rete');
INSERT INTO categories ( name) VALUES ('Elettronica');
INSERT INTO categories ( name) VALUES ( 'Libri');
