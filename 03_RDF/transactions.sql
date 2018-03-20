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
-- Name: transactions; Type: TABLE; Schema: public; Owner: Kate
--

CREATE TABLE transactions (
    id integer,
    seats_sold integer,
    total_revenue integer,
    total_cost integer,
    flight_number integer,
    date date
);


ALTER TABLE transactions OWNER TO "Kate";

--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: Kate
--

COPY transactions (id, seats_sold, total_revenue, total_cost, flight_number, date) FROM stdin;
257	105	300000	150000	300	2011-11-29
596	237	500000	250000	450	2013-04-29
985	75	100000	50000	500	2012-05-30
\.


--
-- PostgreSQL database dump complete
--

