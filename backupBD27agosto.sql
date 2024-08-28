--
-- PostgreSQL database dump
--

-- Dumped from database version 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)

-- Started on 2024-08-27 20:04:29 -04

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

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 16412)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id integer NOT NULL,
    descricao character varying(100)
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16415)
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
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 210
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;


--
-- TOC entry 213 (class 1259 OID 16700)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id integer NOT NULL,
    nome character varying(100)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16703)
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_id_seq OWNER TO postgres;

--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 214
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;


--
-- TOC entry 215 (class 1259 OID 16704)
-- Name: item_venda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item_venda (
    id integer NOT NULL,
    produto_id integer,
    venda_id integer,
    quantidade integer,
    valor_unitario numeric(10,2),
    valor_total numeric(10,2)
);


ALTER TABLE public.item_venda OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16707)
-- Name: item_venda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.item_venda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.item_venda_id_seq OWNER TO postgres;

--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 216
-- Name: item_venda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.item_venda_id_seq OWNED BY public.item_venda.id;


--
-- TOC entry 211 (class 1259 OID 16416)
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
-- TOC entry 212 (class 1259 OID 16421)
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
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 212
-- Name: noticia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.noticia_id_seq OWNED BY public.noticia.id;


--
-- TOC entry 217 (class 1259 OID 16708)
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto (
    id integer NOT NULL,
    descricao character varying(100),
    valor numeric(10,2)
);


ALTER TABLE public.produto OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16711)
-- Name: produto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produto_id_seq OWNER TO postgres;

--
-- TOC entry 3413 (class 0 OID 0)
-- Dependencies: 218
-- Name: produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;


--
-- TOC entry 219 (class 1259 OID 16712)
-- Name: venda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venda (
    id integer NOT NULL,
    documento character varying(100),
    data date,
    valor numeric(10,2),
    forma_pagamento character varying(100),
    cliente_id integer
);


ALTER TABLE public.venda OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16715)
-- Name: venda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.venda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venda_id_seq OWNER TO postgres;

--
-- TOC entry 3414 (class 0 OID 0)
-- Dependencies: 220
-- Name: venda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.venda_id_seq OWNED BY public.venda.id;


--
-- TOC entry 3234 (class 2604 OID 16426)
-- Name: categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);


--
-- TOC entry 3236 (class 2604 OID 16716)
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);


--
-- TOC entry 3237 (class 2604 OID 16717)
-- Name: item_venda id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_venda ALTER COLUMN id SET DEFAULT nextval('public.item_venda_id_seq'::regclass);


--
-- TOC entry 3235 (class 2604 OID 16427)
-- Name: noticia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia ALTER COLUMN id SET DEFAULT nextval('public.noticia_id_seq'::regclass);


--
-- TOC entry 3238 (class 2604 OID 16718)
-- Name: produto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);


--
-- TOC entry 3239 (class 2604 OID 16719)
-- Name: venda id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda ALTER COLUMN id SET DEFAULT nextval('public.venda_id_seq'::regclass);


--
-- TOC entry 3392 (class 0 OID 16412)
-- Dependencies: 209
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categoria VALUES (5, 'Turismo e Cultura');
INSERT INTO public.categoria VALUES (4, 'Mundo em Conflito');
INSERT INTO public.categoria VALUES (1, 'Atualidade');
INSERT INTO public.categoria VALUES (13, 'Esporte');
INSERT INTO public.categoria VALUES (14, 'Tecnologia');
INSERT INTO public.categoria VALUES (16, 'Filme de Aventura');


--
-- TOC entry 3396 (class 0 OID 16700)
-- Dependencies: 213
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cliente VALUES (1, 'Antonio');
INSERT INTO public.cliente VALUES (2, 'Bernardo');
INSERT INTO public.cliente VALUES (3, 'Cleber');
INSERT INTO public.cliente VALUES (4, 'Douglas');
INSERT INTO public.cliente VALUES (5, 'Eugenio');
INSERT INTO public.cliente VALUES (6, 'Francisco');


--
-- TOC entry 3398 (class 0 OID 16704)
-- Dependencies: 215
-- Data for Name: item_venda; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.item_venda VALUES (229, 6, 19, 1, 8.20, 8.20);
INSERT INTO public.item_venda VALUES (231, 7, 20, 1, 15.00, 15.00);
INSERT INTO public.item_venda VALUES (232, 4, 21, 1, 9.00, 9.00);
INSERT INTO public.item_venda VALUES (233, 3, 21, 1, 7.35, 7.35);


--
-- TOC entry 3394 (class 0 OID 16416)
-- Dependencies: 211
-- Data for Name: noticia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.noticia VALUES (4, 'prof. Marcio Osshiro', '2024-03-05', 'Aula de Web III começa agora as 18:50hs', 'Depois de muito diálogo com os alunos, as aulas iniciam as 18:50hs e terminam as 22:00hs conforme desejo de todos', 14, '');
INSERT INTO public.noticia VALUES (13, 'Daiane dos Santos', '2024-01-01', 'Medalha de Bronze na Ginastica Olimpica', 'A equipe feminina de ginastica olimpica do Brasil conquista uma inédita medalha de bronze', 13, '5n1Z28fQqpjM9UgMFwfrjnRjjx3rAniDHg4JwmDj.png');


--
-- TOC entry 3400 (class 0 OID 16708)
-- Dependencies: 217
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.produto VALUES (1, 'Alface', 5.00);
INSERT INTO public.produto VALUES (2, 'Bolo', 8.50);
INSERT INTO public.produto VALUES (3, 'Cafe', 7.35);
INSERT INTO public.produto VALUES (4, 'Doce Leite', 9.00);
INSERT INTO public.produto VALUES (5, 'Ervilha', 4.00);
INSERT INTO public.produto VALUES (6, 'Feijão', 8.20);
INSERT INTO public.produto VALUES (7, 'Goiabada', 15.00);
INSERT INTO public.produto VALUES (8, 'Limao', 10.00);


--
-- TOC entry 3402 (class 0 OID 16712)
-- Dependencies: 219
-- Data for Name: venda; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.venda VALUES (19, NULL, '2024-08-27', 8.20, NULL, 1);
INSERT INTO public.venda VALUES (20, '2708', '2024-08-27', 15.00, 'a vista', 6);
INSERT INTO public.venda VALUES (21, 'venda2', '2024-08-27', 16.35, '15/30 dias', 2);


--
-- TOC entry 3415 (class 0 OID 0)
-- Dependencies: 210
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_seq', 18, true);


--
-- TOC entry 3416 (class 0 OID 0)
-- Dependencies: 214
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_seq', 6, true);


--
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 216
-- Name: item_venda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.item_venda_id_seq', 233, true);


--
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 212
-- Name: noticia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.noticia_id_seq', 14, true);


--
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 218
-- Name: produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produto_id_seq', 8, true);


--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 220
-- Name: venda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.venda_id_seq', 21, true);


--
-- TOC entry 3241 (class 2606 OID 16430)
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 3245 (class 2606 OID 16721)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- TOC entry 3247 (class 2606 OID 16723)
-- Name: item_venda item_venda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_venda
    ADD CONSTRAINT item_venda_pkey PRIMARY KEY (id);


--
-- TOC entry 3243 (class 2606 OID 16432)
-- Name: noticia noticia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia
    ADD CONSTRAINT noticia_pkey PRIMARY KEY (id);


--
-- TOC entry 3249 (class 2606 OID 16725)
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);


--
-- TOC entry 3251 (class 2606 OID 16727)
-- Name: venda venda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id);


--
-- TOC entry 3252 (class 2606 OID 16728)
-- Name: item_venda fk_venda; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_venda
    ADD CONSTRAINT fk_venda FOREIGN KEY (venda_id) REFERENCES public.venda(id) ON DELETE CASCADE NOT VALID;


-- Completed on 2024-08-27 20:04:29 -04

--
-- PostgreSQL database dump complete
--

