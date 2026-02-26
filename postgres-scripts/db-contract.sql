--
-- PostgreSQL database dump
--

\restrict atgCmDueYvlydgiOU8pnxG6gaBNiddjiWVrubNYsgqs606Q3DDs7keewODdNQVH

-- Dumped from database version 17.7 (Debian 17.7-3.pgdg13+1)
-- Dumped by pg_dump version 17.7 (Debian 17.7-3.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: main; Type: SCHEMA; Schema: -; Owner: user
--

CREATE SCHEMA main;


ALTER SCHEMA main OWNER TO "user";

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: app_candidates; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.app_candidates (
    id integer,
    district integer,
    establishment text,
    authority text,
    last_name text,
    first_name text,
    middle_name text,
    birth_date date,
    citizenship integer,
    status integer,
    application_date date,
    medicine_startdate date,
    diagnosis text,
    medicine integer,
    have_dul integer,
    dul text,
    dul_startdate date,
    dul_enddate date,
    have_snils integer,
    snils text,
    snils_startdate date,
    snils_enddate date,
    have_inn integer,
    inn text,
    inn_startdate date,
    inn_enddate date,
    petition_authority text,
    petition_date date,
    fio_petition text,
    number_resolution text,
    date_resolution date,
    status_resolution integer,
    fio_resolution text,
    contract_date date,
    order_number text,
    order_date date,
    transfer_date date,
    enrollment_date date,
    payment_date date,
    pardon_date date,
    note text,
    app_date timestamp without time zone,
    login text,
    establishment_code integer
);


ALTER TABLE main.app_candidates OWNER TO "user";

--
-- Name: app_candidates_id_seq; Type: SEQUENCE; Schema: main; Owner: user
--

CREATE SEQUENCE main.app_candidates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE main.app_candidates_id_seq OWNER TO "user";

--
-- Name: app_candidates_id_seq; Type: SEQUENCE OWNED BY; Schema: main; Owner: user
--

ALTER SEQUENCE main.app_candidates_id_seq OWNED BY main.app_candidates.id;


--
-- Name: app_status; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.app_status (
    id integer,
    app_id integer,
    status_id integer,
    status_date timestamp(6) without time zone,
    user_id integer
);


ALTER TABLE main.app_status OWNER TO "user";

--
-- Name: app_status_id_seq; Type: SEQUENCE; Schema: main; Owner: user
--

CREATE SEQUENCE main.app_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE main.app_status_id_seq OWNER TO "user";

--
-- Name: app_status_reg; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.app_status_reg (
    id bigint,
    app_id integer,
    status_id integer,
    status_date timestamp without time zone,
    user_id integer
);


ALTER TABLE main.app_status_reg OWNER TO "user";

--
-- Name: application_id_seq; Type: SEQUENCE; Schema: main; Owner: user
--

CREATE SEQUENCE main.application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE main.application_id_seq OWNER TO "user";

--
-- Name: applications; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.applications (
    id integer,
    last_name text,
    first_name text,
    middle_name text,
    birth_date date,
    phone text,
    another_phone text,
    citizenship integer,
    region integer,
    district integer,
    source integer,
    note text,
    user_id integer,
    create_date timestamp(6) without time zone,
    full_name character varying,
    specialty_diploma text,
    criminal integer,
    employment integer,
    document_person text,
    transfer integer,
    subordinate text,
    note_ip text,
    oper117_id text,
    mentor text,
    sent_117sms integer,
    call_trans integer,
    sent_ip_sms integer,
    date_visit_plan date,
    date_visit_fact date
);


ALTER TABLE main.applications OWNER TO "user";

--
-- Name: applications_reg; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.applications_reg (
    id integer,
    full_name text,
    birth_date date,
    phone text,
    specialty_diploma text,
    citizenship integer,
    region text,
    source integer,
    note text,
    user_id integer,
    create_date timestamp(6) without time zone,
    criminal integer,
    employment integer,
    documentperson text,
    transfer integer,
    subordinate text,
    dublicate_flag integer,
    district integer,
    note_ip text,
    oper117_id text,
    mentor text,
    sent_117_sms integer,
    call_trans integer,
    sent_ip_sms integer,
    date_visit_plan date,
    date_visit_fact date
);


ALTER TABLE main.applications_reg OWNER TO "user";

--
-- Name: candidates; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.candidates (
    id integer,
    application_date timestamp(6) without time zone,
    status integer,
    rank_id integer,
    last_name text,
    first_name text,
    middle_name text,
    birth_date date,
    birth_place text,
    citizenship_id integer,
    dul_type integer,
    dul_series text,
    dul_number text,
    dul_issuance_place text,
    dul_issuance_date date,
    snils text,
    inn text,
    military_card_series text,
    military_card_number text,
    military_card_place text,
    military_card_date date,
    reg_address text,
    fact_address text,
    education_id integer,
    status_family_id integer,
    social_network text,
    phone text,
    near_fio text,
    near_phone text,
    priority text,
    military_unit_doc text,
    commissariat_id integer,
    date_request_mvd date,
    personal_number text,
    instructor_id integer,
    order_number text,
    order_date date,
    note text,
    military_unit text,
    user_id integer,
    instructor_fio text,
    nationality text,
    dul_issuance_code text,
    project_order_number text,
    military_post text,
    military_specialty text,
    knowfrom integer,
    payment integer,
    category integer,
    source_app integer,
    socialpayment integer,
    employed integer
);


ALTER TABLE main.candidates OWNER TO "user";

--
-- Name: candidates_14_07_23; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.candidates_14_07_23 (
    id integer,
    application_date timestamp(6) without time zone,
    status integer,
    rank_id integer,
    last_name text,
    first_name text,
    middle_name text,
    birth_date date,
    birth_place text,
    citizenship_id integer,
    dul_type integer,
    dul_series text,
    dul_number text,
    dul_issuance_place text,
    dul_issuance_date date,
    snils text,
    inn text,
    military_card_series text,
    military_card_number text,
    military_card_place text,
    military_card_date date,
    reg_address text,
    fact_address text,
    education_id integer,
    status_family_id integer,
    social_network text,
    phone text,
    near_fio text,
    near_phone text,
    priority text,
    military_unit_doc text,
    commissariat_id integer,
    date_request_mvd date,
    personal_number text,
    instructor_id integer,
    order_number text,
    order_date date,
    note text,
    military_unit text,
    user_id integer,
    instructor_fio text,
    nationality text,
    dul_issuance_code text,
    project_order_number text,
    military_post text,
    military_specialty text,
    knowfrom integer,
    payment integer,
    category integer,
    source_app integer
);


ALTER TABLE main.candidates_14_07_23 OWNER TO "user";

--
-- Name: candidates_17_07_23; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.candidates_17_07_23 (
    id integer,
    application_date timestamp(6) without time zone,
    status integer,
    rank_id integer,
    last_name text,
    first_name text,
    middle_name text,
    birth_date date,
    birth_place text,
    citizenship_id integer,
    dul_type integer,
    dul_series text,
    dul_number text,
    dul_issuance_place text,
    dul_issuance_date date,
    snils text,
    inn text,
    military_card_series text,
    military_card_number text,
    military_card_place text,
    military_card_date date,
    reg_address text,
    fact_address text,
    education_id integer,
    status_family_id integer,
    social_network text,
    phone text,
    near_fio text,
    near_phone text,
    priority text,
    military_unit_doc text,
    commissariat_id integer,
    date_request_mvd date,
    personal_number text,
    instructor_id integer,
    order_number text,
    order_date date,
    note text,
    military_unit text,
    user_id integer,
    instructor_fio text,
    nationality text,
    dul_issuance_code text,
    project_order_number text,
    military_post text,
    military_specialty text,
    knowfrom integer,
    payment integer,
    category integer,
    source_app integer
);


ALTER TABLE main.candidates_17_07_23 OWNER TO "user";

--
-- Name: candidates_id_seq; Type: SEQUENCE; Schema: main; Owner: user
--

CREATE SEQUENCE main.candidates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE main.candidates_id_seq OWNER TO "user";

--
-- Name: candidates_id_seq; Type: SEQUENCE OWNED BY; Schema: main; Owner: user
--

ALTER SEQUENCE main.candidates_id_seq OWNED BY main.candidates.id;


--
-- Name: candidates_imp; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.candidates_imp (
    id integer,
    application_date text,
    status integer,
    rank_id integer,
    last_name text,
    first_name text,
    middle_name text,
    birth_date text,
    birth_place text,
    citizenship_id integer,
    dul_type integer,
    dul_series text,
    dul_number text,
    dul_issuance_place text,
    dul_issuance_date text,
    snils text,
    inn text,
    military_card_series text,
    military_card_number text,
    military_card_place text,
    military_card_date text,
    reg_address text,
    fact_address text,
    education_id integer,
    status_family_id integer,
    social_network text,
    phone text,
    near_fio text,
    near_phone text,
    priority text,
    military_unit_doc text,
    commissariat_id integer,
    date_request_mvd text,
    personal_number text,
    instructor_id integer,
    order_number text,
    order_date text,
    note text,
    military_unit text,
    user_id integer,
    instructor_fio text,
    nationality text,
    dul_issuance_code text,
    project_order_number text,
    military_post text,
    military_specialty text
);


ALTER TABLE main.candidates_imp OWNER TO "user";

--
-- Name: candidates_imp_id_seq; Type: SEQUENCE; Schema: main; Owner: user
--

CREATE SEQUENCE main.candidates_imp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE main.candidates_imp_id_seq OWNER TO "user";

--
-- Name: candidates_imp_id_seq; Type: SEQUENCE OWNED BY; Schema: main; Owner: user
--

ALTER SEQUENCE main.candidates_imp_id_seq OWNED BY main.candidates_imp.id;


--
-- Name: clsf_of_clsfrs; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.clsf_of_clsfrs (
    id_clsf integer,
    id_object integer,
    name_object text,
    object_options text
);


ALTER TABLE main.clsf_of_clsfrs OWNER TO "user";

--
-- Name: objects; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.objects (
    id integer,
    name text,
    parent_id integer,
    sort integer
);


ALTER TABLE main.objects OWNER TO "user";

--
-- Name: plan; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.plan (
    id integer,
    district_id integer,
    year integer,
    value integer
);


ALTER TABLE main.plan OWNER TO "user";

--
-- Name: plan_id_seq; Type: SEQUENCE; Schema: main; Owner: user
--

CREATE SEQUENCE main.plan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE main.plan_id_seq OWNER TO "user";

--
-- Name: plan_id_seq; Type: SEQUENCE OWNED BY; Schema: main; Owner: user
--

ALTER SEQUENCE main.plan_id_seq OWNED BY main.plan.id;


--
-- Name: relatives; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.relatives (
    id integer,
    candidate_id integer,
    relationship integer,
    fio text,
    phone text
);


ALTER TABLE main.relatives OWNER TO "user";

--
-- Name: relatives_id_seq; Type: SEQUENCE; Schema: main; Owner: user
--

CREATE SEQUENCE main.relatives_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE main.relatives_id_seq OWNER TO "user";

--
-- Name: relatives_id_seq; Type: SEQUENCE OWNED BY; Schema: main; Owner: user
--

ALTER SEQUENCE main.relatives_id_seq OWNED BY main.relatives.id;


--
-- Name: status_history; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.status_history (
    id integer,
    candidate_id integer,
    status_id integer,
    status_date date,
    reason text
);


ALTER TABLE main.status_history OWNER TO "user";

--
-- Name: status_history_14_07_23; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.status_history_14_07_23 (
    id integer,
    candidate_id integer,
    status_id integer,
    status_date date,
    reason text
);


ALTER TABLE main.status_history_14_07_23 OWNER TO "user";

--
-- Name: status_history_id_seq; Type: SEQUENCE; Schema: main; Owner: user
--

CREATE SEQUENCE main.status_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE main.status_history_id_seq OWNER TO "user";

--
-- Name: status_history_id_seq; Type: SEQUENCE OWNED BY; Schema: main; Owner: user
--

ALTER SEQUENCE main.status_history_id_seq OWNED BY main.status_history.id;


--
-- Name: temp_cand; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.temp_cand (
    application_date text,
    status text,
    rank_id text,
    last_name text,
    first_name text,
    middle_name text,
    birth_date text,
    birth_place text,
    citizenship_id text,
    dul_type text,
    dul_series text,
    dul_number text,
    dul_issuance_place text,
    dul_issuance_date text,
    snils text,
    inn text,
    military_card_series text,
    military_card_number text,
    military_card_place text,
    military_card_date text,
    reg_address text,
    fact_address text,
    education_id text,
    status_family_id text,
    social_network text,
    phone text,
    near_fio text,
    near_phone text,
    priority text,
    military_unit_doc text,
    commissariat_id text,
    date_request_mvd text,
    personal_number text,
    instructor_id text,
    order_number text,
    order_date text,
    note text,
    military_unit text,
    user_id text,
    instructor_fio text,
    nationality text,
    dul_issuance_code text,
    project_order_number text,
    military_post text,
    military_specialty text,
    knowfrom text,
    payment text,
    category text,
    source_app text,
    socialpayment text,
    "status_id = 5" character varying(50),
    "status_id = 6" character varying(50),
    "отмена" character varying(50),
    col smallint,
    column1 smallint,
    dr date,
    date1 date,
    date2 date,
    date3 date,
    date4 date
);


ALTER TABLE main.temp_cand OWNER TO "user";

--
-- Name: users; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.users (
    id integer,
    user_login text,
    last_name text,
    first_name text,
    middle_name text,
    id_user_organization integer,
    password text,
    role integer,
    id_user_district integer,
    "id_user_сommittee" integer
);


ALTER TABLE main.users OWNER TO "user";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: main; Owner: user
--

CREATE SEQUENCE main.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE main.users_id_seq OWNER TO "user";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: main; Owner: user
--

ALTER SEQUENCE main.users_id_seq OWNED BY main.users.id;


--
-- Name: users_objects; Type: TABLE; Schema: main; Owner: user
--

CREATE TABLE main.users_objects (
    user_id integer,
    object_id integer
);


ALTER TABLE main.users_objects OWNER TO "user";

--
-- Data for Name: app_candidates; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.app_candidates (id, district, establishment, authority, last_name, first_name, middle_name, birth_date, citizenship, status, application_date, medicine_startdate, diagnosis, medicine, have_dul, dul, dul_startdate, dul_enddate, have_snils, snils, snils_startdate, snils_enddate, have_inn, inn, inn_startdate, inn_enddate, petition_authority, petition_date, fio_petition, number_resolution, date_resolution, status_resolution, fio_resolution, contract_date, order_number, order_date, transfer_date, enrollment_date, payment_date, pardon_date, note, app_date, login, establishment_code) FROM stdin;
3	3	ТЕСТ	6546	765	1234	\N	2026-02-10	1	3	2026-02-12	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2026-02-26 16:03:16	test	14
2	2	\N	532	4123	3123	\N	2026-01-28	3	2	2026-02-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2026-02-26 16:02:57	test	1
1	1	\N	cxz	das	123	\N	2026-01-28	1	1	2026-02-13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2026-02-26 16:02:20	test	3
\.


--
-- Data for Name: app_status; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.app_status (id, app_id, status_id, status_date, user_id) FROM stdin;
\.


--
-- Data for Name: app_status_reg; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.app_status_reg (id, app_id, status_id, status_date, user_id) FROM stdin;
\.


--
-- Data for Name: applications; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.applications (id, last_name, first_name, middle_name, birth_date, phone, another_phone, citizenship, region, district, source, note, user_id, create_date, full_name, specialty_diploma, criminal, employment, document_person, transfer, subordinate, note_ip, oper117_id, mentor, sent_117sms, call_trans, sent_ip_sms, date_visit_plan, date_visit_fact) FROM stdin;
\.


--
-- Data for Name: applications_reg; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.applications_reg (id, full_name, birth_date, phone, specialty_diploma, citizenship, region, source, note, user_id, create_date, criminal, employment, documentperson, transfer, subordinate, dublicate_flag, district, note_ip, oper117_id, mentor, sent_117_sms, call_trans, sent_ip_sms, date_visit_plan, date_visit_fact) FROM stdin;
\.


--
-- Data for Name: candidates; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.candidates (id, application_date, status, rank_id, last_name, first_name, middle_name, birth_date, birth_place, citizenship_id, dul_type, dul_series, dul_number, dul_issuance_place, dul_issuance_date, snils, inn, military_card_series, military_card_number, military_card_place, military_card_date, reg_address, fact_address, education_id, status_family_id, social_network, phone, near_fio, near_phone, priority, military_unit_doc, commissariat_id, date_request_mvd, personal_number, instructor_id, order_number, order_date, note, military_unit, user_id, instructor_fio, nationality, dul_issuance_code, project_order_number, military_post, military_specialty, knowfrom, payment, category, source_app, socialpayment, employed) FROM stdin;
\.


--
-- Data for Name: candidates_14_07_23; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.candidates_14_07_23 (id, application_date, status, rank_id, last_name, first_name, middle_name, birth_date, birth_place, citizenship_id, dul_type, dul_series, dul_number, dul_issuance_place, dul_issuance_date, snils, inn, military_card_series, military_card_number, military_card_place, military_card_date, reg_address, fact_address, education_id, status_family_id, social_network, phone, near_fio, near_phone, priority, military_unit_doc, commissariat_id, date_request_mvd, personal_number, instructor_id, order_number, order_date, note, military_unit, user_id, instructor_fio, nationality, dul_issuance_code, project_order_number, military_post, military_specialty, knowfrom, payment, category, source_app) FROM stdin;
\.


--
-- Data for Name: candidates_17_07_23; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.candidates_17_07_23 (id, application_date, status, rank_id, last_name, first_name, middle_name, birth_date, birth_place, citizenship_id, dul_type, dul_series, dul_number, dul_issuance_place, dul_issuance_date, snils, inn, military_card_series, military_card_number, military_card_place, military_card_date, reg_address, fact_address, education_id, status_family_id, social_network, phone, near_fio, near_phone, priority, military_unit_doc, commissariat_id, date_request_mvd, personal_number, instructor_id, order_number, order_date, note, military_unit, user_id, instructor_fio, nationality, dul_issuance_code, project_order_number, military_post, military_specialty, knowfrom, payment, category, source_app) FROM stdin;
\.


--
-- Data for Name: candidates_imp; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.candidates_imp (id, application_date, status, rank_id, last_name, first_name, middle_name, birth_date, birth_place, citizenship_id, dul_type, dul_series, dul_number, dul_issuance_place, dul_issuance_date, snils, inn, military_card_series, military_card_number, military_card_place, military_card_date, reg_address, fact_address, education_id, status_family_id, social_network, phone, near_fio, near_phone, priority, military_unit_doc, commissariat_id, date_request_mvd, personal_number, instructor_id, order_number, order_date, note, military_unit, user_id, instructor_fio, nationality, dul_issuance_code, project_order_number, military_post, military_specialty) FROM stdin;
\.


--
-- Data for Name: clsf_of_clsfrs; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.clsf_of_clsfrs (id_clsf, id_object, name_object, object_options) FROM stdin;
1	1	Элемент 1 группы 1	{"description": "Описание элемента 1 группы 1", "active": true}
1	2	Элемент 2 группы 1	{"description": "Описание элемента 2 группы 1", "active": true}
1	3	Элемент 3 группы 1	{"description": "Описание элемента 3 группы 1", "active": true}
2	1	Элемент 1 группы 2	{"description": "Описание элемента 1 группы 2", "active": true}
2	2	Элемент 2 группы 2	{"description": "Описание элемента 2 группы 2", "active": true}
2	3	Элемент 3 группы 2	{"description": "Описание элемента 3 группы 2", "active": true}
3	1	Элемент 1 группы 3	{"description": "Описание элемента 1 группы 3", "active": true}
3	2	Элемент 2 группы 3	{"description": "Описание элемента 2 группы 3", "active": true}
3	3	Элемент 3 группы 3	{"description": "Описание элемента 3 группы 3", "active": true}
4	1	Элемент 1 группы 4	{"description": "Описание элемента 1 группы 4", "active": true}
4	2	Элемент 2 группы 4	{"description": "Описание элемента 2 группы 4", "active": true}
4	3	Элемент 3 группы 4	{"description": "Описание элемента 3 группы 4", "active": true}
5	1	Элемент 1 группы 5	{"description": "Описание элемента 1 группы 5", "active": true}
5	2	Элемент 2 группы 5	{"description": "Описание элемента 2 группы 5", "active": true}
5	3	Элемент 3 группы 5	{"description": "Описание элемента 3 группы 5", "active": true}
6	1	Элемент 1 группы 6	{"description": "Описание элемента 1 группы 6", "active": true}
6	2	Элемент 2 группы 6	{"description": "Описание элемента 2 группы 6", "active": true}
6	3	Элемент 3 группы 6	{"description": "Описание элемента 3 группы 6", "active": true}
7	1	Элемент 1 группы 7	{"description": "Описание элемента 1 группы 7", "active": true}
7	2	Элемент 2 группы 7	{"description": "Описание элемента 2 группы 7", "active": true}
7	3	Элемент 3 группы 7	{"description": "Описание элемента 3 группы 7", "active": true}
8	1	Элемент 1 группы 8	{"description": "Описание элемента 1 группы 8", "active": true}
8	2	Элемент 2 группы 8	{"description": "Описание элемента 2 группы 8", "active": true}
8	3	Элемент 3 группы 8	{"description": "Описание элемента 3 группы 8", "active": true}
9	1	Элемент 1 группы 9	{"description": "Описание элемента 1 группы 9", "active": true}
9	2	Элемент 2 группы 9	{"description": "Описание элемента 2 группы 9", "active": true}
9	3	Элемент 3 группы 9	{"description": "Описание элемента 3 группы 9", "active": true}
10	1	Элемент 1 группы 10	{"description": "Описание элемента 1 группы 10", "active": true}
10	2	Элемент 2 группы 10	{"description": "Описание элемента 2 группы 10", "active": true}
10	3	Элемент 3 группы 10	{"description": "Описание элемента 3 группы 10", "active": true}
11	1	Элемент 1 группы 11	{"description": "Описание элемента 1 группы 11", "active": true}
11	2	Элемент 2 группы 11	{"description": "Описание элемента 2 группы 11", "active": true}
11	3	Элемент 3 группы 11	{"description": "Описание элемента 3 группы 11", "active": true}
12	1	Элемент 1 группы 12	{"description": "Описание элемента 1 группы 12", "active": true}
12	2	Элемент 2 группы 12	{"description": "Описание элемента 2 группы 12", "active": true}
12	3	Элемент 3 группы 12	{"description": "Описание элемента 3 группы 12", "active": true}
13	1	Элемент 1 группы 13	{"description": "Описание элемента 1 группы 13", "active": true}
13	2	Элемент 2 группы 13	{"description": "Описание элемента 2 группы 13", "active": true}
13	3	Элемент 3 группы 13	{"description": "Описание элемента 3 группы 13", "active": true}
14	1	Элемент 1 группы 14	{"description": "Описание элемента 1 группы 14", "active": true}
14	2	Элемент 2 группы 14	{"description": "Описание элемента 2 группы 14", "active": true}
14	3	Элемент 3 группы 14	{"description": "Описание элемента 3 группы 14", "active": true}
15	1	Элемент 1 группы 15	{"description": "Описание элемента 1 группы 15", "active": true}
15	2	Элемент 2 группы 15	{"description": "Описание элемента 2 группы 15", "active": true}
15	3	Элемент 3 группы 15	{"description": "Описание элемента 3 группы 15", "active": true}
16	1	Элемент 1 группы 16	{"description": "Описание элемента 1 группы 16", "active": true}
16	2	Элемент 2 группы 16	{"description": "Описание элемента 2 группы 16", "active": true}
16	3	Элемент 3 группы 16	{"description": "Описание элемента 3 группы 16", "active": true}
17	1	Элемент 1 группы 17	{"description": "Описание элемента 1 группы 17", "active": true}
17	2	Элемент 2 группы 17	{"description": "Описание элемента 2 группы 17", "active": true}
17	3	Элемент 3 группы 17	{"description": "Описание элемента 3 группы 17", "active": true}
18	1	Элемент 1 группы 18	{"description": "Описание элемента 1 группы 18", "active": true}
18	2	Элемент 2 группы 18	{"description": "Описание элемента 2 группы 18", "active": true}
18	3	Элемент 3 группы 18	{"description": "Описание элемента 3 группы 18", "active": true}
19	1	Элемент 1 группы 19	{"description": "Описание элемента 1 группы 19", "active": true}
19	2	Элемент 2 группы 19	{"description": "Описание элемента 2 группы 19", "active": true}
19	3	Элемент 3 группы 19	{"description": "Описание элемента 3 группы 19", "active": true}
20	1	Элемент 1 группы 20	{"description": "Описание элемента 1 группы 20", "active": true}
20	2	Элемент 2 группы 20	{"description": "Описание элемента 2 группы 20", "active": true}
20	3	Элемент 3 группы 20	{"description": "Описание элемента 3 группы 20", "active": true}
21	1	Элемент 1 группы 21	{"description": "Описание элемента 1 группы 21", "active": true}
21	2	Элемент 2 группы 21	{"description": "Описание элемента 2 группы 21", "active": true}
21	3	Элемент 3 группы 21	{"description": "Описание элемента 3 группы 21", "active": true}
22	1	Элемент 1 группы 22	{"description": "Описание элемента 1 группы 22", "active": true}
22	2	Элемент 2 группы 22	{"description": "Описание элемента 2 группы 22", "active": true}
22	3	Элемент 3 группы 22	{"description": "Описание элемента 3 группы 22", "active": true}
23	1	Элемент 1 группы 23	{"description": "Описание элемента 1 группы 23", "active": true}
23	2	Элемент 2 группы 23	{"description": "Описание элемента 2 группы 23", "active": true}
23	3	Элемент 3 группы 23	{"description": "Описание элемента 3 группы 23", "active": true}
24	1	Элемент 1 группы 24	{"description": "Описание элемента 1 группы 24", "active": true}
24	2	Элемент 2 группы 24	{"description": "Описание элемента 2 группы 24", "active": true}
24	3	Элемент 3 группы 24	{"description": "Описание элемента 3 группы 24", "active": true}
25	1	Элемент 1 группы 25	{"description": "Описание элемента 1 группы 25", "active": true}
25	2	Элемент 2 группы 25	{"description": "Описание элемента 2 группы 25", "active": true}
25	3	Элемент 3 группы 25	{"description": "Описание элемента 3 группы 25", "active": true}
26	1	Элемент 1 группы 26	{"description": "Описание элемента 1 группы 26", "active": true}
26	2	Элемент 2 группы 26	{"description": "Описание элемента 2 группы 26", "active": true}
26	3	Элемент 3 группы 26	{"description": "Описание элемента 3 группы 26", "active": true}
27	1	Элемент 1 группы 27	{"description": "Описание элемента 1 группы 27", "active": true}
27	2	Элемент 2 группы 27	{"description": "Описание элемента 2 группы 27", "active": true}
27	3	Элемент 3 группы 27	{"description": "Описание элемента 3 группы 27", "active": true}
28	1	Элемент 1 группы 28	{"description": "Описание элемента 1 группы 28", "active": true}
28	2	Элемент 2 группы 28	{"description": "Описание элемента 2 группы 28", "active": true}
28	3	Элемент 3 группы 28	{"description": "Описание элемента 3 группы 28", "active": true}
29	1	Элемент 1 группы 29	{"description": "Описание элемента 1 группы 29", "active": true}
29	2	Элемент 2 группы 29	{"description": "Описание элемента 2 группы 29", "active": true}
29	3	Элемент 3 группы 29	{"description": "Описание элемента 3 группы 29", "active": true}
30	1	Элемент 1 группы 30	{"description": "Описание элемента 1 группы 30", "active": true}
30	2	Элемент 2 группы 30	{"description": "Описание элемента 2 группы 30", "active": true}
30	3	Элемент 3 группы 30	{"description": "Описание элемента 3 группы 30", "active": true}
22	14	Другие	
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.objects (id, name, parent_id, sort) FROM stdin;
\.


--
-- Data for Name: plan; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.plan (id, district_id, year, value) FROM stdin;
\.


--
-- Data for Name: relatives; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.relatives (id, candidate_id, relationship, fio, phone) FROM stdin;
\.


--
-- Data for Name: status_history; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.status_history (id, candidate_id, status_id, status_date, reason) FROM stdin;
\.


--
-- Data for Name: status_history_14_07_23; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.status_history_14_07_23 (id, candidate_id, status_id, status_date, reason) FROM stdin;
\.


--
-- Data for Name: temp_cand; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.temp_cand (application_date, status, rank_id, last_name, first_name, middle_name, birth_date, birth_place, citizenship_id, dul_type, dul_series, dul_number, dul_issuance_place, dul_issuance_date, snils, inn, military_card_series, military_card_number, military_card_place, military_card_date, reg_address, fact_address, education_id, status_family_id, social_network, phone, near_fio, near_phone, priority, military_unit_doc, commissariat_id, date_request_mvd, personal_number, instructor_id, order_number, order_date, note, military_unit, user_id, instructor_fio, nationality, dul_issuance_code, project_order_number, military_post, military_specialty, knowfrom, payment, category, source_app, socialpayment, "status_id = 5", "status_id = 6", "отмена", col, column1, dr, date1, date2, date3, date4) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.users (id, user_login, last_name, first_name, middle_name, id_user_organization, password, role, id_user_district, "id_user_сommittee") FROM stdin;
1	test	TEST	TEST	TEST	1	$2a$12$i/vzGFbdtJQd6l7S7G2uT.0fUOsjL5hJ4qt3rMCpud4hKAtrySh3.	1	1	1
\.


--
-- Data for Name: users_objects; Type: TABLE DATA; Schema: main; Owner: user
--

COPY main.users_objects (user_id, object_id) FROM stdin;
\.


--
-- Name: app_candidates_id_seq; Type: SEQUENCE SET; Schema: main; Owner: user
--

SELECT pg_catalog.setval('main.app_candidates_id_seq', 3, true);


--
-- Name: app_status_id_seq; Type: SEQUENCE SET; Schema: main; Owner: user
--

SELECT pg_catalog.setval('main.app_status_id_seq', 1, false);


--
-- Name: application_id_seq; Type: SEQUENCE SET; Schema: main; Owner: user
--

SELECT pg_catalog.setval('main.application_id_seq', 1, false);


--
-- Name: candidates_id_seq; Type: SEQUENCE SET; Schema: main; Owner: user
--

SELECT pg_catalog.setval('main.candidates_id_seq', 1, false);


--
-- Name: candidates_imp_id_seq; Type: SEQUENCE SET; Schema: main; Owner: user
--

SELECT pg_catalog.setval('main.candidates_imp_id_seq', 1, false);


--
-- Name: plan_id_seq; Type: SEQUENCE SET; Schema: main; Owner: user
--

SELECT pg_catalog.setval('main.plan_id_seq', 1, false);


--
-- Name: relatives_id_seq; Type: SEQUENCE SET; Schema: main; Owner: user
--

SELECT pg_catalog.setval('main.relatives_id_seq', 1, false);


--
-- Name: status_history_id_seq; Type: SEQUENCE SET; Schema: main; Owner: user
--

SELECT pg_catalog.setval('main.status_history_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: main; Owner: user
--

SELECT pg_catalog.setval('main.users_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

\unrestrict atgCmDueYvlydgiOU8pnxG6gaBNiddjiWVrubNYsgqs606Q3DDs7keewODdNQVH

