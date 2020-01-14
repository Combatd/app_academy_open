CREATE TABLE countries(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    population INTEGER NOT NULL
);

CREATE TABLE animals(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    country_id INTEGER NOT NULL,

    FOREIGN KEY (country_id) REFERENCES countries(id)
);

INSERT INTO
    countries
    (name, population)
VALUES
    ('United States', 327000000)
;

INSERT INTO
    animals
    (name, country_id)
VALUES
    ('Racoon',
    (SELECT id
    FROM countries
    WHERE name = 'United States')),
    ('Black Bear',
    (SELECT id
    FROM countries
    WHERE name = 'United States')),
    ('Bald Eagle',
    (SELECT id
    FROM countries
    WHERE name = 'United States'))
;

-- DROP TABLE animals;
-- DROP TABLE countries;