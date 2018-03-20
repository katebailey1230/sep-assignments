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
-- Name: airplane; Type: TABLE; Schema: public; Owner: Kate
--

CREATE TABLE airplane (
    model text,
    seat_capacity integer,
    range integer
);


ALTER TABLE airplane OWNER TO "Kate";

--
-- Data for Name: airplane; Type: TABLE DATA; Schema: public; Owner: Kate
--

COPY airplane (model, seat_capacity, range) FROM stdin;
MD80	150	5000
B737	200	6000
767	300	10000
\.


--
-- PostgreSQL database dump complete
--

