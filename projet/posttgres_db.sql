--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 14.1 (Ubuntu 14.1-2.pgdg20.04+1)

-- Started on 2022-01-28 09:57:21 WAT

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
-- TOC entry 203 (class 1259 OID 24579)
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    id_client integer NOT NULL,
    nom character varying(20),
    prenom character varying(20),
    telephone integer
);


ALTER TABLE public.client OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 24577)
-- Name: client_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.client_id_seq OWNER TO postgres;

--
-- TOC entry 3000 (class 0 OID 0)
-- Dependencies: 202
-- Name: client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id_client;


--
-- TOC entry 205 (class 1259 OID 24587)
-- Name: commande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commande (
    id_com integer NOT NULL,
    designation character varying(100) NOT NULL,
    prix integer NOT NULL,
    date_com date NOT NULL,
    id_client integer NOT NULL
);


ALTER TABLE public.commande OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 24585)
-- Name: commande_id_com_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.commande_id_com_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commande_id_com_seq OWNER TO postgres;

--
-- TOC entry 3001 (class 0 OID 0)
-- Dependencies: 204
-- Name: commande_id_com_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.commande_id_com_seq OWNED BY public.commande.id_com;


--
-- TOC entry 207 (class 1259 OID 24608)
-- Name: livreur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.livreur (
    id_livreur integer NOT NULL,
    nom_prenom character varying(100) NOT NULL,
    montant_paye integer NOT NULL,
    date_liv date NOT NULL,
    id_com integer NOT NULL
);


ALTER TABLE public.livreur OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 24606)
-- Name: livreur_id_livreur_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.livreur_id_livreur_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.livreur_id_livreur_seq OWNER TO postgres;

--
-- TOC entry 3002 (class 0 OID 0)
-- Dependencies: 206
-- Name: livreur_id_livreur_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.livreur_id_livreur_seq OWNED BY public.livreur.id_livreur;


--
-- TOC entry 2852 (class 2604 OID 24582)
-- Name: client id_client; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client ALTER COLUMN id_client SET DEFAULT nextval('public.client_id_seq'::regclass);


--
-- TOC entry 2853 (class 2604 OID 24590)
-- Name: commande id_com; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande ALTER COLUMN id_com SET DEFAULT nextval('public.commande_id_com_seq'::regclass);


--
-- TOC entry 2854 (class 2604 OID 24611)
-- Name: livreur id_livreur; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livreur ALTER COLUMN id_livreur SET DEFAULT nextval('public.livreur_id_livreur_seq'::regclass);


--
-- TOC entry 2990 (class 0 OID 24579)
-- Dependencies: 203
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client (id_client, nom, prenom, telephone) FROM stdin;
1	Cathee	MacKartan	939
2	Rowe	Sleaford	940
3	Zola	Filyukov	941
4	Patin	Sheppey	942
5	Nat	Gowar	943
6	Salvidor	Gerok	944
7	Rivi	Troker	945
8	Hamid	Brellin	946
9	Marjory	MacMeanma	947
10	Granny	Matussow	948
11	Glenna	Knott	949
12	Gayle	Arnaudot	950
13	Pattin	Rowlstone	951
14	Muire	Eidler	952
15	Bevon	Fosten	953
16	Barbe	Mettrick	954
17	Engelbert	Sigert	955
18	Elset	Goddert.sf	956
19	Eziechiele	Mayne	957
20	Radcliffe	Durdy	958
21	Bambi	Batkin	959
22	Imojean	Vayne	960
23	Jorey	Brookes	961
24	Penelopa	Witts	962
25	Aubrey	Grunder	963
26	Kristofor	Rubin	964
27	Ninetta	Chatters	965
28	Felipe	Hamblyn	966
29	Frederick	Helmke	967
30	Yuri	Tidball	968
31	Sheppard	Fawckner	969
32	Kissee	Winspar	970
33	Diena	Tutchell	971
34	Hinze	Everal	972
35	Inessa	Rains	973
36	Hedvige	Cruse	974
37	Morris	Palliser	975
38	Miltie	Cawdron	976
39	Averil	Easeman	977
40	Kristel	Demoge	978
41	Tracie	Jardin	979
42	Priscilla	Sleath	980
43	Kaja	Lennie	981
44	Bradney	Allaway	982
45	Murdoch	Loble	983
46	Annabal	Von Brook	984
47	Kaela	Hazael	985
48	Kalle	Brason	986
49	Eleonore	Blumson	987
50	Shani	Dutnell	988
51	Jarvis	Hastin	989
52	Kerry	Elmore	990
53	Ashlen	Evetts	991
54	Laura	Jeanon	992
55	Giavani	Betterton	993
56	Kingsly	Ellard	994
57	Susette	Lillecrop	995
58	Cathrin	Edlestone	996
59	Anatola	Longforth	997
60	Sanson	Lawly	998
61	Dory	O'Mara	999
62	Virginia	Osgar	1000
63	Lorin	Bycraft	1001
64	Ynez	Aylett	1002
65	Terrill	Gunney	1003
66	Indira	Cottem	1004
67	Lonnard	Brace	1005
68	Sloan	Salzberg	1006
69	Milicent	MacGahy	1007
70	Enrika	Alger	1008
71	Garvy	Hexter	1009
72	Eyde	Walles	1010
73	Jerrome	Valero	1011
74	Carley	Kort	1012
75	Murvyn	Preon	1013
76	Amalia	Spencer	1014
77	Dynah	Desorts	1015
78	Judie	Goodlet	1016
79	Inesita	Roiz	1017
80	Skipper	Keeley	1018
81	Brok	Garfirth	1019
82	Lexie	Tompion	1020
83	Kerri	Williscroft	1021
84	Hanni	Tattersdill	1022
85	Corliss	Siddell	1023
86	Alejandra	Salla	1024
87	Darn	Dobrovsky	1025
88	Cyrille	Golde	1026
89	Margarete	McOmish	1027
90	Matthaeus	Mackison	1028
91	Brade	Breem	1029
92	Marie-jeanne	Daykin	1030
93	Moreen	Eckly	1031
94	Toma	Tabb	1032
95	Ally	Maestrini	1033
96	Babb	Dowyer	1034
97	Neda	Milier	1035
98	Mahmoud	Duplain	1036
99	Neda	Flanaghan	1037
100	Zabrina	Kondratovich	1038
\.


--
-- TOC entry 2992 (class 0 OID 24587)
-- Dependencies: 205
-- Data for Name: commande; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.commande (id_com, designation, prix, date_com, id_client) FROM stdin;
1	imperdiet	1	2021-02-21	1
2	imperdiet	2	2021-02-22	2
3	imperdiet	3	2021-02-23	3
4	imperdiet	4	2021-02-24	4
5	imperdiet	5	2021-02-25	5
6	imperdiet	6	2021-02-26	6
7	imperdiet	7	2021-02-27	7
8	imperdiet	8	2021-02-28	8
9	imperdiet	9	2021-02-28	9
10	imperdiet	10	2021-02-28	10
11	imperdiet	11	2021-02-03	11
12	imperdiet	12	2021-02-03	12
13	imperdiet	13	2021-02-04	13
14	imperdiet	14	2021-02-05	14
15	imperdiet	15	2021-02-06	15
16	imperdiet	16	2021-02-07	16
17	imperdiet	17	2021-02-08	17
18	imperdiet	18	2021-02-09	18
19	imperdiet	19	2021-02-10	19
20	imperdiet	20	2021-02-11	20
21	imperdiet	21	2021-02-12	21
22	imperdiet	22	2021-02-13	22
23	imperdiet	23	2021-02-14	23
24	imperdiet	24	2021-02-15	24
25	imperdiet	25	2021-02-16	25
26	imperdiet	26	2021-02-17	26
27	imperdiet	27	2021-02-18	27
28	imperdiet	28	2021-02-19	28
29	imperdiet	29	2021-02-20	29
30	imperdiet	30	2021-02-21	30
31	imperdiet	31	2021-02-22	31
32	imperdiet	32	2021-02-23	32
33	imperdiet	33	2021-02-24	33
34	imperdiet	34	2021-02-25	34
35	imperdiet	35	2021-02-26	35
36	imperdiet	36	2021-02-27	36
37	imperdiet	37	2021-02-28	37
38	imperdiet	38	2021-02-28	38
39	imperdiet	39	2021-02-02	39
40	imperdiet	40	2021-02-03	40
41	imperdiet	41	2021-02-04	41
42	imperdiet	42	2021-02-05	42
43	imperdiet	43	2021-02-06	43
44	imperdiet	44	2021-02-07	44
45	imperdiet	45	2021-02-08	45
46	imperdiet	46	2021-02-09	46
47	imperdiet	47	2021-02-10	47
48	imperdiet	48	2021-02-11	48
49	imperdiet	49	2021-02-12	49
50	imperdiet	50	2021-02-13	50
51	imperdiet	51	2021-02-14	51
52	imperdiet	52	2021-02-15	52
53	imperdiet	53	2021-02-16	53
54	imperdiet	54	2021-02-17	54
55	imperdiet	55	2021-02-18	55
56	imperdiet	56	2021-02-19	56
57	imperdiet	57	2021-02-20	57
58	imperdiet	58	2021-02-21	58
59	imperdiet	59	2021-02-22	59
60	imperdiet	60	2021-02-23	60
61	imperdiet	61	2021-02-24	61
62	imperdiet	62	2021-02-25	62
63	imperdiet	63	2021-02-26	63
64	imperdiet	64	2021-02-27	64
65	imperdiet	65	2021-02-28	65
66	imperdiet	66	2021-02-28	66
67	imperdiet	67	2021-05-02	67
68	imperdiet	68	2021-05-03	68
69	imperdiet	69	2021-05-04	69
70	imperdiet	70	2021-05-05	70
71	imperdiet	71	2021-05-06	71
72	imperdiet	72	2021-05-07	72
73	imperdiet	73	2021-05-08	73
74	imperdiet	74	2021-05-09	74
75	imperdiet	75	2021-05-10	75
76	imperdiet	76	2021-05-11	76
77	imperdiet	77	2021-05-12	77
78	imperdiet	78	2021-05-13	78
79	imperdiet	79	2021-05-14	79
80	imperdiet	80	2021-05-15	80
81	imperdiet	81	2021-05-16	81
82	imperdiet	82	2021-05-17	82
83	imperdiet	83	2021-05-18	83
84	imperdiet	84	2021-05-19	84
85	imperdiet	85	2021-05-20	85
86	imperdiet	86	2021-05-21	86
87	imperdiet	87	2021-05-22	87
88	imperdiet	88	2021-05-23	88
89	imperdiet	89	2021-05-24	89
90	imperdiet	90	2021-05-25	90
91	imperdiet	91	2021-05-26	91
92	imperdiet	92	2021-05-27	92
93	imperdiet	93	2021-05-28	93
94	imperdiet	94	2021-05-29	94
95	imperdiet	95	2021-06-01	95
96	imperdiet	96	2021-06-02	96
97	imperdiet	97	2021-06-03	97
98	imperdiet	98	2021-06-04	98
99	imperdiet	99	2021-06-05	99
100	imperdiet	100	2021-06-06	100
\.


--
-- TOC entry 2994 (class 0 OID 24608)
-- Dependencies: 207
-- Data for Name: livreur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.livreur (id_livreur, nom_prenom, montant_paye, date_liv, id_com) FROM stdin;
1	Anatol Fayne	1	2021-02-21	1
2	Barbabra Fricker	2	2021-02-22	2
3	Abigail Costell	3	2021-02-23	3
4	Candide Szach	4	2021-02-24	4
5	Rolf Kinvig	5	2021-02-25	5
6	Amalle McGorman	6	2021-02-26	6
7	Allegra Salan	7	2021-02-27	7
8	Giffy Golston	8	2021-02-28	8
9	Dianna Sipson	9	2021-02-28	9
10	Lucien Rosenblad	10	2021-02-28	10
11	Dasha Kidd	11	2021-02-03	11
12	Jessica Verheyden	12	2021-02-03	12
13	Phillipe Godier	13	2021-02-04	13
14	Carmina Vallow	14	2021-02-05	14
15	Lutero Horsell	15	2021-02-06	15
16	Lorinda Yates	16	2021-02-07	16
17	Tina Mavin	17	2021-02-08	17
18	Cullie Hiorn	18	2021-02-09	18
19	Saundra Plan	19	2021-02-10	19
20	Allina Church	20	2021-02-11	20
21	Christa Colson	21	2021-02-12	21
22	Pernell O'Kenny	22	2021-02-13	22
23	Viv Heddon	23	2021-02-14	23
24	Dynah Smallcomb	24	2021-02-15	24
25	Gigi Bukac	25	2021-02-16	25
26	Addie Andren	26	2021-02-17	26
27	Madel Ipsley	27	2021-02-18	27
28	Edna Breakey	28	2021-02-19	28
29	Kathy Derkes	29	2021-02-20	29
30	Thorn Adamowitz	30	2021-02-21	30
31	Sabina Foyston	31	2021-02-22	31
32	Imelda Redwall	32	2021-02-23	32
33	Jonell Southby	33	2021-02-24	33
34	Marena Cruse	34	2021-02-25	34
35	Philippa Caneo	35	2021-02-26	35
36	Maureen Semour	36	2021-02-27	36
37	Pooh Lackington	37	2021-02-28	37
38	Jephthah Eliasen	38	2021-02-28	38
39	Jackquelin Flaherty	39	2021-02-02	39
40	Byrle Van der Hoeven	40	2021-02-03	40
41	Bret Farrens	41	2021-02-04	41
42	Adan Care	42	2021-02-05	42
43	Dasha Oloshkin	43	2021-02-06	43
44	Carola Pealing	44	2021-02-07	44
45	Corbett Fountaine	45	2021-02-08	45
46	Lanny Capoun	46	2021-02-09	46
47	Netty Jakubovicz	47	2021-02-10	47
48	Zebedee Gounot	48	2021-02-11	48
49	Janey Lichfield	49	2021-02-12	49
50	Annecorinne Maleney	50	2021-02-13	50
51	Merrilee Kovalski	51	2021-02-14	51
52	Kenon Pyett	52	2021-02-15	52
53	Pat Kembrey	53	2021-02-16	53
54	Quillan Thorrold	54	2021-02-17	54
55	Constantin Wildbore	55	2021-02-18	55
56	Nat Calcott	56	2021-02-19	56
57	Gherardo Orrin	57	2021-02-20	57
58	Ginelle Jobson	58	2021-02-21	58
59	Daffi Fouracres	59	2021-02-22	59
60	Arly Tunmore	60	2021-02-23	60
61	Clarence Demeza	61	2021-02-24	61
62	Kennith Palfreeman	62	2021-02-25	62
63	Debby Baroc	63	2021-02-26	63
64	Collete Hazleton	64	2021-02-27	64
65	Ambros Lippiett	65	2021-02-28	65
66	Marjorie Russo	66	2021-02-28	66
67	Wells Leahair	67	2021-05-02	67
68	Karel Dunmore	68	2021-05-03	68
69	Danya Readwin	69	2021-05-04	69
70	Jerrome Rounding	70	2021-05-05	70
71	Camey Espadas	71	2021-05-06	71
72	Leia Skayman	72	2021-05-07	72
73	Othello Rennebeck	73	2021-05-08	73
74	Bentley Eccles	74	2021-05-09	74
75	Kath Stairs	75	2021-05-10	75
76	Vaclav Pristnor	76	2021-05-11	76
77	Quinton Duffett	77	2021-05-12	77
78	Clarabelle Prescote	78	2021-05-13	78
79	Brigham Paddingdon	79	2021-05-14	79
80	Raymund Vaun	80	2021-05-15	80
81	Averil Staden	81	2021-05-16	81
82	Sibella Heams	82	2021-05-17	82
83	Conroy Domenget	83	2021-05-18	83
84	Appolonia Arnefield	84	2021-05-19	84
85	Alric Varker	85	2021-05-20	85
86	Hunt Handyside	86	2021-05-21	86
87	Stewart Kitchenham	87	2021-05-22	87
88	Patrick Chellam	88	2021-05-23	88
89	Keriann Drohun	89	2021-05-24	89
90	Cristi Christian	90	2021-05-25	90
91	Sibylla Huller	91	2021-05-26	91
92	Kandace Rutland	92	2021-05-27	92
93	Stanly Dabourne	93	2021-05-28	93
94	Krystalle Winscum	94	2021-05-29	94
95	Albertina Pidwell	95	2021-06-01	95
96	Oswald Petric	96	2021-06-02	96
97	Bevin Laboune	97	2021-06-03	97
98	Leandra Kohen	98	2021-06-04	98
99	Siffre Dominick	99	2021-06-05	99
100	Martita Botler	100	2021-06-06	100
\.


--
-- TOC entry 3003 (class 0 OID 0)
-- Dependencies: 202
-- Name: client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_id_seq', 1, false);


--
-- TOC entry 3004 (class 0 OID 0)
-- Dependencies: 204
-- Name: commande_id_com_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.commande_id_com_seq', 1, false);


--
-- TOC entry 3005 (class 0 OID 0)
-- Dependencies: 206
-- Name: livreur_id_livreur_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.livreur_id_livreur_seq', 1, false);


--
-- TOC entry 2856 (class 2606 OID 24584)
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id_client);


--
-- TOC entry 2858 (class 2606 OID 24592)
-- Name: commande commande_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT commande_pkey PRIMARY KEY (id_com);


--
-- TOC entry 2860 (class 2606 OID 24613)
-- Name: livreur livreur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livreur
    ADD CONSTRAINT livreur_pkey PRIMARY KEY (id_livreur);


--
-- TOC entry 2861 (class 2606 OID 24593)
-- Name: commande commande_id_client_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT commande_id_client_fkey FOREIGN KEY (id_client) REFERENCES public.client(id_client);


--
-- TOC entry 2862 (class 2606 OID 24614)
-- Name: livreur livreur_id_com_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livreur
    ADD CONSTRAINT livreur_id_com_fkey FOREIGN KEY (id_com) REFERENCES public.commande(id_com);


-- Completed on 2022-01-28 09:57:21 WAT

--
-- PostgreSQL database dump complete
--

