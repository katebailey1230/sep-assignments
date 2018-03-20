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

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: flights; Type: TABLE; Schema: public; Owner: Kate
--

CREATE TABLE flights (
    flight_number integer,
    destination text,
    origin text,
    company text,
    distance integer,
    flight_time integer,
    airplane_model text
);


ALTER TABLE flights OWNER TO "Kate";

--
-- Data for Name: flights; Type: TABLE DATA; Schema: public; Owner: Kate
--

COPY flights (flight_number, destination, origin, company, distance, flight_time, airplane_model) FROM stdin;
300	Atlanta	Chicago	United	1200	160	MD80
450	Seattle	Atlanta	American	3000	300	767
500	New York	Los Angeles	Delta	3000	300	B737
\.


--
-- PostgreSQL database dump complete
--

