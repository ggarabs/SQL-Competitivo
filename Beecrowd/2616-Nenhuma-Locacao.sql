/*DROP TABLE customers;
DROP TABLE locations;

CREATE TABLE customers
(
    id INTEGER,
    name VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE locations(
    id INTEGER,
    locations_date DATE,
    id_customers INTEGER,
    PRIMARY KEY(id),
    FOREIGN KEY(id_customers) REFERENCES customers(id)
);

INSERT
INTO customers
VALUES (1, 'Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas');

INSERT
INTO customers
VALUES (2, 'Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia');

INSERT
INTO customers
VALUES (3, 'Rebeca Barbosa Santos', 'Rua Observatório Meteorológico', 'Salvador');

INSERT
INTO customers
VALUES (4, 'Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Apucarana');

INSERT
INTO customers
VALUES (5, 'João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa');

INSERT
INTO customers
VALUES (6, 'Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');

INSERT
INTO locations
VALUE (1, '2016-10-09', 3);

INSERT
INTO locations
VALUE (2, '2016-09-02', 1);

INSERT
INTO locations
VALUE (3, '2016-08-02', 4);

INSERT
INTO locations
VALUE (4, '2016-09-02', 2);

INSERT
INTO locations
VALUE (5, '2016-03-02', 6);

INSERT
INTO locations
VALUE (6, '2016-04-04', 4);
*/
/*
SELECT customers.id, customers.name
FROM customers
WHERE customers.id NOT IN (
    SELECT locations.id_customers 
    FROM locations
    GROUP BY id_customers
);
*/

SELECT customers.id, customers.name
FROM customers 
LEFT JOIN locations
ON locations.id_customers = customers.id
WHERE locations.id_customers IS NULL;
