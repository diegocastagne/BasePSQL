--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
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
-- Name: adminusers; Type: TABLE; Schema: public; Owner: estrella
--

CREATE TABLE public.adminusers (
    adminuser_id integer NOT NULL,
    name text,
    last_name text,
    email text,
    password text
);


ALTER TABLE public.adminusers OWNER TO estrella;

--
-- Name: adminusers_adminuser_id_seq; Type: SEQUENCE; Schema: public; Owner: estrella
--

CREATE SEQUENCE public.adminusers_adminuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminusers_adminuser_id_seq OWNER TO estrella;

--
-- Name: adminusers_adminuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estrella
--

ALTER SEQUENCE public.adminusers_adminuser_id_seq OWNED BY public.adminusers.adminuser_id;


--
-- Name: archive; Type: TABLE; Schema: public; Owner: estrella
--

CREATE TABLE public.archive (
    id integer NOT NULL,
    "createdAt" bigint,
    "fromModel" text,
    "originalRecord" json,
    "originalRecordId" json
);


ALTER TABLE public.archive OWNER TO estrella;

--
-- Name: archive_id_seq; Type: SEQUENCE; Schema: public; Owner: estrella
--

CREATE SEQUENCE public.archive_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.archive_id_seq OWNER TO estrella;

--
-- Name: archive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estrella
--

ALTER SEQUENCE public.archive_id_seq OWNED BY public.archive.id;


--
-- Name: bracelets; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.bracelets (
    bracelet_id integer NOT NULL,
    active_at timestamp without time zone,
    status boolean,
    ticket_id integer,
    tour_id integer
);


ALTER TABLE public.bracelets OWNER TO azul;

--
-- Name: bracelets_bracelet_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.bracelets_bracelet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bracelets_bracelet_id_seq OWNER TO azul;

--
-- Name: bracelets_bracelet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.bracelets_bracelet_id_seq OWNED BY public.bracelets.bracelet_id;


--
-- Name: buses; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.buses (
    bus_id integer NOT NULL,
    capacity integer,
    tour_id integer,
    mural_id integer
);


ALTER TABLE public.buses OWNER TO azul;

--
-- Name: buses_bus_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.buses_bus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.buses_bus_id_seq OWNER TO azul;

--
-- Name: buses_bus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.buses_bus_id_seq OWNED BY public.buses.bus_id;


--
-- Name: companies; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.companies (
    company_id integer NOT NULL,
    name text,
    full_name text,
    number integer,
    street character varying(30),
    postal_code integer,
    rfc character varying(16),
    ieps real,
    iva real,
    lat real,
    lng real
);


ALTER TABLE public.companies OWNER TO azul;

--
-- Name: companies_company_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.companies_company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_company_id_seq OWNER TO azul;

--
-- Name: companies_company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.companies_company_id_seq OWNED BY public.companies.company_id;


--
-- Name: date_hour; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.date_hour (
    date_hour_id integer NOT NULL,
    date_id integer,
    hour_id integer
);


ALTER TABLE public.date_hour OWNER TO azul;

--
-- Name: date_hour_date_hour_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.date_hour_date_hour_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.date_hour_date_hour_id_seq OWNER TO azul;

--
-- Name: date_hour_date_hour_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.date_hour_date_hour_id_seq OWNED BY public.date_hour.date_hour_id;


--
-- Name: dates; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.dates (
    date_id integer NOT NULL,
    start_date date,
    end_date date,
    service boolean
);


ALTER TABLE public.dates OWNER TO azul;

--
-- Name: dates_date_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.dates_date_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dates_date_id_seq OWNER TO azul;

--
-- Name: dates_date_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.dates_date_id_seq OWNED BY public.dates.date_id;


--
-- Name: hours; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.hours (
    hour_id integer NOT NULL,
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    frequency time without time zone
);


ALTER TABLE public.hours OWNER TO azul;

--
-- Name: hours_hour_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.hours_hour_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hours_hour_id_seq OWNER TO azul;

--
-- Name: hours_hour_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.hours_hour_id_seq OWNED BY public.hours.hour_id;


--
-- Name: images; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.images (
    image_id integer NOT NULL,
    image_url text,
    description text
);


ALTER TABLE public.images OWNER TO azul;

--
-- Name: images_image_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.images_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_image_id_seq OWNER TO azul;

--
-- Name: images_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.images_image_id_seq OWNED BY public.images.image_id;


--
-- Name: markers; Type: TABLE; Schema: public; Owner: estrella
--

CREATE TABLE public.markers (
    markers_id integer NOT NULL,
    tour_id integer,
    lat real,
    lng real,
    description text,
    name text
);


ALTER TABLE public.markers OWNER TO estrella;

--
-- Name: markers_markers_id_seq; Type: SEQUENCE; Schema: public; Owner: estrella
--

CREATE SEQUENCE public.markers_markers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.markers_markers_id_seq OWNER TO estrella;

--
-- Name: markers_markers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estrella
--

ALTER SEQUENCE public.markers_markers_id_seq OWNED BY public.markers.markers_id;


--
-- Name: murals; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.murals (
    mural_id integer NOT NULL,
    title text,
    name text,
    last_name text,
    description text
);


ALTER TABLE public.murals OWNER TO azul;

--
-- Name: murals_mural_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.murals_mural_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.murals_mural_id_seq OWNER TO azul;

--
-- Name: murals_mural_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.murals_mural_id_seq OWNED BY public.murals.mural_id;


--
-- Name: narratives; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.narratives (
    narrative_id integer NOT NULL,
    audio_url text
);


ALTER TABLE public.narratives OWNER TO azul;

--
-- Name: narratives_narrative_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.narratives_narrative_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.narratives_narrative_id_seq OWNER TO azul;

--
-- Name: narratives_narrative_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.narratives_narrative_id_seq OWNED BY public.narratives.narrative_id;


--
-- Name: place_image; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.place_image (
    place_image_id integer NOT NULL,
    place_id integer,
    image_id integer
);


ALTER TABLE public.place_image OWNER TO azul;

--
-- Name: place_image_place_image_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.place_image_place_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.place_image_place_image_id_seq OWNER TO azul;

--
-- Name: place_image_place_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.place_image_place_image_id_seq OWNED BY public.place_image.place_image_id;


--
-- Name: place_tour; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.place_tour (
    place_tour_id integer NOT NULL,
    tour_id integer,
    place_id integer
);


ALTER TABLE public.place_tour OWNER TO azul;

--
-- Name: place_tour_place_tour_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.place_tour_place_tour_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.place_tour_place_tour_id_seq OWNER TO azul;

--
-- Name: place_tour_place_tour_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.place_tour_place_tour_id_seq OWNED BY public.place_tour.place_tour_id;


--
-- Name: place_types; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.place_types (
    place_type_id integer NOT NULL,
    name text
);


ALTER TABLE public.place_types OWNER TO azul;

--
-- Name: place_types_place_type_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.place_types_place_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.place_types_place_type_id_seq OWNER TO azul;

--
-- Name: place_types_place_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.place_types_place_type_id_seq OWNED BY public.place_types.place_type_id;


--
-- Name: places; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.places (
    place_id integer NOT NULL,
    name text,
    lng real,
    lat real,
    place_type_id integer,
    description text,
    narrative_id integer
);


ALTER TABLE public.places OWNER TO azul;

--
-- Name: places_place_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.places_place_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.places_place_id_seq OWNER TO azul;

--
-- Name: places_place_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.places_place_id_seq OWNED BY public.places.place_id;


--
-- Name: prices; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.prices (
    price_id integer NOT NULL,
    price_amount real,
    tour_id integer,
    ticket_type_id integer
);


ALTER TABLE public.prices OWNER TO azul;

--
-- Name: prices_price_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.prices_price_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prices_price_id_seq OWNER TO azul;

--
-- Name: prices_price_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.prices_price_id_seq OWNED BY public.prices.price_id;


--
-- Name: purchases; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.purchases (
    purchase_id integer NOT NULL,
    sub_total real,
    total real,
    company_id integer,
    user_id integer,
    created_at date
);


ALTER TABLE public.purchases OWNER TO azul;

--
-- Name: purchases_purchase_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.purchases_purchase_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchases_purchase_id_seq OWNER TO azul;

--
-- Name: purchases_purchase_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.purchases_purchase_id_seq OWNED BY public.purchases.purchase_id;


--
-- Name: stops; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.stops (
    stop_id integer NOT NULL,
    name text,
    lat real,
    lng real,
    tour_id integer,
    description text
);


ALTER TABLE public.stops OWNER TO azul;

--
-- Name: stops_stop_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.stops_stop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stops_stop_id_seq OWNER TO azul;

--
-- Name: stops_stop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.stops_stop_id_seq OWNED BY public.stops.stop_id;


--
-- Name: testapi; Type: TABLE; Schema: public; Owner: estrella
--

CREATE TABLE public.testapi (
    "createdAt" bigint,
    "updatedAt" bigint,
    id integer NOT NULL
);


ALTER TABLE public.testapi OWNER TO estrella;

--
-- Name: testapi_id_seq; Type: SEQUENCE; Schema: public; Owner: estrella
--

CREATE SEQUENCE public.testapi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.testapi_id_seq OWNER TO estrella;

--
-- Name: testapi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estrella
--

ALTER SEQUENCE public.testapi_id_seq OWNED BY public.testapi.id;


--
-- Name: ticket_types; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.ticket_types (
    ticket_type_id integer NOT NULL,
    name character varying(20)
);


ALTER TABLE public.ticket_types OWNER TO azul;

--
-- Name: ticket_types_ticket_type_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.ticket_types_ticket_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticket_types_ticket_type_id_seq OWNER TO azul;

--
-- Name: ticket_types_ticket_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.ticket_types_ticket_type_id_seq OWNED BY public.ticket_types.ticket_type_id;


--
-- Name: tickets; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.tickets (
    ticket_id integer NOT NULL,
    purchase_id integer,
    price_id integer,
    name text,
    last_name text,
    age integer,
    date_tour date,
    qr_code text,
    sub_total real,
    created_at timestamp without time zone
);


ALTER TABLE public.tickets OWNER TO azul;

--
-- Name: tickets_ticket_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.tickets_ticket_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tickets_ticket_id_seq OWNER TO azul;

--
-- Name: tickets_ticket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.tickets_ticket_id_seq OWNED BY public.tickets.ticket_id;


--
-- Name: times; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.times (
    time_id integer NOT NULL,
    tour_id integer,
    date_hour_id integer
);


ALTER TABLE public.times OWNER TO azul;

--
-- Name: times_time_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.times_time_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.times_time_id_seq OWNER TO azul;

--
-- Name: times_time_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.times_time_id_seq OWNED BY public.times.time_id;


--
-- Name: tours; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.tours (
    tour_id integer NOT NULL,
    name text,
    image_id integer,
    description text
);


ALTER TABLE public.tours OWNER TO azul;

--
-- Name: tours_tour_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.tours_tour_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tours_tour_id_seq OWNER TO azul;

--
-- Name: tours_tour_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.tours_tour_id_seq OWNED BY public.tours.tour_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: azul
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name text,
    last_name text,
    email text,
    brithdate date,
    password text,
    postal_code integer,
    phone_number character varying(15)
);


ALTER TABLE public.users OWNER TO azul;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: azul
--

CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO azul;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azul
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: estrella
--

CREATE TABLE public.usuario (
    "createdAt" bigint,
    "updatedAt" bigint,
    usuario_id integer NOT NULL,
    name text,
    last_name text,
    email text,
    birthdate date,
    password text,
    "postal:code" real,
    phone_number text
);


ALTER TABLE public.usuario OWNER TO estrella;

--
-- Name: usuario_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: estrella
--

CREATE SEQUENCE public.usuario_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_usuario_id_seq OWNER TO estrella;

--
-- Name: usuario_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estrella
--

ALTER SEQUENCE public.usuario_usuario_id_seq OWNED BY public.usuario.usuario_id;


--
-- Name: adminuser_id; Type: DEFAULT; Schema: public; Owner: estrella
--

ALTER TABLE ONLY public.adminusers ALTER COLUMN adminuser_id SET DEFAULT nextval('public.adminusers_adminuser_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: estrella
--

ALTER TABLE ONLY public.archive ALTER COLUMN id SET DEFAULT nextval('public.archive_id_seq'::regclass);


--
-- Name: bracelet_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.bracelets ALTER COLUMN bracelet_id SET DEFAULT nextval('public.bracelets_bracelet_id_seq'::regclass);


--
-- Name: bus_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.buses ALTER COLUMN bus_id SET DEFAULT nextval('public.buses_bus_id_seq'::regclass);


--
-- Name: company_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.companies ALTER COLUMN company_id SET DEFAULT nextval('public.companies_company_id_seq'::regclass);


--
-- Name: date_hour_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.date_hour ALTER COLUMN date_hour_id SET DEFAULT nextval('public.date_hour_date_hour_id_seq'::regclass);


--
-- Name: date_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.dates ALTER COLUMN date_id SET DEFAULT nextval('public.dates_date_id_seq'::regclass);


--
-- Name: hour_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.hours ALTER COLUMN hour_id SET DEFAULT nextval('public.hours_hour_id_seq'::regclass);


--
-- Name: image_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.images ALTER COLUMN image_id SET DEFAULT nextval('public.images_image_id_seq'::regclass);


--
-- Name: markers_id; Type: DEFAULT; Schema: public; Owner: estrella
--

ALTER TABLE ONLY public.markers ALTER COLUMN markers_id SET DEFAULT nextval('public.markers_markers_id_seq'::regclass);


--
-- Name: mural_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.murals ALTER COLUMN mural_id SET DEFAULT nextval('public.murals_mural_id_seq'::regclass);


--
-- Name: narrative_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.narratives ALTER COLUMN narrative_id SET DEFAULT nextval('public.narratives_narrative_id_seq'::regclass);


--
-- Name: place_image_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.place_image ALTER COLUMN place_image_id SET DEFAULT nextval('public.place_image_place_image_id_seq'::regclass);


--
-- Name: place_tour_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.place_tour ALTER COLUMN place_tour_id SET DEFAULT nextval('public.place_tour_place_tour_id_seq'::regclass);


--
-- Name: place_type_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.place_types ALTER COLUMN place_type_id SET DEFAULT nextval('public.place_types_place_type_id_seq'::regclass);


--
-- Name: place_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.places ALTER COLUMN place_id SET DEFAULT nextval('public.places_place_id_seq'::regclass);


--
-- Name: price_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.prices ALTER COLUMN price_id SET DEFAULT nextval('public.prices_price_id_seq'::regclass);


--
-- Name: purchase_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.purchases ALTER COLUMN purchase_id SET DEFAULT nextval('public.purchases_purchase_id_seq'::regclass);


--
-- Name: stop_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.stops ALTER COLUMN stop_id SET DEFAULT nextval('public.stops_stop_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: estrella
--

ALTER TABLE ONLY public.testapi ALTER COLUMN id SET DEFAULT nextval('public.testapi_id_seq'::regclass);


--
-- Name: ticket_type_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.ticket_types ALTER COLUMN ticket_type_id SET DEFAULT nextval('public.ticket_types_ticket_type_id_seq'::regclass);


--
-- Name: ticket_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.tickets ALTER COLUMN ticket_id SET DEFAULT nextval('public.tickets_ticket_id_seq'::regclass);


--
-- Name: time_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.times ALTER COLUMN time_id SET DEFAULT nextval('public.times_time_id_seq'::regclass);


--
-- Name: tour_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.tours ALTER COLUMN tour_id SET DEFAULT nextval('public.tours_tour_id_seq'::regclass);


--
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: usuario_id; Type: DEFAULT; Schema: public; Owner: estrella
--

ALTER TABLE ONLY public.usuario ALTER COLUMN usuario_id SET DEFAULT nextval('public.usuario_usuario_id_seq'::regclass);


--
-- Data for Name: adminusers; Type: TABLE DATA; Schema: public; Owner: estrella
--

COPY public.adminusers (adminuser_id, name, last_name, email, password) FROM stdin;
1	Diego	Castagne	diego.castagne@gmail.com	YWVzLTI1Ni1nY20kJGRlZmF1bHQ=$UNkdctvhT+OXXGBT$gEgWAIAs8dw=$KPEhD0XS5OnnXcgJUbmVlQ
\.


--
-- Name: adminusers_adminuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estrella
--

SELECT pg_catalog.setval('public.adminusers_adminuser_id_seq', 1, true);


--
-- Data for Name: archive; Type: TABLE DATA; Schema: public; Owner: estrella
--

COPY public.archive (id, "createdAt", "fromModel", "originalRecord", "originalRecordId") FROM stdin;
\.


--
-- Name: archive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estrella
--

SELECT pg_catalog.setval('public.archive_id_seq', 1, false);


--
-- Data for Name: bracelets; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.bracelets (bracelet_id, active_at, status, ticket_id, tour_id) FROM stdin;
\.


--
-- Name: bracelets_bracelet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.bracelets_bracelet_id_seq', 40, true);


--
-- Data for Name: buses; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.buses (bus_id, capacity, tour_id, mural_id) FROM stdin;
54	500	1	3
53	501	1	3
55	60	2	3
68	10	3	3
\.


--
-- Name: buses_bus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.buses_bus_id_seq', 68, true);


--
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.companies (company_id, name, full_name, number, street, postal_code, rfc, ieps, iva, lat, lng) FROM stdin;
1	Estrella_Roja	Estrella_Roja_SA_de_CV	404	Nombre_de_calle	72190	CAADFDSFWEG56	13	14	32	15
11	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
12	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
13	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
14	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
15	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
16	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
17	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
18	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
19	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
20	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
21	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
22	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
23	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
24	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
25	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
26	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
27	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
28	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
29	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
30	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
31	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
32	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
33	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
34	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
35	Unit	Test	2220	unittest	72000	CAAD970714BT5	15	15	29	19
2	Unit	update	222	unittest	72000	CAAD9707	15	15	29	19
\.


--
-- Name: companies_company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.companies_company_id_seq', 35, true);


--
-- Data for Name: date_hour; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.date_hour (date_hour_id, date_id, hour_id) FROM stdin;
1	1	1
11	1	1
12	1	1
13	1	1
14	1	1
15	1	1
16	1	1
17	1	1
18	1	1
19	1	1
20	1	1
21	1	1
22	1	1
23	1	1
24	1	1
25	1	1
26	1	1
27	1	1
28	1	1
29	1	1
30	1	1
31	1	1
32	1	1
33	1	1
34	1	1
35	1	1
36	1	1
37	1	1
38	1	1
39	1	1
40	1	1
41	1	1
42	1	1
2	2	2
\.


--
-- Name: date_hour_date_hour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.date_hour_date_hour_id_seq', 42, true);


--
-- Data for Name: dates; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.dates (date_id, start_date, end_date, service) FROM stdin;
2	2018-11-05	2018-11-20	t
3	2018-12-06	2018-12-07	f
4	2018-11-23	2018-11-25	t
5	2018-11-23	2018-11-25	t
13	2018-11-23	2018-11-25	t
14	2018-11-23	2018-11-25	t
15	2018-11-23	2018-11-25	t
16	2018-11-23	2018-11-25	t
17	2018-11-23	2018-11-25	t
18	2018-11-23	2018-11-25	t
19	2018-11-23	2018-11-25	t
20	2018-11-23	2018-11-25	t
21	2018-11-23	2018-11-25	t
22	2018-11-23	2018-11-25	t
23	2018-11-23	2018-11-25	t
24	2018-11-23	2018-11-25	t
25	2018-11-23	2018-11-25	t
26	2018-11-23	2018-11-25	t
27	2018-11-23	2018-11-25	t
28	2018-11-23	2018-11-25	t
29	2018-11-23	2018-11-25	t
30	2018-11-23	2018-11-25	t
31	2018-11-23	2018-11-25	t
32	2018-11-23	2018-11-25	t
33	2018-11-23	2018-11-25	t
34	2018-11-23	2018-11-25	t
35	2018-11-23	2018-11-25	t
36	2018-11-23	2018-11-25	t
37	2018-11-23	2018-11-25	t
38	2018-11-23	2018-11-25	t
39	2018-11-23	2018-11-25	t
1	2018-11-14	2018-11-22	t
\.


--
-- Name: dates_date_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.dates_date_id_seq', 39, true);


--
-- Data for Name: hours; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.hours (hour_id, start_time, end_time, frequency) FROM stdin;
2	2018-11-14 05:30:00	2018-11-14 06:30:00	01:00:00
3	2018-11-14 06:30:00	2018-11-14 07:30:00	01:00:00
1	2018-11-14 04:00:00	2018-11-14 05:30:00	01:00:00
\.


--
-- Name: hours_hour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.hours_hour_id_seq', 3, true);


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.images (image_id, image_url, description) FROM stdin;
1	https://storage.googleapis.com/bucketestrella/1.png	Imagen del tour de Puebla Fascinante
2	https://storage.googleapis.com/bucketestrella/2.png	Imagen del tour de Cholula Milenaria
3	https://storage.googleapis.com/bucketestrella/3.png	Imagen del tour de Puebla Iluminada
\.


--
-- Name: images_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.images_image_id_seq', 40, true);


--
-- Data for Name: markers; Type: TABLE DATA; Schema: public; Owner: estrella
--

COPY public.markers (markers_id, tour_id, lat, lng, description, name) FROM stdin;
1	2	19.0436115	-98.1972809	 Este punto se utiliza para dibujar la ruta	ab
2	2	19.0421867	-98.1980209	 Este punto se utiliza para dibujar la ruta	bc
3	2	19.0429497	-98.1995392	 Este punto se utiliza para dibujar la ruta	cd
4	2	19.0436382	-98.1990814	 Este punto se utiliza para dibujar la ruta	de
5	2	19.0480232	-98.2078323	 Este punto se utiliza para dibujar la ruta	ef
6	2	19.0466595	-98.2085648	 Este punto se utiliza para dibujar la ruta	fg
7	2	19.0545959	-98.2242203	 Este punto se utiliza para dibujar la ruta	gh
8	2	19.0560417	-98.2243423	 Este punto se utiliza para dibujar la ruta	hi
9	2	19.0578651	-98.225174	 Este punto se utiliza para dibujar la ruta	ij
10	2	19.0585403	-98.226738	 Este punto se utiliza para dibujar la ruta	jk
11	2	19.0580521	-98.2308502	 Este punto se utiliza para dibujar la ruta	kl
12	2	19.0596981	-98.2344284	 Este punto se utiliza para dibujar la ruta	lm
13	2	19.0600834	-98.295105	 Este punto se utiliza para dibujar la ruta	mn
14	2	19.062685	-98.2966995	 Este punto se utiliza para dibujar la ruta	no
15	2	19.0598526	-98.3024826	 Este punto se utiliza para dibujar la ruta	op
16	2	19.0619202	-98.3070221	 Este punto se utiliza para dibujar la ruta	pq
17	2	19.0498352	-98.3130569	 Este punto se utiliza para dibujar la ruta	qr
18	2	19.0485973	-98.3123245	 Este punto se utiliza para dibujar la ruta	rs
19	2	19.0446796	-98.3149948	 Este punto se utiliza para dibujar la ruta	st
20	2	19.0354843	-98.3166199	 Este punto se utiliza para dibujar la ruta	tu
21	2	19.0302963	-98.3199921	 Este punto se utiliza para dibujar la ruta	uv
22	2	19.0226517	-98.3092041	 Este punto se utiliza para dibujar la ruta	vw
23	1	19.0379009	-98.1955032	Este punto se utiliza para dibujar la ruta	b
26	1	19.0400696	-98.1947174	Este punto se utiliza para dibujar la ruta	c
27	1	19.0402393	-98.1940079	Este punto se utiliza para dibujar la ruta	d
28	1	19.0408154	-98.1930542	Este punto se utiliza para dibujar la ruta	e
29	1	19.0413609	-98.192688	Este punto se utiliza para dibujar la ruta	f
30	1	19.0419884	-98.1925201	Este punto se utiliza para dibujar la ruta	g
31	1	19.042181	-98.1923981	Este punto se utiliza para dibujar la ruta	h
45	1	19.0448265	-98.1915359	Este punto se utiliza para dibujar la ruta	i
46	1	19.0454292	-98.1903763	Este punto se utiliza para dibujar la ruta	j
61	1	19.0457726	-98.1897888	Este punto se utiliza para dibujar la ruta\t	k
62	1	19.0463047	-98.1895676	Este punto se utiliza para dibujar la ruta\t	l
63	1	19.0471363	-98.1896286	Este punto se utiliza para dibujar la ruta\t	m
64	1	19.0491467	-98.1890717	Este punto se utiliza para dibujar la ruta\t	n
65	1	19.0480976	-98.1883392	Este punto se utiliza para dibujar la ruta\t	o
66	1	19.0500412	-98.1865005	Este punto se utiliza para dibujar la ruta\t	p
67	1	19.0506783	-98.1854858	Este punto se utiliza para dibujar la ruta\t	q
68	1	19.0519772	-98.1856766	Este punto se utiliza para dibujar la ruta\t	r
69	1	19.053381	-98.1851425	Este punto se utiliza para dibujar la ruta\t	s
70	1	19.0553417	-98.1856003	Este punto se utiliza para dibujar la ruta\t	t
77	1	19.0558338	-98.1859818	Este punto se utiliza para dibujar la ruta\t	u
78	1	19.0566025	-98.1873703	Este punto se utiliza para dibujar la ruta\t	v
79	1	19.0571003	-98.1879578	Este punto se utiliza para dibujar la ruta\t	w
80	1	19.0576878	-98.1881332	Este punto se utiliza para dibujar la ruta\t	x
81	1	19.0581169	-98.1880112	Este punto se utiliza para dibujar la ruta\t	y
82	1	19.0582066	-98.1878967	Este punto se utiliza para dibujar la ruta\t	z
83	1	19.0581913	-98.1876831	Este punto se utiliza para dibujar la ruta\t	aa
84	1	19.0577583	-98.1878586	Este punto se utiliza para dibujar la ruta\t	bb
85	1	19.0575619	-98.1878357	Este punto se utiliza para dibujar la ruta\t	cc
86	1	19.0574207	-98.1877518	Este punto se utiliza para dibujar la ruta\t	dd
87	1	19.0568752	-98.186615	Este punto se utiliza para dibujar la ruta\t	ee
88	1	19.0583229	-98.1854401	Este punto se utiliza para dibujar la ruta\t	ff
89	1	19.0581741	-98.1851807	Este punto se utiliza para dibujar la ruta\t	gg
90	1	19.0532284	-98.1809387	Este punto se utiliza para dibujar la ruta\t	hh
91	1	19.0526199	-98.1808548	Este punto se utiliza para dibujar la ruta\t	ii
92	1	19.0523624	-98.1807785	Este punto se utiliza para dibujar la ruta\t	jj
93	1	19.0521622	-98.1806488	Este punto se utiliza para dibujar la ruta\t	kk
94	1	19.0520115	-98.180397	Este punto se utiliza para dibujar la ruta\t	ll
95	1	19.0520611	-98.1793594	Este punto se utiliza para dibujar la ruta\t	mm
96	1	19.052475	-98.1789398	Este punto se utiliza para dibujar la ruta\t	nn
97	1	19.0529957	-98.1789017	Este punto se utiliza para dibujar la ruta\t	oo
98	1	19.0532703	-98.1790848	Este punto se utiliza para dibujar la ruta\t	pp
99	1	19.0533772	-98.1795578	Este punto se utiliza para dibujar la ruta\t	qq
100	1	19.0533962	-98.1802216	Este punto se utiliza para dibujar la ruta\t	rr
101	1	19.0536022	-98.1804657	Este punto se utiliza para dibujar la ruta\t	ss
102	1	19.0594482	-98.183754	Este punto se utiliza para dibujar la ruta\t	tt
103	1	19.0599575	-98.1836777	Este punto se utiliza para dibujar la ruta\t	uu
104	1	19.0618496	-98.1820145	Este punto se utiliza para dibujar la ruta\t	vv
105	1	19.0620003	-98.1820984	Este punto se utiliza para dibujar la ruta\t	xx
106	1	19.0608463	-98.1833496	Este punto se utiliza para dibujar la ruta\t	yy
107	1	19.0608959	-98.1845016	Este punto se utiliza para dibujar la ruta\t	zz
108	1	19.0606022	-98.1854401	Este punto se utiliza para dibujar la ruta\t	aaa
109	1	19.059309	-98.1879196	Este punto se utiliza para dibujar la ruta\t	bbb
110	1	19.0546665	-98.1906128	Este punto se utiliza para dibujar la ruta\t	ccc
111	1	19.0538158	-98.1910782	Este punto se utiliza para dibujar la ruta\t	ddd
112	1	19.0528297	-98.1918793	Este punto se utiliza para dibujar la ruta\t	eee
113	1	19.0506897	-98.1899948	Este punto se utiliza para dibujar la ruta\t	fff
114	1	19.0499458	-98.189537	Este punto se utiliza para dibujar la ruta\t	ggg
115	1	19.0494366	-98.1893997	Este punto se utiliza para dibujar la ruta\t	hhh
116	1	19.0482903	-98.1894913	Este punto se utiliza para dibujar la ruta\t	iii
117	1	19.0472183	-98.1897659	Este punto se utiliza para dibujar la ruta\t	jjj
118	1	19.0464115	-98.1897583	Este punto se utiliza para dibujar la ruta\t	kkk
119	1	19.0459023	-98.1899414	Este punto se utiliza para dibujar la ruta\t	lll
120	1	19.0450058	-98.1916885	Este punto se utiliza para dibujar la ruta\t	mmm
121	1	19.0422001	-98.1925659	Este punto se utiliza para dibujar la ruta\t	nnn
122	1	19.0403137	-98.1947861	Este punto se utiliza para dibujar la ruta\t	ooo
123	1	19.0391254	-98.1959305	Este punto se utiliza para dibujar la ruta\t	ppp
125	1	19.0382996	-98.1964493	Este punto se utiliza para dibujar la ruta\t	qqq
126	1	19.0379009	-98.1955032	Este punto se utiliza para dibujar la ruta\t	rrr
\.


--
-- Name: markers_markers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estrella
--

SELECT pg_catalog.setval('public.markers_markers_id_seq', 126, true);


--
-- Data for Name: murals; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.murals (mural_id, title, name, last_name, description) FROM stdin;
3	Elotl	Benny	Ruiz\n	El Colectivo Tomate ha realizado varios proyectos en Puebla que han cambiado la manera de vivir el espacio público. El proyecto Ciudad Mural realizado en Xanenetla transformó un barrio alguna vez conflictivo en uno de los puntos turísticos más representativos para los poblanos. Liqen realizó un mural que combina los conceptos de familia, unidad y maíz.\n\n
\.


--
-- Name: murals_mural_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.murals_mural_id_seq', 51, true);


--
-- Data for Name: narratives; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.narratives (narrative_id, audio_url) FROM stdin;
1	someurl.com
2	someurl2.com
3	someurl3.com
13	someurl.com
14	someurl.com
15	someurl.com
16	someurl.com
17	someurl.com
18	someurl.com
19	someurl.com
20	someurl.com
21	someurl.com
22	someurl.com
23	someurl.com
24	someurl.com
25	someurl.com
26	someurl.com
27	someurl.com
28	someurl.com
29	someurl.com
30	someurl.com
31	someurl.com
32	someurl.com
33	someurl.com
34	someurl.com
35	someurl.com
36	someurl.com
37	someurl.com
38	someurl.com
39	someurl.com
4	update.com
\.


--
-- Name: narratives_narrative_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.narratives_narrative_id_seq', 39, true);


--
-- Data for Name: place_image; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.place_image (place_image_id, place_id, image_id) FROM stdin;
\.


--
-- Name: place_image_place_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.place_image_place_image_id_seq', 1, false);


--
-- Data for Name: place_tour; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.place_tour (place_tour_id, tour_id, place_id) FROM stdin;
\.


--
-- Name: place_tour_place_tour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.place_tour_place_tour_id_seq', 1, false);


--
-- Data for Name: place_types; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.place_types (place_type_id, name) FROM stdin;
1	Punto de Interes
2	Recomendacion
4	Ruta
15	Algo
16	Algo
17	Algo
18	Algo
19	Algo
20	Algo
21	Algo
22	Algo
23	Algo
24	Algo
25	Algo
26	Algo
27	Algo
28	Algo
29	Algo
30	Algo
31	Algo
32	Algo
33	Algo
34	Algo
35	Algo
36	Algo
37	Algo
38	Algo
39	Algo
40	Algo
41	Algo
6	Update
\.


--
-- Name: place_types_place_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.place_types_place_type_id_seq', 41, true);


--
-- Data for Name: places; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.places (place_id, name, lng, lat, place_type_id, description, narrative_id) FROM stdin;
3	La Pasita	-98.1980362	19.0440273	2	“La Pasita”, una cantina que se inauguró en 1916 por el señor Emilio Contreras Aicardo. A pesar del tiempo, esta cantina tradicional de Puebla no pasa de moda.	1
4	Catedral	-98.1983032	19.0429001	1	La Catedral Basílica de Puebla, es uno de las más importantes inmuebles del centro histórico declarado patrimonio de la humanidad.	1
5	Fuerte de Loreto	-98.1869965	19.0578995	1	El fuerte de Loreto es una antigua edificacion militar que se encuentra en la ciudad de Puebla. Originalmente se trataba de una capilla construida en lo alto del cerro Acueyametepec, que fue reconstituida a principios del siglo XIX como fortificacion con finalidad militar.	1
6	Museo Amparo	-98.1987	19.0408001	1	El Museo Amparo, es un espacio cultural contemporáneo creado en memoria de Amparo Rugarcía de Espinoza esposa del banquero y filántropo mexicano Manuel Espinosa Yglesias.	1
7	Santa Clara	-98.1920013	19.0450993	1	La Fonda de Santa Clara 	1
8	Barrio del Artista	-98.1921997	19.0440998	1	El Barrio del Artista es un espacio artístico en la ciudad de Puebla de Zaragoza en el estado de Puebla. Ubicado en lo que se conoce como Plazuela del Torno o del Factor, los artistas trabajan y exponen su obra a la vista de los turistas y ciudadanos que visitan este corredor.	1
9	Paseo San Francisco	-98.1911011	19.0428009	1	Conoce el Centro Comercial donde nació la ciudad de Puebla y disfruta del Jardín de la Violeta, zonas arqueológicas, hoteles boutique, restaurantes, cine, etc.	1
10	Gruta de Lourdes	-98.1850967	19.0534992	1	Este templo religioso está dedicado a la Virgen de Lourdes, la cual es venerada en Francia. Según las visiones de Bernadette Soubirous, la Virgen se apareció en la Gruta de Massabiell, que se ubica a las orillas del río Gave de Pau, a las afueras de la población de Lourdes en 1858.	1
11	Museo de Antropologia e Historia	-98.1827011	19.0562	1	El Museo Regional de Puebla alberga una colección de extraordinario valor cultural y atractivo estético, integrado por el Museo de la No Intervención Fuerte de Loreto, el Monumento Histórico Fuerte de Guadalupe, el Museo Interactivo Imagina, el Planetario, el Auditorio de la Reforma y el Centro Expositor de Puebla.	1
12	Teleferico	-98.1809998	19.0573997	1	Está ubicado en la zona de los Fuertes, comunicando el Centro Expositor, cuya estación mide 58 metros de altura, con el monumento a Zaragoza, donde la estación se encuentra a 48 metros sobre el suelo.	1
13	Museo de la Evolución	-98.1816025	19.0578003	1	El Museo de la Evolución Puebla abarca desde la historia del cosmos hasta las eras geológicas de la Tierra, pasando por el Big Bang y la creación del ser humano. Es un recinto que se especializa en nuestra evolución y todo lo que nos rodea.	1
14	Planetario	-98.1816025	19.0569992	1	El Planetario simula una estación de servicio planetario en el espacio exterior, el cual ofrece un gran entretenimiento y aprendizaje, a través de talleres permanentes, juegos interactivos, un proyector de estrellas y el Domo OMNIMAX.	1
15	Centro Expositor	-98.1810989	19.0585995	1	El Centro Expositor y de Convenciones de Puebla es un centro de convenciones, exposiciones y también utilizado como arena multiusos. Está ubicado en la Unidad Cívica 5 de Mayo en la zona de Los Fuertes en la Ciudad de Puebla de Zaragoza capital del Estado de Puebla en México.	1
16	Galeria tesoros de la catedral	-98.1987991	19.0422993	1	La Galería Tesoros de la Catedral de Puebla es un espacio dedicado a la difusión del rico acervo patrimonial que resguarda el obispado; en una participación conjunta del Gobierno del Estado y la Arquidiócesis.	1
17	Fuerte Guadalupe	-98.1800003	19.0524998	1	El fuerte de Guadalupe es una antigua edificacion militar que se encuentra en la ciudad de Puebla. Originalmente se trataba de una capilla construida en lo alto del cerro Acueyametepec, que fue reconstituida a principios del siglo XIX como fortificacion con finalidad militar.	1
18	Monumento a Zaragoza	-98.1846008	19.0604992	1	Es un mausoleo donde de descansan los restos de uno de los generales más importantes que ha tenido México, ubicado cerca de los Fuertes de Loreto y Guadalupe, donde defendió al país.	1
21	Centro, Cholula, Pue	-98.3096542	19.062458	1	Cholula es considerado un pueblo mágico por ser una de las localidades de México con mayores atributos simbólicos, historia, leyendas, tradición y arte; es una localidad que cuenta con innumerables manifestaciones socio culturales además de muchísima belleza.	1
26	Avenida Juarez	-98.2142792	19.0485535	1	El Paseo Bravo es un parque urbano ubicado en la ciudad de Puebla, en Puebla, México. Fue inaugurado en 1840 bajo el nombre de Paseo Nuevo y es considerado uno de los sitios emblemáticos de la capital poblana.	1
27	Paseo Bravo	-98.2142792	19.0485535	1	El Paseo Bravo es un parque urbano ubicado en la ciudad de Puebla, en Puebla, México. Fue inaugurado en 1840 bajo el nombre de Paseo Nuevo y es considerado uno de los sitios emblemáticos de la capital poblana.	1
19	San Francisco Acatepec, San Andrés Cholula	-98.3268967	19.0144997	1	Es un mausoleo donde de descansan los restos de uno de los generales más importantes que ha tenido México, ubicado cerca de los Fuertes de Loreto y Guadalupe, donde defendió al país.	1
20	Santa María Tonanzintla	-98.3271484	19.0265388	1	Es un mausoleo donde de descansan los restos de uno de los generales más importantes que ha tenido México, ubicado cerca de los Fuertes de Loreto y Guadalupe, donde defendió al país.	1
22	Cerro de la Paz, Puebla, México	-98.2303238	19.054863	1	Cerro de la Paz	1
23	Fuente de los Frailes	-98.2186813	19.0505714	1	Fuente en honor a unos frailes	1
24	Avenida Juarez	-98.1846008	19.0505219	1	Una de las avenidas más famosas y concurridas de puebla	1
28	Paseo Bravo	-98.2142792	19.0485535	1	El Paseo Bravo es un parque urbano ubicado en la ciudad de Puebla, en Puebla, México. Fue inaugurado en 1840 bajo el nombre de Paseo Nuevo y es considerado uno de los sitios emblemáticos de la capital poblana.	1
\.


--
-- Name: places_place_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.places_place_id_seq', 31, true);


--
-- Data for Name: prices; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.prices (price_id, price_amount, tour_id, ticket_type_id) FROM stdin;
44	65	1	2
45	65	2	2
46	65	3	2
47	45	1	3
48	45	2	3
49	45	3	3
50	45	1	1
51	45	2	1
52	45	3	1
\.


--
-- Name: prices_price_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.prices_price_id_seq', 52, true);


--
-- Data for Name: purchases; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.purchases (purchase_id, sub_total, total, company_id, user_id, created_at) FROM stdin;
63	100	100	1	1	2018-11-28
77	100	100	1	1	2018-11-29
78	100	100	1	1	2018-11-29
79	100	100	1	1	2018-11-29
80	100	100	1	1	2018-11-29
81	100	100	1	1	2018-11-29
82	100	100	1	1	2018-11-29
83	45	45	1	1	2018-11-29
84	45	45	1	1	2018-11-30
85	130	130	1	1	2018-11-30
86	90	90	1	1	2018-11-30
87	90	90	1	1	2018-11-30
88	45	45	1	1	2018-11-30
89	45	45	1	1	2018-11-30
90	155	155	1	1	2018-11-30
91	90	90	1	1	2018-11-30
92	155	155	1	1	2018-11-30
93	155	155	1	1	2018-11-30
94	155	155	1	1	2018-11-30
95	155	155	1	1	2018-11-30
96	90	90	1	1	2018-11-30
97	100	100	1	1	2018-11-30
98	155	155	1	1	2018-11-30
99	175	175	1	1	2018-11-30
100	45	45	1	1	2018-11-30
101	45	45	1	1	2018-11-30
102	45	45	1	1	2018-11-30
103	130	130	1	1	2018-11-30
104	130	130	1	1	2018-11-30
\.


--
-- Name: purchases_purchase_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.purchases_purchase_id_seq', 104, true);


--
-- Data for Name: stops; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.stops (stop_id, name, lat, lng, tour_id, description) FROM stdin;
42	Analco - Parada 1	19.0400009	-98.1947021	1	Analco - Salida
43	- Parada 2	19.0442009	-98.1917038	1	Parada #2
41	Fuertes de Loreto	19.0442009	-98.187561	1	Fuerte de Loreto Parada #3
44	-Parada #4	19.0534859	-98.1801605	1	Parada #4
45	-Parada #5	19.059248	-98.1835403	1	Parada #5
46	Teatro Principal - Parada #6	19.0447578	-98.1917572	1	Parada #6
47	Cholula milenaria	19.0429001	-98.1983032	1	Parada en Cholula Milenaria
\.


--
-- Name: stops_stop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.stops_stop_id_seq', 47, true);


--
-- Data for Name: testapi; Type: TABLE DATA; Schema: public; Owner: estrella
--

COPY public.testapi ("createdAt", "updatedAt", id) FROM stdin;
\.


--
-- Name: testapi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estrella
--

SELECT pg_catalog.setval('public.testapi_id_seq', 1, false);


--
-- Data for Name: ticket_types; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.ticket_types (ticket_type_id, name) FROM stdin;
3	Mayor
2	Adulto
1	Infantil
\.


--
-- Name: ticket_types_ticket_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.ticket_types_ticket_type_id_seq', 39, true);


--
-- Data for Name: tickets; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.tickets (ticket_id, purchase_id, price_id, name, last_name, age, date_tour, qr_code, sub_total, created_at) FROM stdin;
47	63	47	Diego	Castagne	21	2018-11-11	www,qr.com	100	\N
48	89	50	Diego	Castagne	90	2018-11-23	www.tumama.com	45	\N
49	90	50	Diego	Castagne	90	2018-11-23	www.tumama.com	155	\N
50	91	44	Diego	Castagne	90	2018-11-23	www.tumama.com	90	\N
51	92	50	Diego	Castagne	90	2018-11-23	www.tumama.com	155	\N
52	93	47	Diego	Castagne	90	2018-11-23	www.tumama.com	155	\N
53	94	47	Diego	Castagne	90	2018-11-23	www.tumama.com	155	\N
54	94	50	Diego	Castagne	90	2018-11-23	www.tumama.com	155	\N
55	94	44	Diego	Castagne	90	2018-11-23	www.tumama.com	155	\N
56	95	45	Diego	Castagne	90	2018-11-23	www.tumama.com	155	\N
57	95	48	Diego	Castagne	90	2018-11-23	www.tumama.com	155	\N
58	95	51	Diego	Castagne	90	2018-11-23	www.tumama.com	155	\N
59	96	52	Diego	Castagne	90	2018-11-29	www.tumama.com	90	\N
60	96	52	Diego	Castagne	90	2018-11-29	www.tumama.com	90	\N
61	101	45	Diego	Castagne	90	2018-12-01	www.qr.com	45	\N
62	104	48	Diego	Castagne	90	2018-11-30	www.qr.com	130	\N
63	104	48	Diego	Castagne	90	2018-11-30	www.qr.com	130	\N
\.


--
-- Name: tickets_ticket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.tickets_ticket_id_seq', 63, true);


--
-- Data for Name: times; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.times (time_id, tour_id, date_hour_id) FROM stdin;
1	1	1
2	1	1
12	1	1
13	1	1
14	1	1
15	1	1
16	1	1
17	1	1
18	1	1
19	1	1
20	1	1
21	1	1
22	1	1
23	1	1
24	1	1
25	1	1
26	1	1
27	1	1
28	1	1
29	1	1
30	1	1
31	1	1
32	1	1
33	1	1
34	1	1
35	1	1
36	1	1
3	3	1
\.


--
-- Name: times_time_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.times_time_id_seq', 36, true);


--
-- Data for Name: tours; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.tours (tour_id, name, image_id, description) FROM stdin;
2	Cholula Milenaria	2	Disfruta de un recorrido mágico por la milenaria ciudad prehispánica y colonial de Cholula, con su gran pirámide templo franciscano y sus múltiples iglesias, incluyendo la increíble imaginería de Tonanzintla y San Francisco Acatepec, atravesando una parte de la historia de Puebla y Cholula.
1	Puebla Fascinante	1	Disfruta de un paseo lleno de historia, color y tradición por los lugares más típicos y hermosos de la Ciudad de Puebla.
3	Puebla Iluminada	3	Disfruta de un paseo lleno de historia, color y tradición por los lugares más típicos y hermosos de la Ciudad de Puebla.
\.


--
-- Name: tours_tour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.tours_tour_id_seq', 42, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: azul
--

COPY public.users (user_id, name, last_name, email, brithdate, password, postal_code, phone_number) FROM stdin;
1	Diego	Castagne	diego.castagne@gmail.com	2018-07-14	YWVzLTI1Ni1nY20kJGRlZmF1bHQ=$0JEO+VMqbrZLmsRb$8gpOJ+68o1Q=$f5QQ72g5TdjqBhWYqmzNLQ	72190	2321103575
\.


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azul
--

SELECT pg_catalog.setval('public.users_user_id_seq', 2, true);


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: estrella
--

COPY public.usuario ("createdAt", "updatedAt", usuario_id, name, last_name, email, birthdate, password, "postal:code", phone_number) FROM stdin;
1540242102005	1540242102005	1	Diego	Castagne	diego.castagne@gmail.com	1997-07-14	dca123	0	2321103575
1540328963340	1540328963340	2	Juan	Lopez	prueba	1999-01-01	cacatua	0	2221001000
1540922593315	1540922593315	3	Benny	Vicepresidente	benny.ruiz@gmail.com	1997-07-14	bvi123	0	2222222222
1540941864106	1540941864106	4	Test	Loco	test.loco@gmail.com	1998-07-14	lco123	1	2222222222
1540942048979	1540942048979	5	Test2	Loco2	test2.loco2@gmail.com	1999-07-14	lco123	1	2222222222
1541009510483	1541009510483	6	Prueba	Prueba	prueba@gmail.com	1999-05-05	prueba	0	1212121212
\.


--
-- Name: usuario_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estrella
--

SELECT pg_catalog.setval('public.usuario_usuario_id_seq', 6, true);


--
-- Name: adminusers_pkey; Type: CONSTRAINT; Schema: public; Owner: estrella
--

ALTER TABLE ONLY public.adminusers
    ADD CONSTRAINT adminusers_pkey PRIMARY KEY (adminuser_id);


--
-- Name: archive_pkey; Type: CONSTRAINT; Schema: public; Owner: estrella
--

ALTER TABLE ONLY public.archive
    ADD CONSTRAINT archive_pkey PRIMARY KEY (id);


--
-- Name: bracelets_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.bracelets
    ADD CONSTRAINT bracelets_pkey PRIMARY KEY (bracelet_id);


--
-- Name: buses_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.buses
    ADD CONSTRAINT buses_pkey PRIMARY KEY (bus_id);


--
-- Name: companies_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (company_id);


--
-- Name: date_hour_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.date_hour
    ADD CONSTRAINT date_hour_pkey PRIMARY KEY (date_hour_id);


--
-- Name: dates_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.dates
    ADD CONSTRAINT dates_pkey PRIMARY KEY (date_id);


--
-- Name: hours_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.hours
    ADD CONSTRAINT hours_pkey PRIMARY KEY (hour_id);


--
-- Name: images_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (image_id);


--
-- Name: markers_pkey; Type: CONSTRAINT; Schema: public; Owner: estrella
--

ALTER TABLE ONLY public.markers
    ADD CONSTRAINT markers_pkey PRIMARY KEY (markers_id);


--
-- Name: murals_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.murals
    ADD CONSTRAINT murals_pkey PRIMARY KEY (mural_id);


--
-- Name: narratives_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.narratives
    ADD CONSTRAINT narratives_pkey PRIMARY KEY (narrative_id);


--
-- Name: place_image_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.place_image
    ADD CONSTRAINT place_image_pkey PRIMARY KEY (place_image_id);


--
-- Name: place_tour_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.place_tour
    ADD CONSTRAINT place_tour_pkey PRIMARY KEY (place_tour_id);


--
-- Name: place_types_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.place_types
    ADD CONSTRAINT place_types_pkey PRIMARY KEY (place_type_id);


--
-- Name: places_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_pkey PRIMARY KEY (place_id);


--
-- Name: prices_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.prices
    ADD CONSTRAINT prices_pkey PRIMARY KEY (price_id);


--
-- Name: purchases_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_pkey PRIMARY KEY (purchase_id);


--
-- Name: stops_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.stops
    ADD CONSTRAINT stops_pkey PRIMARY KEY (stop_id);


--
-- Name: testapi_pkey; Type: CONSTRAINT; Schema: public; Owner: estrella
--

ALTER TABLE ONLY public.testapi
    ADD CONSTRAINT testapi_pkey PRIMARY KEY (id);


--
-- Name: ticket_types_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.ticket_types
    ADD CONSTRAINT ticket_types_pkey PRIMARY KEY (ticket_type_id);


--
-- Name: tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (ticket_id);


--
-- Name: times_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.times
    ADD CONSTRAINT times_pkey PRIMARY KEY (time_id);


--
-- Name: tours_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.tours
    ADD CONSTRAINT tours_pkey PRIMARY KEY (tour_id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: usuario_email_key; Type: CONSTRAINT; Schema: public; Owner: estrella
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_email_key UNIQUE (email);


--
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: estrella
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (usuario_id);


--
-- Name: bracelets_ticket_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.bracelets
    ADD CONSTRAINT bracelets_ticket_id_fkey FOREIGN KEY (ticket_id) REFERENCES public.tickets(ticket_id);


--
-- Name: bracelets_tour_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.bracelets
    ADD CONSTRAINT bracelets_tour_id_fkey FOREIGN KEY (tour_id) REFERENCES public.tours(tour_id);


--
-- Name: buses_mural_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.buses
    ADD CONSTRAINT buses_mural_id_fkey FOREIGN KEY (mural_id) REFERENCES public.murals(mural_id);


--
-- Name: buses_tour_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.buses
    ADD CONSTRAINT buses_tour_id_fkey FOREIGN KEY (tour_id) REFERENCES public.tours(tour_id);


--
-- Name: date_hour_date_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.date_hour
    ADD CONSTRAINT date_hour_date_id_fkey FOREIGN KEY (date_id) REFERENCES public.dates(date_id);


--
-- Name: date_hour_hour_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.date_hour
    ADD CONSTRAINT date_hour_hour_id_fkey FOREIGN KEY (hour_id) REFERENCES public.hours(hour_id);


--
-- Name: markers_tour_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: estrella
--

ALTER TABLE ONLY public.markers
    ADD CONSTRAINT markers_tour_id_fkey FOREIGN KEY (tour_id) REFERENCES public.tours(tour_id);


--
-- Name: place_image_image_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.place_image
    ADD CONSTRAINT place_image_image_id_fkey FOREIGN KEY (image_id) REFERENCES public.images(image_id);


--
-- Name: place_image_place_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.place_image
    ADD CONSTRAINT place_image_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(place_id);


--
-- Name: place_tour_place_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.place_tour
    ADD CONSTRAINT place_tour_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(place_id);


--
-- Name: place_tour_tour_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.place_tour
    ADD CONSTRAINT place_tour_tour_id_fkey FOREIGN KEY (tour_id) REFERENCES public.tours(tour_id);


--
-- Name: places_narrative_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_narrative_id_fkey FOREIGN KEY (narrative_id) REFERENCES public.narratives(narrative_id);


--
-- Name: places_place_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_place_type_id_fkey FOREIGN KEY (place_type_id) REFERENCES public.place_types(place_type_id);


--
-- Name: prices_ticket_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.prices
    ADD CONSTRAINT prices_ticket_type_id_fkey FOREIGN KEY (ticket_type_id) REFERENCES public.ticket_types(ticket_type_id);


--
-- Name: prices_tour_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.prices
    ADD CONSTRAINT prices_tour_id_fkey FOREIGN KEY (tour_id) REFERENCES public.tours(tour_id);


--
-- Name: purchases_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.companies(company_id);


--
-- Name: purchases_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: stops_tour_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.stops
    ADD CONSTRAINT stops_tour_id_fkey FOREIGN KEY (tour_id) REFERENCES public.tours(tour_id);


--
-- Name: tickets_price_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_price_id_fkey FOREIGN KEY (price_id) REFERENCES public.prices(price_id);


--
-- Name: tickets_purchase_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_purchase_id_fkey FOREIGN KEY (purchase_id) REFERENCES public.purchases(purchase_id);


--
-- Name: times_date_hour_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.times
    ADD CONSTRAINT times_date_hour_id_fkey FOREIGN KEY (date_hour_id) REFERENCES public.date_hour(date_hour_id);


--
-- Name: times_tour_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.times
    ADD CONSTRAINT times_tour_id_fkey FOREIGN KEY (tour_id) REFERENCES public.tours(tour_id);


--
-- Name: tours_image_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: azul
--

ALTER TABLE ONLY public.tours
    ADD CONSTRAINT tours_image_id_fkey FOREIGN KEY (image_id) REFERENCES public.images(image_id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

