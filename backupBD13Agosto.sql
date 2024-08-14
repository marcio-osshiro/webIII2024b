--
-- PostgreSQL database dump
--

-- Dumped from database version 11.22 (Debian 11.22-1.pgdg100+1)
-- Dumped by pg_dump version 13.13 (Debian 13.13-1.pgdg100+1)

-- Started on 2024-08-13 20:30:13 -04

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

--
-- TOC entry 196 (class 1259 OID 64604)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id integer NOT NULL,
    descricao character varying(100)
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 64607)
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_id_seq OWNER TO postgres;

--
-- TOC entry 2929 (class 0 OID 0)
-- Dependencies: 197
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;


--
-- TOC entry 198 (class 1259 OID 64609)
-- Name: noticia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.noticia (
    id integer NOT NULL,
    autor character varying(100),
    data date,
    titulo character varying(100),
    descricao character varying,
    categoria_id integer,
    imagem character varying(50)
);


ALTER TABLE public.noticia OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 64615)
-- Name: noticia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.noticia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.noticia_id_seq OWNER TO postgres;

--
-- TOC entry 2930 (class 0 OID 0)
-- Dependencies: 199
-- Name: noticia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.noticia_id_seq OWNED BY public.noticia.id;


--
-- TOC entry 200 (class 1259 OID 64617)
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
-- TOC entry 201 (class 1259 OID 64620)
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_seq OWNER TO postgres;

--
-- TOC entry 2931 (class 0 OID 0)
-- Dependencies: 201
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;


--
-- TOC entry 2788 (class 2604 OID 64622)
-- Name: categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);


--
-- TOC entry 2789 (class 2604 OID 64623)
-- Name: noticia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia ALTER COLUMN id SET DEFAULT nextval('public.noticia_id_seq'::regclass);


--
-- TOC entry 2790 (class 2604 OID 64624)
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);


--
-- TOC entry 2918 (class 0 OID 64604)
-- Dependencies: 196
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categoria VALUES (5, 'Turismo e Cultura');
INSERT INTO public.categoria VALUES (4, 'Mundo em Conflito');
INSERT INTO public.categoria VALUES (1, 'Atualidade');
INSERT INTO public.categoria VALUES (13, 'Esporte');
INSERT INTO public.categoria VALUES (14, 'Tecnologia');
INSERT INTO public.categoria VALUES (16, 'Filme de Aventura');


--
-- TOC entry 2920 (class 0 OID 64609)
-- Dependencies: 198
-- Data for Name: noticia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.noticia VALUES (4, 'prof. Marcio Osshiro', '2024-03-05', 'Aula de Web III começa agora as 18:50hs', 'Depois de muito diálogo com os alunos, as aulas iniciam as 18:50hs e terminam as 22:00hs conforme desejo de todos', 14, '');
INSERT INTO public.noticia VALUES (13, 'Daiane dos Santos', '2024-01-01', 'Medalha de Bronze na Ginastica Olimpica', 'A equipe feminina de ginastica olimpica do Brasil conquista uma inédita medalha de bronze', 13, '5n1Z28fQqpjM9UgMFwfrjnRjjx3rAniDHg4JwmDj.png');


--
-- TOC entry 2922 (class 0 OID 64617)
-- Dependencies: 200
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario VALUES (1, 'administrador', 'admin@gmail.com', '12345');


--
-- TOC entry 2932 (class 0 OID 0)
-- Dependencies: 197
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_seq', 18, true);


--
-- TOC entry 2933 (class 0 OID 0)
-- Dependencies: 199
-- Name: noticia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.noticia_id_seq', 14, true);


--
-- TOC entry 2934 (class 0 OID 0)
-- Dependencies: 201
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_seq', 1, true);


--
-- TOC entry 2792 (class 2606 OID 64626)
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 2794 (class 2606 OID 64628)
-- Name: noticia noticia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia
    ADD CONSTRAINT noticia_pkey PRIMARY KEY (id);


--
-- TOC entry 2796 (class 2606 OID 64630)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


-- Completed on 2024-08-13 20:30:14 -04

--
-- PostgreSQL database dump complete
--

