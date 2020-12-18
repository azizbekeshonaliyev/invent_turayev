--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7
-- Dumped by pg_dump version 10.7

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
-- Name: action_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.action_events (
    id bigint NOT NULL,
    batch_id character(36) NOT NULL,
    user_id integer NOT NULL,
    name character varying(255) NOT NULL,
    actionable_type character varying(255) NOT NULL,
    actionable_id integer NOT NULL,
    target_type character varying(255) NOT NULL,
    target_id integer NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id integer,
    fields text NOT NULL,
    status character varying(25) DEFAULT 'running'::character varying NOT NULL,
    exception text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.action_events OWNER TO postgres;

--
-- Name: action_events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.action_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_events_id_seq OWNER TO postgres;

--
-- Name: action_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.action_events_id_seq OWNED BY public.action_events.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    product_id integer NOT NULL,
    title text NOT NULL,
    subtitle text NOT NULL,
    body text NOT NULL,
    published_on timestamp(0) without time zone NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: computers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.computers (
    id integer NOT NULL,
    model character varying(255),
    file text,
    quantity double precision,
    invertar character varying(255),
    management text,
    whose text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.computers OWNER TO postgres;

--
-- Name: computers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.computers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.computers_id_seq OWNER TO postgres;

--
-- Name: computers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.computers_id_seq OWNED BY public.computers.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    user_id integer NOT NULL,
    title text NOT NULL,
    subtitle text NOT NULL,
    body text NOT NULL,
    published_on timestamp(0) without time zone NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(255),
    "desc" text,
    image character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: action_events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.action_events ALTER COLUMN id SET DEFAULT nextval('public.action_events_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: computers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.computers ALTER COLUMN id SET DEFAULT nextval('public.computers_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: action_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.action_events (id, batch_id, user_id, name, actionable_type, actionable_id, target_type, target_id, model_type, model_id, fields, status, exception, created_at, updated_at) FROM stdin;
1	8ff462d9-b0f4-4183-82c0-a60120b10471	1	Create	App\\User	2	App\\User	2	App\\User	2		finished		2020-02-27 10:05:32	2020-02-27 10:05:32
2	8ff46321-cdd7-463d-aa98-8189afcf88dd	1	Update	App\\User	2	App\\User	2	App\\User	2		finished		2020-02-27 10:06:19	2020-02-27 10:06:19
3	8ff46a00-cf25-4497-bc1c-5c58fbb2a397	1	Create	App\\Product	1	App\\Product	1	App\\Product	1		finished		2020-02-27 10:25:32	2020-02-27 10:25:32
4	8ff46a3f-342d-4e99-afca-45a531c091d6	1	Create	App\\Product	2	App\\Product	2	App\\Product	2		finished		2020-02-27 10:26:13	2020-02-27 10:26:13
5	8ff4a82f-f115-47bb-8fcd-3b413676f3af	1	Create	App\\Post	1	App\\Post	1	App\\Post	1		finished		2020-02-27 13:19:25	2020-02-27 13:19:25
6	8ff4a9ae-19f7-4c77-b809-adc9868dfea6	1	Create	App\\Comment	1	App\\Comment	1	App\\Comment	1		finished		2020-02-27 13:23:35	2020-02-27 13:23:35
7	90153985-e856-4109-bc38-6748bf4ececb	1	Create	App\\Computer	1	App\\Computer	1	App\\Computer	1		finished		2020-03-14 17:52:17	2020-03-14 17:52:17
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments (id, product_id, title, subtitle, body, published_on, created_at, updated_at) FROM stdin;
1	2	dsadsa	sadsadsa	dsadsadada	2020-02-27 07:00:00	2020-02-27 13:23:34	2020-02-27 13:23:34
\.


--
-- Data for Name: computers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.computers (id, model, file, quantity, invertar, management, whose, created_at, updated_at) FROM stdin;
1	Computer-1	ufpLYVpJ2cT2UUYu4cSYtHb8pvJxP2E0xbqW1lPS.pdf	10	model-1	Test-1	test-1	2020-03-14 17:52:17	2020-03-14 17:52:17
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2018_01_01_000000_create_action_events_table	1
4	2019_08_19_000000_create_failed_jobs_table	1
5	2020_02_27_101105_create_posts_table	2
6	2020_02_27_101817_create_products_table	3
7	2020_02_27_132015_create_comments_table	4
10	2020_03_14_170942_create_computers_table	5
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_resets (email, token, created_at) FROM stdin;
1996azizbekeshonaliyev@gmail.com	$2y$10$kD6nCGNjHU4FqK9GJJU4TO0ksNROroz/qlGB6CQgsB/a7mBUY4IvO	2020-02-27 10:30:52
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, user_id, title, subtitle, body, published_on, created_at, updated_at) FROM stdin;
1	1	jhgjhgj	jhgjhgjhgjhg	jhgjhgjhgj	2020-02-27 07:00:00	2020-02-27 13:19:24	2020-02-27 13:19:24
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, "desc", image, created_at, updated_at) FROM stdin;
1	Test product	dsadadsadadsad	tfAGSfZIRmr7HMZqQLLqwFbSSYVHW98CCULMItC9.jpeg	2020-02-27 10:25:32	2020-02-27 10:25:32
2	sadasdad	adada	gFhOLn1zXcJrpvvhjXEypOmLj5uwHY2L7wRWFvAO.jpeg	2020-02-27 10:26:13	2020-02-27 10:26:13
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
2	Test user	test@mail.ru	\N	$2y$10$g14wAkJADawsgcqUif4w2.dcSEqmD83AzUz1.xKME3dOBTPClGRD6	\N	2020-02-27 10:05:32	2020-02-27 10:05:32
1	Azizbek	1996azizbekeshonaliyev@gmail.com	\N	$2y$10$VkhQGT13rWX2RXR0HhSJ7Oq6EpPccvreuUDVWQ0Wen0kZS9TaSsye	nnZlKx9XCHnS6BUzXdzcdqbaMH1321xWmvaRsFIrWvKLRrzM3vFBc3F8DM4S	2020-02-27 08:08:44	2020-02-27 08:08:44
\.


--
-- Name: action_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.action_events_id_seq', 7, true);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comments_id_seq', 1, true);


--
-- Name: computers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.computers_id_seq', 1, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 10, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 2, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: action_events action_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.action_events
    ADD CONSTRAINT action_events_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: computers computers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.computers
    ADD CONSTRAINT computers_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: action_events_actionable_type_actionable_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX action_events_actionable_type_actionable_id_index ON public.action_events USING btree (actionable_type, actionable_id);


--
-- Name: action_events_batch_id_model_type_model_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX action_events_batch_id_model_type_model_id_index ON public.action_events USING btree (batch_id, model_type, model_id);


--
-- Name: action_events_user_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX action_events_user_id_index ON public.action_events USING btree (user_id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- PostgreSQL database dump complete
--

