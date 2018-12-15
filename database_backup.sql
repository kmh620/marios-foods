--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
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


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: khockman
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO khockman;

--
-- Name: foods; Type: TABLE; Schema: public; Owner: khockman
--

CREATE TABLE public.foods (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    price integer,
    origin character varying
);


ALTER TABLE public.foods OWNER TO khockman;

--
-- Name: foods_id_seq; Type: SEQUENCE; Schema: public; Owner: khockman
--

CREATE SEQUENCE public.foods_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.foods_id_seq OWNER TO khockman;

--
-- Name: foods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khockman
--

ALTER SEQUENCE public.foods_id_seq OWNED BY public.foods.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: khockman
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    author character varying,
    content_body character varying,
    rating integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    food_id integer
);


ALTER TABLE public.reviews OWNER TO khockman;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: khockman
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO khockman;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khockman
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: khockman
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO khockman;

--
-- Name: foods id; Type: DEFAULT; Schema: public; Owner: khockman
--

ALTER TABLE ONLY public.foods ALTER COLUMN id SET DEFAULT nextval('public.foods_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: khockman
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: khockman
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2018-12-14 16:33:26.861778	2018-12-14 16:33:26.861778
\.


--
-- Data for Name: foods; Type: TABLE DATA; Schema: public; Owner: khockman
--

COPY public.foods (id, name, created_at, updated_at, price, origin) FROM stdin;
12	Mustard Seed	2018-12-14 21:38:02.701278	2018-12-14 21:38:02.701278	76	Kiribati
13	Kohlrabi	2018-12-14 21:38:02.745897	2018-12-14 21:38:02.745897	39	Oman
14	Cashews	2018-12-14 21:38:02.749341	2018-12-14 21:38:02.749341	51	Cuba
15	Sake	2018-12-14 21:38:02.751882	2018-12-14 21:38:02.751882	94	Dominica
16	Vegetable Oil	2018-12-14 21:38:02.755822	2018-12-14 21:38:02.755822	78	Dominican Republic
17	Sausages	2018-12-14 21:38:02.758309	2018-12-14 21:38:02.758309	54	Haiti
18	Cauliflower	2018-12-14 21:38:02.761092	2018-12-14 21:38:02.761092	58	Central African Republic
19	Green Tea	2018-12-14 21:38:02.763674	2018-12-14 21:38:02.763674	10	Rwanda
20	Sake	2018-12-14 21:38:02.765985	2018-12-14 21:38:02.765985	97	Heard Island and McDonald Islands
21	Haloumi	2018-12-14 21:38:02.768247	2018-12-14 21:38:02.768247	99	Serbia
22	Fish and Chips	2018-12-14 21:38:02.775226	2018-12-14 21:38:02.775226	42	Northern Mariana Islands
23	Salmon Nigiri	2018-12-14 21:38:02.777668	2018-12-14 21:38:02.777668	92	Guadeloupe
24	California Maki	2018-12-14 21:38:02.779973	2018-12-14 21:38:02.779973	85	Norfolk Island
25	Pappardelle alla Bolognese	2018-12-14 21:38:02.782413	2018-12-14 21:38:02.782413	94	Zimbabwe
26	Pizza	2018-12-14 21:38:02.784688	2018-12-14 21:38:02.784688	60	Saint Martin
27	Pizza	2018-12-14 21:38:02.787023	2018-12-14 21:38:02.787023	45	Maldives
28	Pasta Carbonara	2018-12-14 21:38:02.789362	2018-12-14 21:38:02.789362	27	Cote d'Ivoire
29	Chilli con Carne	2018-12-14 21:38:02.791963	2018-12-14 21:38:02.791963	86	Moldova
30	Philadelphia Maki	2018-12-14 21:38:02.794318	2018-12-14 21:38:02.794318	67	Slovakia (Slovak Republic)
31	Ebiten maki	2018-12-14 21:38:02.796801	2018-12-14 21:38:02.796801	86	New Zealand
32	Tuna Sashimi	2018-12-14 21:38:02.799254	2018-12-14 21:38:02.799254	90	Lebanon
33	Fettuccine Alfredo	2018-12-14 21:38:02.801968	2018-12-14 21:38:02.801968	81	Norway
34	Ebiten maki	2018-12-14 21:38:02.804381	2018-12-14 21:38:02.804381	49	Saint Pierre and Miquelon
35	Fish and Chips	2018-12-14 21:38:02.806713	2018-12-14 21:38:02.806713	55	Georgia
36	Tiramisù	2018-12-14 21:38:02.810275	2018-12-14 21:38:02.810275	4	Finland
37	Philadelphia Maki	2018-12-14 21:38:02.813394	2018-12-14 21:38:02.813394	91	Wallis and Futuna
38	Caesar Salad	2018-12-14 21:38:02.816784	2018-12-14 21:38:02.816784	3	Eritrea
39	French Fries with Sausages	2018-12-14 21:38:02.819033	2018-12-14 21:38:02.819033	69	Ecuador
40	Pork Sausage Roll	2018-12-14 21:38:02.821574	2018-12-14 21:38:02.821574	100	Nepal
41	Fettuccine Alfredo	2018-12-14 21:38:02.824266	2018-12-14 21:38:02.824266	23	Swaziland
42	China Star	2018-12-14 21:38:02.827659	2018-12-14 21:38:02.827659	3	Bahamas
43	Mulled Cider Spices	2018-12-14 21:38:02.829941	2018-12-14 21:38:02.829941	42	Cambodia
44	Mace Ground	2018-12-14 21:38:02.834521	2018-12-14 21:38:02.834521	97	Papua New Guinea
45	Mint	2018-12-14 21:38:02.839221	2018-12-14 21:38:02.839221	57	Bahamas
46	Cloves Ground	2018-12-14 21:38:02.841734	2018-12-14 21:38:02.841734	67	Sao Tome and Principe
47	Peppercorns Cracked Black	2018-12-14 21:38:02.8439	2018-12-14 21:38:02.8439	41	United Kingdom
48	Lavender	2018-12-14 21:38:02.846021	2018-12-14 21:38:02.846021	8	Christmas Island
49	Allspice Whole	2018-12-14 21:38:02.848843	2018-12-14 21:38:02.848843	93	Taiwan
50	Nigella	2018-12-14 21:38:02.850968	2018-12-14 21:38:02.850968	15	Malawi
51	German Chamomile	2018-12-14 21:38:02.85338	2018-12-14 21:38:02.85338	57	Haiti
52	Oregano	2018-12-14 21:38:02.855977	2018-12-14 21:38:02.855977	59	Democratic People's Republic of Korea
53	Baharat	2018-12-14 21:38:02.858509	2018-12-14 21:38:02.858509	62	France
54	Coriander Leaf	2018-12-14 21:38:02.860836	2018-12-14 21:38:02.860836	27	Liechtenstein
55	Kaffir Leaves	2018-12-14 21:38:02.866086	2018-12-14 21:38:02.866086	85	Zimbabwe
56	Anise Star	2018-12-14 21:38:02.869532	2018-12-14 21:38:02.869532	50	Guernsey
57	Orange Zest	2018-12-14 21:38:02.872311	2018-12-14 21:38:02.872311	70	United States Minor Outlying Islands
58	Herbes de Provence	2018-12-14 21:38:02.874616	2018-12-14 21:38:02.874616	15	Palestinian Territory
59	Curry Hot	2018-12-14 21:38:02.877275	2018-12-14 21:38:02.877275	24	Fiji
60	Baharat	2018-12-14 21:38:02.879653	2018-12-14 21:38:02.879653	53	Palestinian Territory
61	Cajun Seasoning	2018-12-14 21:38:02.884044	2018-12-14 21:38:02.884044	23	French Polynesia
62	pickled pill bugs	2018-12-14 21:56:57.818866	2018-12-14 21:56:57.818866	5	Spain
63	apples	2018-12-14 22:07:15.744787	2018-12-14 22:07:15.744787	21	United States
64	pasta	2018-12-14 22:41:25.602044	2018-12-14 22:41:25.602044	100	United States
65	Broccoli	2018-12-14 22:46:25.060788	2018-12-14 22:46:25.060788	100	United States
66	this is food	2018-12-14 23:48:24.98438	2018-12-14 23:48:24.98438	8	United States
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: khockman
--

COPY public.reviews (id, author, content_body, rating, created_at, updated_at, food_id) FROM stdin;
10	El Greco	Delectatio in cotidie. Debitis cauda una. Laudant.	1	2018-12-14 21:38:02.90211	2018-12-14 21:38:02.90211	15
11	Ansel Adams	Vis speculum ut. Quos claudeo temperantia. Crur a.	0	2018-12-14 21:38:02.949745	2018-12-14 21:38:02.949745	15
12	Kandinsky	Virga stipes tibi. Adsum conforto ascit. Carus ac.	2	2018-12-14 21:38:02.960355	2018-12-14 21:38:02.960355	15
14	Botticelli	Patior molestiae strues. Viriliter cribro tempera.	0	2018-12-14 21:38:03.013074	2018-12-14 21:38:03.013074	15
15	Botticelli	Demitto delibero rem. Pax supra ipsum. Sursum rer.	0	2018-12-14 21:38:03.019607	2018-12-14 21:38:03.019607	15
16	Warhol	Delego tamisium solutio. Adeptio ducimus praesent.	0	2018-12-14 21:38:03.026163	2018-12-14 21:38:03.026163	15
17	Warhol	Canto audacia demum. Trado virtus cognatus. Volup.	2	2018-12-14 21:38:03.031847	2018-12-14 21:38:03.031847	15
18	Kandinsky	Aspernatur tabella tricesimus. Beneficium abduco .	1	2018-12-14 21:38:03.036744	2018-12-14 21:38:03.036744	21
19	Kahlo	Vigilo et credo. Absens coadunatio depono. Vultuo.	2	2018-12-14 21:38:03.04211	2018-12-14 21:38:03.04211	21
20	Rembrandt	Confero abscido aut. Currus vulnero tabula. Vereo.	5	2018-12-14 21:38:03.047138	2018-12-14 21:38:03.047138	21
21	Warhol	Vaco tam textor. Laboriosam commemoro abbas. Volu.	5	2018-12-14 21:38:03.051901	2018-12-14 21:38:03.051901	14
22	Botticelli	Non volubilis sollicito. Timor aestas appositus. .	3	2018-12-14 21:38:03.057233	2018-12-14 21:38:03.057233	14
23	Monet	Ipsum adeptio cena. Aequus amoveo accusator. Pect.	1	2018-12-14 21:38:03.062543	2018-12-14 21:38:03.062543	14
25	Diego Rivera	Censura amaritudo triduana. Spargo caries caterva.	0	2018-12-14 21:38:03.07242	2018-12-14 21:38:03.07242	12
26	Manet	Deleo dolores omnis. Provident vito earum. Sunt t.	3	2018-12-14 21:38:03.07772	2018-12-14 21:38:03.07772	12
27	Cezanne	Templum nam comis. Degusto paulatim studio. Coniu.	3	2018-12-14 21:38:03.082962	2018-12-14 21:38:03.082962	12
29	katrina	this is great	5	2018-12-14 22:42:21.642589	2018-12-14 22:42:21.642589	64
30	reviewer	its ok	5	2018-12-14 22:42:33.831027	2018-12-14 22:42:33.831027	64
31	katrina	this is great	5	2018-12-14 22:46:34.866349	2018-12-14 22:46:34.866349	65
32	katrina	its ok	3	2018-12-14 23:30:06.315759	2018-12-14 23:30:06.315759	25
33	new 	yumm	3	2018-12-14 23:40:53.044349	2018-12-14 23:40:53.044349	25
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: khockman
--

COPY public.schema_migrations (version) FROM stdin;
20181214163150
20181214174505
\.


--
-- Name: foods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khockman
--

SELECT pg_catalog.setval('public.foods_id_seq', 66, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khockman
--

SELECT pg_catalog.setval('public.reviews_id_seq', 33, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: khockman
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: foods foods_pkey; Type: CONSTRAINT; Schema: public; Owner: khockman
--

ALTER TABLE ONLY public.foods
    ADD CONSTRAINT foods_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: khockman
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: khockman
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

