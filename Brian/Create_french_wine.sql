-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Q5dt5a
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "french_wines" (
    "name" TEXT   NOT NULL,
    "variety" TEXT   NOT NULL,
    "appelation" TEXT   NOT NULL,
    "rating" INT   NOT NULL,
    "price" INT   NOT NULL
);

INSERT INTO french_wines (name, variety, appelation, rating, price)
VALUES ('Test Wine', 'My Style', 'OUI OUI', 1, 1000)

SELECT * FROM french_wines