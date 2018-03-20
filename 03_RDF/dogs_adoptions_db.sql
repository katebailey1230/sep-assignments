--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: adopters; Type: TABLE; Schema: public; Owner: Kate
--

CREATE TABLE adopters (
    first_name text,
    last_name text,
    address character varying,
    phone_number character varying
);


ALTER TABLE adopters OWNER TO "Kate";

--
-- Name: adoptions; Type: TABLE; Schema: public; Owner: Kate
--

CREATE TABLE adoptions (
    id integer,
    adopter text,
    cat text,
    dog text,
    fee integer,
    date date
);


ALTER TABLE adoptions OWNER TO "Kate";

--
-- Name: cats; Type: TABLE; Schema: public; Owner: Kate
--

CREATE TABLE cats (
    id integer,
    name text,
    gender text,
    age integer,
    intake_date date,
    adoption_date date
);


ALTER TABLE cats OWNER TO "Kate";

--
-- Name: dogs; Type: TABLE; Schema: public; Owner: Kate
--

CREATE TABLE dogs (
    id integer,
    name character varying(25),
    gender character(1),
    age integer,
    weight integer,
    breed text,
    intake_date date,
    in_foster date
);


ALTER TABLE dogs OWNER TO "Kate";

--
-- Name: volunteers; Type: TABLE; Schema: public; Owner: Kate
--

CREATE TABLE volunteers (
    id integer,
    name text,
    address character varying,
    phone_number character varying,
    available_to_offer text,
    foster_id integer
);


ALTER TABLE volunteers OWNER TO "Kate";

--
-- Data for Name: adopters; Type: TABLE DATA; Schema: public; Owner: Kate
--

COPY adopters (first_name, last_name, address, phone_number) FROM stdin;
John	Smith	123 Orchard	310-7929
Sally	Jennings	529 Mass Ave	555-0379
Bill	Clinton	1600 Penn Ave	123-4567
Jackie	Wilson	2134 Wesley	805-3969
Barack	Obama	20 Willard Ave	555-2949
\.


--
-- Data for Name: adoptions; Type: TABLE DATA; Schema: public; Owner: Kate
--

COPY adoptions (id, adopter, cat, dog, fee, date) FROM stdin;
27	Bill Clinton	\N	Marley	200	2017-05-04
39	Sally Jennings	Mushi	Marmaduke	500	2016-07-01
50	Barack Obama	Victoire	\N	100	2016-09-01
130	John Smith	Azul	Lassie	300	2017-08-01
159	Jackie Wilson	\N	Munchkin	150	2017-01-31
\.


--
-- Data for Name: cats; Type: TABLE DATA; Schema: public; Owner: Kate
--

COPY cats (id, name, gender, age, intake_date, adoption_date) FROM stdin;
1	Mushi	M	1	2016-01-09	2016-03-22
2	Seasell	F	7	2016-01-09	\N
3	Azul	M	3	2016-01-11	2016-04-17
4	Victoire	M	7	2016-01-11	2016-09-01
5	Nala	F	1	2016-01-12	\N
\.


--
-- Data for Name: dogs; Type: TABLE DATA; Schema: public; Owner: Kate
--

COPY dogs (id, name, gender, age, weight, breed, intake_date, in_foster) FROM stdin;
10001	Boujee	F	3	36	labrador poodle	2017-06-22	\N
10002	Munchkin	F	0	8	dachsund chihuahua	2017-01-13	2017-01-31
10004	Marley	M	0	10	labrador	2017-05-04	2016-06-20
10003	Lassie	F	7	17	collie shepherd	2016-07-05	2017-07-22
10006	Marmaduke	M	7	150	great dane	2016-03-22	2016-05-15
10007	Rosco	M	5	180	rottweiler	2017-04-01	\N
\.


--
-- Data for Name: volunteers; Type: TABLE DATA; Schema: public; Owner: Kate
--

COPY volunteers (id, name, address, phone_number, available_to_offer, foster_id) FROM stdin;
1	Patti Smith	100 South Ave	555-0001	Y	293
2	John Lithgow	3 Street	201-3666	Y	294
3	Tina Fey	30 Rock	847-5299	Y	295
4	Tracy Jordan	30 Rock	847-5299	Y	296
5	Anna Kendrick	203 Station	123-5648	Y	297
\.


--
-- PostgreSQL database dump complete
--

