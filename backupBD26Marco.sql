--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-26 20:52:49

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 16523)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id integer NOT NULL,
    descricao character varying(100)
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16521)
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categoria_id_seq OWNER TO postgres;

--
-- TOC entry 3014 (class 0 OID 0)
-- Dependencies: 202
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;


--
-- TOC entry 201 (class 1259 OID 16512)
-- Name: noticia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.noticia (
    id integer NOT NULL,
    autor character varying(100),
    data date,
    titulo character varying(100),
    descricao character varying,
    categoria_id integer
);


ALTER TABLE public.noticia OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16510)
-- Name: noticia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.noticia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.noticia_id_seq OWNER TO postgres;

--
-- TOC entry 3015 (class 0 OID 0)
-- Dependencies: 200
-- Name: noticia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.noticia_id_seq OWNED BY public.noticia.id;


--
-- TOC entry 205 (class 1259 OID 16531)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    nome character varying(100),
    email character varying(100),
    senha character varying(100)
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16529)
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_id_seq OWNER TO postgres;

--
-- TOC entry 3016 (class 0 OID 0)
-- Dependencies: 204
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;


--
-- TOC entry 2864 (class 2604 OID 16526)
-- Name: categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);


--
-- TOC entry 2863 (class 2604 OID 16515)
-- Name: noticia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia ALTER COLUMN id SET DEFAULT nextval('public.noticia_id_seq'::regclass);


--
-- TOC entry 2865 (class 2604 OID 16534)
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);


--
-- TOC entry 3005 (class 0 OID 16523)
-- Dependencies: 203
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categoria VALUES (2, 'Esporte');
INSERT INTO public.categoria VALUES (5, 'Turismo e Cultura');
INSERT INTO public.categoria VALUES (4, 'Mundo em Conflito');
INSERT INTO public.categoria VALUES (9, 'categoria 9');
INSERT INTO public.categoria VALUES (10, 'teste');
INSERT INTO public.categoria VALUES (1, 'Atualidade');


--
-- TOC entry 3003 (class 0 OID 16512)
-- Dependencies: 201
-- Data for Name: noticia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.noticia VALUES (4, 'prof. Marcio Osshiro', '2024-03-05', 'Aula de Web III começa agora as 18:50hs', 'Depois de muito diálogo com os alunos, as aulas iniciam as 18:50hs e terminam as 22:00hs conforme desejo de todos', 2);
INSERT INTO public.noticia VALUES (11, 'Tino Lopes', '2024-03-26', 'Brasil empata com Espanha', 'Com um gol de Endrix, Brasil empata no amistoso com a Espanha ', 2);


--
-- TOC entry 3007 (class 0 OID 16531)
-- Dependencies: 205
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario VALUES (1, 'administrador', 'admin@gmail.com', '12345');


--
-- TOC entry 3017 (class 0 OID 0)
-- Dependencies: 202
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_seq', 10, true);


--
-- TOC entry 3018 (class 0 OID 0)
-- Dependencies: 200
-- Name: noticia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.noticia_id_seq', 12, true);


--
-- TOC entry 3019 (class 0 OID 0)
-- Dependencies: 204
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_seq', 1, true);


--
-- TOC entry 2869 (class 2606 OID 16528)
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 2867 (class 2606 OID 16520)
-- Name: noticia noticia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia
    ADD CONSTRAINT noticia_pkey PRIMARY KEY (id);


--
-- TOC entry 2871 (class 2606 OID 16536)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 3013 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-03-26 20:52:50

--
-- PostgreSQL database dump complete
--

