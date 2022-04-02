
BEGIN;


CREATE TABLE public."softcartDimDate"
(
    date_id integer NOT NULL,
    date date NOT NULL,
    month_id integer,
    month_name character varying,
    weekday_name character varying,
    weekday_id integer,
    year integer,
    quarter_id integer,
    quarter_name character varying,
    PRIMARY KEY (date_id)
);

CREATE TABLE public."softcartDimCategory"
(
    category_id integer NOT NULL,
    category_name "char" NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE public."softcartDimItem"
(
    item_id integer NOT NULL,
    item_name character varying NOT NULL,
    price double precision,
    PRIMARY KEY (item_id)
);

CREATE TABLE public."softcartDimCountry"
(
    country_id integer NOT NULL,
    country_name character varying NOT NULL,
    PRIMARY KEY (country_id)
);

CREATE TABLE public."softcartFactSales"
(
    order_id integer NOT NULL,
    item_id integer,
    category_id integer,
    country_id integer,
    date_id integer,
    PRIMARY KEY (order_id)
);

ALTER TABLE public."softcartFactSales"
    ADD FOREIGN KEY (date_id)
    REFERENCES public."softcartDimDate" (date_id)
    NOT VALID;


ALTER TABLE public."softcartFactSales"
    ADD FOREIGN KEY (item_id)
    REFERENCES public."softcartDimItem" (item_id)
    NOT VALID;


ALTER TABLE public."softcartFactSales"
    ADD FOREIGN KEY (category_id)
    REFERENCES public."softcartDimCategory" (category_id)
    NOT VALID;


ALTER TABLE public."softcartFactSales"
    ADD FOREIGN KEY (country_id)
    REFERENCES public."softcartDimCountry" (country_id)
    NOT VALID;

END;
