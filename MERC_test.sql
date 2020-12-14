--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "user";

--
-- Name: meters; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.meters (
    id bigint NOT NULL,
    profile character varying,
    name character varying,
    number integer,
    account character varying,
    region_id integer,
    format integer,
    kt integer,
    inverted boolean,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    subregion character varying
);


ALTER TABLE public.meters OWNER TO "user";

--
-- Name: meters_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.meters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meters_id_seq OWNER TO "user";

--
-- Name: meters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.meters_id_seq OWNED BY public.meters.id;


--
-- Name: readings; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.readings (
    id bigint NOT NULL,
    meter_id integer,
    date timestamp without time zone,
    ad_p double precision,
    ad_m double precision,
    rd_p double precision,
    rd_m double precision,
    aec_p double precision,
    aec_m double precision,
    rec_p double precision,
    rec_m double precision,
    vph1 double precision,
    vph2 double precision,
    vph3 double precision,
    iph1 double precision,
    iph2 double precision,
    iph3 double precision,
    "cosPHI" double precision,
    "THD_U" double precision,
    "THD_I" double precision,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.readings OWNER TO "user";

--
-- Name: readings_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.readings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.readings_id_seq OWNER TO "user";

--
-- Name: readings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.readings_id_seq OWNED BY public.readings.id;


--
-- Name: regions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.regions (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.regions OWNER TO "user";

--
-- Name: regions_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.regions_id_seq OWNER TO "user";

--
-- Name: regions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "user";

--
-- Name: users; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO "user";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO "user";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: meters id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.meters ALTER COLUMN id SET DEFAULT nextval('public.meters_id_seq'::regclass);


--
-- Name: readings id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.readings ALTER COLUMN id SET DEFAULT nextval('public.readings_id_seq'::regclass);


--
-- Name: regions id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	test	2020-12-13 17:51:36.927963	2020-12-13 17:51:36.932599
schema_sha1	8251d7d9e05602321801721f7c8ebb81f52e3f8c	2020-12-13 17:51:36.936667	2020-12-13 17:51:36.936667
\.


--
-- Data for Name: meters; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.meters (id, profile, name, number, account, region_id, format, kt, inverted, created_at, updated_at, subregion) FROM stdin;
\.


--
-- Data for Name: readings; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.readings (id, meter_id, date, ad_p, ad_m, rd_p, rd_m, aec_p, aec_m, rec_p, rec_m, vph1, vph2, vph3, iph1, iph2, iph3, "cosPHI", "THD_U", "THD_I", created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: regions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.regions (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.schema_migrations (version) FROM stdin;
20201209155908
20201208145915
20201208161128
20201208181935
20201208182420
20201208223626
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
\.


--
-- Name: meters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.meters_id_seq', 1, false);


--
-- Name: readings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.readings_id_seq', 1, false);


--
-- Name: regions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.regions_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: meters meters_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.meters
    ADD CONSTRAINT meters_pkey PRIMARY KEY (id);


--
-- Name: readings readings_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.readings
    ADD CONSTRAINT readings_pkey PRIMARY KEY (id);


--
-- Name: regions regions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: user
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: user
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- PostgreSQL database dump complete
--

