--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Ubuntu 11.5-1.pgdg18.04+1)
-- Dumped by pg_dump version 11.5 (Ubuntu 11.5-1.pgdg18.04+1)

-- Started on 2019-08-25 10:36:22 CEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16663)
-- Name: financing; Type: TABLE; Schema: public; Owner: tomas
--

CREATE TABLE public.financing (
    id bigint NOT NULL,
    amount double precision NOT NULL,
    end_date date NOT NULL,
    name character varying(200) NOT NULL,
    rate double precision NOT NULL,
    reference character varying(10) NOT NULL,
    start_date date NOT NULL
);


ALTER TABLE public.financing OWNER TO tomas;

--
-- TOC entry 196 (class 1259 OID 16661)
-- Name: financing_id_seq; Type: SEQUENCE; Schema: public; Owner: tomas
--

CREATE SEQUENCE public.financing_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.financing_id_seq OWNER TO tomas;

--
-- TOC entry 2940 (class 0 OID 0)
-- Dependencies: 196
-- Name: financing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tomas
--

ALTER SEQUENCE public.financing_id_seq OWNED BY public.financing.id;


--
-- TOC entry 2809 (class 2604 OID 16666)
-- Name: financing id; Type: DEFAULT; Schema: public; Owner: tomas
--

ALTER TABLE ONLY public.financing ALTER COLUMN id SET DEFAULT nextval('public.financing_id_seq'::regclass);


--
-- TOC entry 2934 (class 0 OID 16663)
-- Dependencies: 197
-- Data for Name: financing; Type: TABLE DATA; Schema: public; Owner: tomas
--

INSERT INTO public.financing (id, amount, end_date, name, rate, reference, start_date) VALUES (1, 500, '2020-01-01', 'piscine', 10, '01', '2018-01-01');
INSERT INTO public.financing (id, amount, end_date, name, rate, reference, start_date) VALUES (3, 50, '2021-01-01', 'jaccuzi', 107, '01vvz', '2019-04-01');
INSERT INTO public.financing (id, amount, end_date, name, rate, reference, start_date) VALUES (4, 50, '2021-01-01', 'jauzi', 107, '0vvz', '2019-04-01');
INSERT INTO public.financing (id, amount, end_date, name, rate, reference, start_date) VALUES (5, 50, '2021-01-01', 'jauzi', 107, '0vvz', '2019-04-01');
INSERT INTO public.financing (id, amount, end_date, name, rate, reference, start_date) VALUES (7, 135, '2019-08-28', 'Tomas', 250.199999999999989, 'gdg', '2019-08-21');
INSERT INTO public.financing (id, amount, end_date, name, rate, reference, start_date) VALUES (8, 1000, '2019-08-30', 'Frank', 5.45000000000000018, '007', '2019-08-21');
INSERT INTO public.financing (id, amount, end_date, name, rate, reference, start_date) VALUES (9, 1000, '2019-08-30', 'Frank', 5.45000000000000018, '', '2019-08-21');
INSERT INTO public.financing (id, amount, end_date, name, rate, reference, start_date) VALUES (10, 1000, '2019-08-30', 'Frank2', 5.45000000000000018, 'regege', '2019-08-05');
INSERT INTO public.financing (id, amount, end_date, name, rate, reference, start_date) VALUES (11, 1000000000000, '2019-09-08', 'Johanna', 0.100000000000000006, 'pasletemps', '2019-08-03');
INSERT INTO public.financing (id, amount, end_date, name, rate, reference, start_date) VALUES (12, 1000000000000, '2019-09-08', 'Johanna22', 0.100000000000000006, 'paslet2', '2019-08-03');


--
-- TOC entry 2941 (class 0 OID 0)
-- Dependencies: 196
-- Name: financing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tomas
--

SELECT pg_catalog.setval('public.financing_id_seq', 12, true);


--
-- TOC entry 2811 (class 2606 OID 16668)
-- Name: financing financing_pkey; Type: CONSTRAINT; Schema: public; Owner: tomas
--

ALTER TABLE ONLY public.financing
    ADD CONSTRAINT financing_pkey PRIMARY KEY (id);


-- Completed on 2019-08-25 10:36:22 CEST

--
-- PostgreSQL database dump complete
--

