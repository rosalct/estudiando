--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 11.13 (Debian 11.13-0+deb10u1)

-- Started on 2022-02-16 22:07:24 CST

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
-- TOC entry 192 (class 1259 OID 144307)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 144305)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 2349 (class 0 OID 0)
-- Dependencies: 191
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 194 (class 1259 OID 144317)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 144315)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2350 (class 0 OID 0)
-- Dependencies: 193
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 190 (class 1259 OID 144299)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 144297)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 2351 (class 0 OID 0)
-- Dependencies: 189
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 196 (class 1259 OID 144325)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 144335)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 144333)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 2352 (class 0 OID 0)
-- Dependencies: 197
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 195 (class 1259 OID 144323)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 2353 (class 0 OID 0)
-- Dependencies: 195
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 200 (class 1259 OID 144343)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 144341)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2354 (class 0 OID 0)
-- Dependencies: 199
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 202 (class 1259 OID 144403)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 144401)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 2355 (class 0 OID 0)
-- Dependencies: 201
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 188 (class 1259 OID 144289)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 144287)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 2356 (class 0 OID 0)
-- Dependencies: 187
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 186 (class 1259 OID 144278)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 144276)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 2357 (class 0 OID 0)
-- Dependencies: 185
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 203 (class 1259 OID 144434)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 144455)
-- Name: polls_choice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polls_choice (
    id bigint NOT NULL,
    choice_text character varying(200) NOT NULL,
    votes integer NOT NULL,
    question_id bigint NOT NULL
);


ALTER TABLE public.polls_choice OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 144453)
-- Name: polls_choice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.polls_choice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.polls_choice_id_seq OWNER TO postgres;

--
-- TOC entry 2358 (class 0 OID 0)
-- Dependencies: 206
-- Name: polls_choice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.polls_choice_id_seq OWNED BY public.polls_choice.id;


--
-- TOC entry 217 (class 1259 OID 144504)
-- Name: polls_controlclases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polls_controlclases (
    id bigint NOT NULL,
    lugar character varying(200) NOT NULL,
    fecha timestamp with time zone NOT NULL,
    hora time without time zone NOT NULL,
    sennalizaciones character varying(300) NOT NULL
);


ALTER TABLE public.polls_controlclases OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 144502)
-- Name: polls_controlclases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.polls_controlclases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.polls_controlclases_id_seq OWNER TO postgres;

--
-- TOC entry 2359 (class 0 OID 0)
-- Dependencies: 216
-- Name: polls_controlclases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.polls_controlclases_id_seq OWNED BY public.polls_controlclases.id;


--
-- TOC entry 213 (class 1259 OID 144488)
-- Name: polls_designacionjefeasignatura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polls_designacionjefeasignatura (
    id bigint NOT NULL,
    lugar character varying(300) NOT NULL,
    fecha timestamp with time zone NOT NULL,
    hora time without time zone NOT NULL
);


ALTER TABLE public.polls_designacionjefeasignatura OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 144486)
-- Name: polls_designacionjefeasignatura_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.polls_designacionjefeasignatura_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.polls_designacionjefeasignatura_id_seq OWNER TO postgres;

--
-- TOC entry 2360 (class 0 OID 0)
-- Dependencies: 212
-- Name: polls_designacionjefeasignatura_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.polls_designacionjefeasignatura_id_seq OWNED BY public.polls_designacionjefeasignatura.id;


--
-- TOC entry 215 (class 1259 OID 144496)
-- Name: polls_evaluacionprofesor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polls_evaluacionprofesor (
    id bigint NOT NULL,
    nombre_profesor character varying(100) NOT NULL,
    evaluacion integer NOT NULL
);


ALTER TABLE public.polls_evaluacionprofesor OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 144494)
-- Name: polls_evaluacionprofesor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.polls_evaluacionprofesor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.polls_evaluacionprofesor_id_seq OWNER TO postgres;

--
-- TOC entry 2361 (class 0 OID 0)
-- Dependencies: 214
-- Name: polls_evaluacionprofesor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.polls_evaluacionprofesor_id_seq OWNED BY public.polls_evaluacionprofesor.id;


--
-- TOC entry 211 (class 1259 OID 144477)
-- Name: polls_planclases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polls_planclases (
    id bigint NOT NULL,
    objetivos character varying(300) NOT NULL,
    sumario character varying(200) NOT NULL,
    metodos character varying(200) NOT NULL,
    estudio_independiente character varying(200) NOT NULL,
    tiempo_estimado integer NOT NULL
);


ALTER TABLE public.polls_planclases OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 144475)
-- Name: polls_planclases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.polls_planclases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.polls_planclases_id_seq OWNER TO postgres;

--
-- TOC entry 2362 (class 0 OID 0)
-- Dependencies: 210
-- Name: polls_planclases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.polls_planclases_id_seq OWNED BY public.polls_planclases.id;


--
-- TOC entry 209 (class 1259 OID 144469)
-- Name: polls_plantrabajo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polls_plantrabajo (
    id bigint NOT NULL,
    actividad character varying(200) NOT NULL,
    lugar character varying(200) NOT NULL,
    fecha timestamp with time zone NOT NULL,
    hora_inicial time without time zone NOT NULL,
    hora_final time without time zone NOT NULL
);


ALTER TABLE public.polls_plantrabajo OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 144467)
-- Name: polls_plantrabajo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.polls_plantrabajo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.polls_plantrabajo_id_seq OWNER TO postgres;

--
-- TOC entry 2363 (class 0 OID 0)
-- Dependencies: 208
-- Name: polls_plantrabajo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.polls_plantrabajo_id_seq OWNED BY public.polls_plantrabajo.id;


--
-- TOC entry 205 (class 1259 OID 144447)
-- Name: polls_question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polls_question (
    id bigint NOT NULL,
    question_text character varying(200) NOT NULL,
    pub_date timestamp with time zone NOT NULL
);


ALTER TABLE public.polls_question OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 144445)
-- Name: polls_question_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.polls_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.polls_question_id_seq OWNER TO postgres;

--
-- TOC entry 2364 (class 0 OID 0)
-- Dependencies: 204
-- Name: polls_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.polls_question_id_seq OWNED BY public.polls_question.id;


--
-- TOC entry 2108 (class 2604 OID 144310)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2109 (class 2604 OID 144320)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2107 (class 2604 OID 144302)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2110 (class 2604 OID 144328)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2111 (class 2604 OID 144338)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2112 (class 2604 OID 144346)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2113 (class 2604 OID 144406)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2106 (class 2604 OID 144292)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2105 (class 2604 OID 144281)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2116 (class 2604 OID 144458)
-- Name: polls_choice id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_choice ALTER COLUMN id SET DEFAULT nextval('public.polls_choice_id_seq'::regclass);


--
-- TOC entry 2121 (class 2604 OID 144507)
-- Name: polls_controlclases id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_controlclases ALTER COLUMN id SET DEFAULT nextval('public.polls_controlclases_id_seq'::regclass);


--
-- TOC entry 2119 (class 2604 OID 144491)
-- Name: polls_designacionjefeasignatura id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_designacionjefeasignatura ALTER COLUMN id SET DEFAULT nextval('public.polls_designacionjefeasignatura_id_seq'::regclass);


--
-- TOC entry 2120 (class 2604 OID 144499)
-- Name: polls_evaluacionprofesor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_evaluacionprofesor ALTER COLUMN id SET DEFAULT nextval('public.polls_evaluacionprofesor_id_seq'::regclass);


--
-- TOC entry 2118 (class 2604 OID 144480)
-- Name: polls_planclases id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_planclases ALTER COLUMN id SET DEFAULT nextval('public.polls_planclases_id_seq'::regclass);


--
-- TOC entry 2117 (class 2604 OID 144472)
-- Name: polls_plantrabajo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_plantrabajo ALTER COLUMN id SET DEFAULT nextval('public.polls_plantrabajo_id_seq'::regclass);


--
-- TOC entry 2115 (class 2604 OID 144450)
-- Name: polls_question id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_question ALTER COLUMN id SET DEFAULT nextval('public.polls_question_id_seq'::regclass);


--
-- TOC entry 2318 (class 0 OID 144307)
-- Dependencies: 192
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 2320 (class 0 OID 144317)
-- Dependencies: 194
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2316 (class 0 OID 144299)
-- Dependencies: 190
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add question	7	add_question
26	Can change question	7	change_question
27	Can delete question	7	delete_question
28	Can view question	7	view_question
29	Can add choice	8	add_choice
30	Can change choice	8	change_choice
31	Can delete choice	8	delete_choice
32	Can view choice	8	view_choice
33	Can add plan trabajo	9	add_plantrabajo
34	Can change plan trabajo	9	change_plantrabajo
35	Can delete plan trabajo	9	delete_plantrabajo
36	Can view plan trabajo	9	view_plantrabajo
37	Can add plan clases	10	add_planclases
38	Can change plan clases	10	change_planclases
39	Can delete plan clases	10	delete_planclases
40	Can view plan clases	10	view_planclases
41	Can add designacion jefe asignatura	11	add_designacionjefeasignatura
42	Can change designacion jefe asignatura	11	change_designacionjefeasignatura
43	Can delete designacion jefe asignatura	11	delete_designacionjefeasignatura
44	Can view designacion jefe asignatura	11	view_designacionjefeasignatura
45	Can add evaluacion profesor	12	add_evaluacionprofesor
46	Can change evaluacion profesor	12	change_evaluacionprofesor
47	Can delete evaluacion profesor	12	delete_evaluacionprofesor
48	Can view evaluacion profesor	12	view_evaluacionprofesor
49	Can add control clases	13	add_controlclases
50	Can change control clases	13	change_controlclases
51	Can delete control clases	13	delete_controlclases
52	Can view control clases	13	view_controlclases
\.


--
-- TOC entry 2322 (class 0 OID 144325)
-- Dependencies: 196
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$260000$dGM8mSnXp6R22wxxX3IpFD$QWxXBt1wZVuq4wBCYKy/1S03u2/U8aRg5f3mgGTlStk=	2022-02-16 21:15:47.890141-05	f	prof				t	t	2022-02-15 00:55:20-05
3	pbkdf2_sha256$260000$7TqwL46waxWTEIhx986L3P$IamFp7mGN7Cmyim/IYaXDMMXZ2atpgEJONto+BXu8U4=	2022-02-16 21:45:04.859635-05	f	jefdep				t	t	2022-02-16 01:41:10-05
4	pbkdf2_sha256$260000$tygE6QXZUYXz8J6arzbn8W$MTrORsav/JPH10DNczKtOb5KyO142mLDzgybXMtxiqM=	2022-02-16 21:45:18.491996-05	f	jefasig				t	t	2022-02-16 01:44:24-05
5	pbkdf2_sha256$260000$OBG6BgURNoPa9dN5EZv9w7$vWH/H6aUsQdUTuTxOCjcP32lUXJKR3BBZjhjBTUbqMA=	2022-02-16 20:35:49.296933-05	f	rosa				t	t	2022-02-16 20:34:06-05
1	pbkdf2_sha256$260000$wwvG8ewt9DEymzg4HQtJhS$tD2x3l0YsGhJEAkBJo/GEU5fmD9m4TZmOrV7h8ZYn8o=	2022-02-16 20:38:28.630004-05	t	root				t	t	2022-02-10 22:34:34.37594-05
6	pbkdf2_sha256$260000$Jbp9bRtrBMqAPJqTyxW92o$sACky2wAMdrjXnJJd44WzOKcmRDQvk1jDKr1DXRl1uo=	2022-02-16 20:41:10.877963-05	f	otro				f	t	2022-02-16 20:38:58-05
\.


--
-- TOC entry 2324 (class 0 OID 144335)
-- Dependencies: 198
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 2326 (class 0 OID 144343)
-- Dependencies: 200
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
2	2	33
3	2	34
4	2	35
5	2	36
6	2	37
7	2	38
8	2	39
9	2	40
10	3	33
11	3	34
12	3	35
13	3	36
14	3	37
15	3	38
16	3	39
17	3	40
18	3	41
19	3	42
20	3	43
21	3	44
22	4	33
23	4	34
24	4	35
25	4	36
26	4	37
27	4	38
28	4	39
29	4	40
30	4	45
31	4	46
32	4	47
33	4	48
34	4	49
35	4	50
36	4	51
37	4	52
38	5	33
39	5	34
40	5	35
41	5	36
42	6	41
43	6	44
\.


--
-- TOC entry 2328 (class 0 OID 144403)
-- Dependencies: 202
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-02-10 22:36:51.310586-05	1	What's up?	2	[{"changed": {"fields": ["Date published"]}}]	7	1
2	2022-02-10 22:37:05.2405-05	1	Pregunta de prueba ?	2	[{"changed": {"fields": ["Question text"]}}]	7	1
3	2022-02-10 23:46:26.547194-05	2	Otra pregunta ?	1	[{"added": {}}]	7	1
4	2022-02-10 23:46:40.062321-05	3	Otra mas ?	1	[{"added": {}}]	7	1
5	2022-02-15 00:55:20.850051-05	2	prof	1	[{"added": {}}]	4	1
6	2022-02-16 00:13:24.885666-05	2	prof	2	[{"changed": {"fields": ["Staff status"]}}]	4	1
7	2022-02-16 01:17:56.107834-05	2	prof	2	[{"changed": {"fields": ["User permissions"]}}]	4	1
8	2022-02-16 01:20:14.417442-05	2	prof	2	[{"changed": {"fields": ["User permissions"]}}]	4	1
9	2022-02-16 01:38:27.814703-05	2	prof	2	[{"changed": {"fields": ["User permissions"]}}]	4	1
10	2022-02-16 01:41:11.198887-05	3	jefdep	1	[{"added": {}}]	4	1
11	2022-02-16 01:42:59.95637-05	3	jefdep	2	[{"changed": {"fields": ["Staff status", "User permissions"]}}]	4	1
12	2022-02-16 01:43:44.843656-05	2	prof	2	[{"changed": {"fields": ["password"]}}]	4	1
13	2022-02-16 01:44:24.666195-05	4	jefasig	1	[{"added": {}}]	4	1
14	2022-02-16 01:45:15.593258-05	4	jefasig	2	[{"changed": {"fields": ["Staff status", "User permissions"]}}]	4	1
15	2022-02-16 20:34:06.935937-05	5	rosa	1	[{"added": {}}]	4	1
16	2022-02-16 20:35:24.269687-05	5	rosa	2	[{"changed": {"fields": ["Staff status", "User permissions"]}}]	4	1
17	2022-02-16 20:38:58.56698-05	6	otro	1	[{"added": {}}]	4	1
18	2022-02-16 20:40:47.239125-05	6	otro	2	[{"changed": {"fields": ["User permissions"]}}]	4	1
\.


--
-- TOC entry 2314 (class 0 OID 144289)
-- Dependencies: 188
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	polls	question
8	polls	choice
9	polls	plantrabajo
10	polls	planclases
11	polls	designacionjefeasignatura
12	polls	evaluacionprofesor
13	polls	controlclases
\.


--
-- TOC entry 2312 (class 0 OID 144278)
-- Dependencies: 186
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-02-10 17:30:01.014889-05
2	auth	0001_initial	2022-02-10 17:30:02.664067-05
3	admin	0001_initial	2022-02-10 17:30:03.129025-05
4	admin	0002_logentry_remove_auto_add	2022-02-10 17:30:03.182439-05
5	admin	0003_logentry_add_action_flag_choices	2022-02-10 17:30:03.225093-05
6	contenttypes	0002_remove_content_type_name	2022-02-10 17:30:03.285344-05
7	auth	0002_alter_permission_name_max_length	2022-02-10 17:30:03.331079-05
8	auth	0003_alter_user_email_max_length	2022-02-10 17:30:03.379455-05
9	auth	0004_alter_user_username_opts	2022-02-10 17:30:03.418315-05
10	auth	0005_alter_user_last_login_null	2022-02-10 17:30:03.452806-05
11	auth	0006_require_contenttypes_0002	2022-02-10 17:30:03.482107-05
12	auth	0007_alter_validators_add_error_messages	2022-02-10 17:30:03.523496-05
13	auth	0008_alter_user_username_max_length	2022-02-10 17:30:03.662257-05
14	auth	0009_alter_user_last_name_max_length	2022-02-10 17:30:03.71553-05
15	auth	0010_alter_group_name_max_length	2022-02-10 17:30:04.354619-05
16	auth	0011_update_proxy_permissions	2022-02-10 17:30:04.399752-05
17	auth	0012_alter_user_first_name_max_length	2022-02-10 17:30:04.450747-05
18	sessions	0001_initial	2022-02-10 17:30:04.788353-05
19	polls	0001_initial	2022-02-10 18:00:45.581956-05
20	polls	0002_plantrabajo	2022-02-13 11:05:31.842725-05
21	polls	0003_planclases	2022-02-14 09:56:02.47149-05
22	polls	0004_designacionjefeasignatura	2022-02-14 16:04:52.285595-05
23	polls	0005_evaluacionprofesor	2022-02-14 16:38:25.57022-05
24	polls	0006_controlclases	2022-02-14 17:30:08.453269-05
\.


--
-- TOC entry 2329 (class 0 OID 144434)
-- Dependencies: 203
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
z15j0tn8e4f48oyzgccvmswu4d4k5o8k	.eJxVjMsOwiAQRf-FtSEdBgt16b7fQGBmkKqBpI-V8d-1SRe6veec-1IhbmsJ2yJzmFhdFKjT75YiPaTugO-x3pqmVtd5SnpX9EEXPTaW5_Vw_w5KXMq3tkKEkAnsYIzrkIGx83DOBsVn8gnZAlnhDA4TYCfGQM84-GhcT069P9gYN18:1nKVka:4AaRDIMKgl1a-b4DWigvtbOTd1IDT1E04TLllRZn80M	2022-03-02 20:38:28.653916-05
4byxral8846k77pougahy9upe61in4bl	.eJxVjEEOwiAQRe_C2pCRQgGX7j0DGZhBqgaS0q6Md7dNutDte-__twi4LiWsnecwkbgILU6_LGJ6ct0FPbDem0ytLvMU5Z7Iw3Z5a8Sv69H-HRTsZVuDG1TWaJMzEJG99xaGES2MiGdAGlzUnBRRNi4DKZV0toZ9hg0YAPH5At4rN9E:1nKWnG:AiM9LgWvlDaIf-bFC4Z5549rgFjpYU2e9MTLMZtKvBs	2022-03-02 21:45:18.514346-05
\.


--
-- TOC entry 2333 (class 0 OID 144455)
-- Dependencies: 207
-- Data for Name: polls_choice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.polls_choice (id, choice_text, votes, question_id) FROM stdin;
\.


--
-- TOC entry 2343 (class 0 OID 144504)
-- Dependencies: 217
-- Data for Name: polls_controlclases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.polls_controlclases (id, lugar, fecha, hora, sennalizaciones) FROM stdin;
1	aaaaaa	2021-12-31 19:00:00-05	06:46:00	sdsdsdsdsdsds
3	ddsdss	2021-12-31 19:00:00-05	06:50:00	ssdsds
\.


--
-- TOC entry 2339 (class 0 OID 144488)
-- Dependencies: 213
-- Data for Name: polls_designacionjefeasignatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.polls_designacionjefeasignatura (id, lugar, fecha, hora) FROM stdin;
2	ddfdfdf	2021-12-31 19:00:00-05	05:33:00
\.


--
-- TOC entry 2341 (class 0 OID 144496)
-- Dependencies: 215
-- Data for Name: polls_evaluacionprofesor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.polls_evaluacionprofesor (id, nombre_profesor, evaluacion) FROM stdin;
1	Pedro	100
2	Pedro	100
\.


--
-- TOC entry 2337 (class 0 OID 144477)
-- Dependencies: 211
-- Data for Name: polls_planclases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.polls_planclases (id, objetivos, sumario, metodos, estudio_independiente, tiempo_estimado) FROM stdin;
6	MODIFICADO	rrr	rrrrrr	rrrrrrrr	78
7	rrr	MODIFICADO	MODIFICADO	rrrrrrrr	78
8	rrr	rrr	MODIFICADO	MODIFICADO	100
10	MODIFICADO	MODIFICADO	MODIFICADO	MODIFICADO	97
\.


--
-- TOC entry 2335 (class 0 OID 144469)
-- Dependencies: 209
-- Data for Name: polls_plantrabajo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.polls_plantrabajo (id, actividad, lugar, fecha, hora_inicial, hora_final) FROM stdin;
35	Organizacion del las clases	Departamento	2022-01-07 19:00:00-05	03:28:00	04:28:00
28	MODIFICADO	MODIFICADO	2022-12-11 19:00:00-05	01:01:00	01:01:00
25	MODIFICADO	MODIFICADO	2021-12-31 19:00:00-05	02:05:00	03:05:00
\.


--
-- TOC entry 2331 (class 0 OID 144447)
-- Dependencies: 205
-- Data for Name: polls_question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.polls_question (id, question_text, pub_date) FROM stdin;
1	Pregunta de prueba ?	2022-02-09 22:04:06-05
2	Otra pregunta ?	2022-01-31 23:46:21-05
3	Otra mas ?	2022-02-10 23:46:37-05
\.


--
-- TOC entry 2365 (class 0 OID 0)
-- Dependencies: 191
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 2366 (class 0 OID 0)
-- Dependencies: 193
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 2367 (class 0 OID 0)
-- Dependencies: 189
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- TOC entry 2368 (class 0 OID 0)
-- Dependencies: 197
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 2369 (class 0 OID 0)
-- Dependencies: 195
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 6, true);


--
-- TOC entry 2370 (class 0 OID 0)
-- Dependencies: 199
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 43, true);


--
-- TOC entry 2371 (class 0 OID 0)
-- Dependencies: 201
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 18, true);


--
-- TOC entry 2372 (class 0 OID 0)
-- Dependencies: 187
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- TOC entry 2373 (class 0 OID 0)
-- Dependencies: 185
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);


--
-- TOC entry 2374 (class 0 OID 0)
-- Dependencies: 206
-- Name: polls_choice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.polls_choice_id_seq', 1, false);


--
-- TOC entry 2375 (class 0 OID 0)
-- Dependencies: 216
-- Name: polls_controlclases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.polls_controlclases_id_seq', 3, true);


--
-- TOC entry 2376 (class 0 OID 0)
-- Dependencies: 212
-- Name: polls_designacionjefeasignatura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.polls_designacionjefeasignatura_id_seq', 2, true);


--
-- TOC entry 2377 (class 0 OID 0)
-- Dependencies: 214
-- Name: polls_evaluacionprofesor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.polls_evaluacionprofesor_id_seq', 2, true);


--
-- TOC entry 2378 (class 0 OID 0)
-- Dependencies: 210
-- Name: polls_planclases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.polls_planclases_id_seq', 12, true);


--
-- TOC entry 2379 (class 0 OID 0)
-- Dependencies: 208
-- Name: polls_plantrabajo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.polls_plantrabajo_id_seq', 37, true);


--
-- TOC entry 2380 (class 0 OID 0)
-- Dependencies: 204
-- Name: polls_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.polls_question_id_seq', 3, true);


--
-- TOC entry 2135 (class 2606 OID 144432)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2140 (class 2606 OID 144359)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2143 (class 2606 OID 144322)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2137 (class 2606 OID 144312)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2130 (class 2606 OID 144350)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2132 (class 2606 OID 144304)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2151 (class 2606 OID 144340)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2154 (class 2606 OID 144374)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2145 (class 2606 OID 144330)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2157 (class 2606 OID 144348)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2160 (class 2606 OID 144388)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2148 (class 2606 OID 144426)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2163 (class 2606 OID 144412)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2125 (class 2606 OID 144296)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2127 (class 2606 OID 144294)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2123 (class 2606 OID 144286)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2167 (class 2606 OID 144441)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2172 (class 2606 OID 144460)
-- Name: polls_choice polls_choice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_choice
    ADD CONSTRAINT polls_choice_pkey PRIMARY KEY (id);


--
-- TOC entry 2183 (class 2606 OID 144512)
-- Name: polls_controlclases polls_controlclases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_controlclases
    ADD CONSTRAINT polls_controlclases_pkey PRIMARY KEY (id);


--
-- TOC entry 2179 (class 2606 OID 144493)
-- Name: polls_designacionjefeasignatura polls_designacionjefeasignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_designacionjefeasignatura
    ADD CONSTRAINT polls_designacionjefeasignatura_pkey PRIMARY KEY (id);


--
-- TOC entry 2181 (class 2606 OID 144501)
-- Name: polls_evaluacionprofesor polls_evaluacionprofesor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_evaluacionprofesor
    ADD CONSTRAINT polls_evaluacionprofesor_pkey PRIMARY KEY (id);


--
-- TOC entry 2177 (class 2606 OID 144485)
-- Name: polls_planclases polls_planclases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_planclases
    ADD CONSTRAINT polls_planclases_pkey PRIMARY KEY (id);


--
-- TOC entry 2175 (class 2606 OID 144474)
-- Name: polls_plantrabajo polls_plantrabajo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_plantrabajo
    ADD CONSTRAINT polls_plantrabajo_pkey PRIMARY KEY (id);


--
-- TOC entry 2170 (class 2606 OID 144452)
-- Name: polls_question polls_question_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_question
    ADD CONSTRAINT polls_question_pkey PRIMARY KEY (id);


--
-- TOC entry 2133 (class 1259 OID 144433)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2138 (class 1259 OID 144370)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2141 (class 1259 OID 144371)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2128 (class 1259 OID 144356)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2149 (class 1259 OID 144386)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2152 (class 1259 OID 144385)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2155 (class 1259 OID 144400)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2158 (class 1259 OID 144399)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2146 (class 1259 OID 144427)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2161 (class 1259 OID 144423)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2164 (class 1259 OID 144424)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2165 (class 1259 OID 144443)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2168 (class 1259 OID 144442)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2173 (class 1259 OID 144466)
-- Name: polls_choice_question_id_c5b4b260; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX polls_choice_question_id_c5b4b260 ON public.polls_choice USING btree (question_id);


--
-- TOC entry 2186 (class 2606 OID 144365)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2185 (class 2606 OID 144360)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2184 (class 2606 OID 144351)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2188 (class 2606 OID 144380)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2187 (class 2606 OID 144375)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2190 (class 2606 OID 144394)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2189 (class 2606 OID 144389)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2191 (class 2606 OID 144413)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2192 (class 2606 OID 144418)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2193 (class 2606 OID 144461)
-- Name: polls_choice polls_choice_question_id_c5b4b260_fk_polls_question_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_choice
    ADD CONSTRAINT polls_choice_question_id_c5b4b260_fk_polls_question_id FOREIGN KEY (question_id) REFERENCES public.polls_question(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2022-02-16 22:07:24 CST

--
-- PostgreSQL database dump complete
--

