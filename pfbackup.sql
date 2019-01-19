--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO davidchuka;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: davidchuka
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO davidchuka;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidchuka
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO davidchuka;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: davidchuka
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO davidchuka;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidchuka
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO davidchuka;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: davidchuka
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO davidchuka;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidchuka
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO davidchuka;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO davidchuka;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: davidchuka
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO davidchuka;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidchuka
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: davidchuka
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO davidchuka;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidchuka
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO davidchuka;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: davidchuka
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO davidchuka;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidchuka
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: blog_comment; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.blog_comment (
    id integer NOT NULL,
    name character varying(80) NOT NULL,
    email character varying(254) NOT NULL,
    body text NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    active boolean NOT NULL,
    post_id integer NOT NULL
);


ALTER TABLE public.blog_comment OWNER TO davidchuka;

--
-- Name: blog_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: davidchuka
--

CREATE SEQUENCE public.blog_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_comment_id_seq OWNER TO davidchuka;

--
-- Name: blog_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidchuka
--

ALTER SEQUENCE public.blog_comment_id_seq OWNED BY public.blog_comment.id;


--
-- Name: blog_post; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.blog_post (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    slug character varying(250),
    body text NOT NULL,
    publish timestamp with time zone NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    status character varying(10) NOT NULL,
    author_id integer NOT NULL,
    medium character varying(250),
    header character varying(100),
    pinned boolean NOT NULL
);


ALTER TABLE public.blog_post OWNER TO davidchuka;

--
-- Name: blog_post_id_seq; Type: SEQUENCE; Schema: public; Owner: davidchuka
--

CREATE SEQUENCE public.blog_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_post_id_seq OWNER TO davidchuka;

--
-- Name: blog_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidchuka
--

ALTER SEQUENCE public.blog_post_id_seq OWNED BY public.blog_post.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: davidchuka
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


ALTER TABLE public.django_admin_log OWNER TO davidchuka;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: davidchuka
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO davidchuka;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidchuka
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO davidchuka;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: davidchuka
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO davidchuka;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidchuka
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO davidchuka;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: davidchuka
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO davidchuka;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidchuka
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO davidchuka;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO davidchuka;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: davidchuka
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO davidchuka;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidchuka
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: django_summernote_attachment; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.django_summernote_attachment (
    id integer NOT NULL,
    name character varying(255),
    file character varying(100) NOT NULL,
    uploaded timestamp with time zone NOT NULL
);


ALTER TABLE public.django_summernote_attachment OWNER TO davidchuka;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: davidchuka
--

CREATE SEQUENCE public.django_summernote_attachment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_summernote_attachment_id_seq OWNER TO davidchuka;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidchuka
--

ALTER SEQUENCE public.django_summernote_attachment_id_seq OWNED BY public.django_summernote_attachment.id;


--
-- Name: projects_projects; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.projects_projects (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    author character varying(200) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    description character varying(140) NOT NULL,
    screenshot character varying(100),
    link character varying(100) NOT NULL
);


ALTER TABLE public.projects_projects OWNER TO davidchuka;

--
-- Name: projects_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: davidchuka
--

CREATE SEQUENCE public.projects_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_projects_id_seq OWNER TO davidchuka;

--
-- Name: projects_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidchuka
--

ALTER SEQUENCE public.projects_projects_id_seq OWNED BY public.projects_projects.id;


--
-- Name: projects_testimonial; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.projects_testimonial (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    photo character varying(100),
    testimonial text NOT NULL
);


ALTER TABLE public.projects_testimonial OWNER TO davidchuka;

--
-- Name: projects_recommendation_id_seq; Type: SEQUENCE; Schema: public; Owner: davidchuka
--

CREATE SEQUENCE public.projects_recommendation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_recommendation_id_seq OWNER TO davidchuka;

--
-- Name: projects_recommendation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidchuka
--

ALTER SEQUENCE public.projects_recommendation_id_seq OWNED BY public.projects_testimonial.id;


--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO davidchuka;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: davidchuka
--

CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO davidchuka;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidchuka
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO davidchuka;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: davidchuka
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO davidchuka;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidchuka
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: thumbnail_kvstore; Type: TABLE; Schema: public; Owner: davidchuka
--

CREATE TABLE public.thumbnail_kvstore (
    key character varying(200) NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.thumbnail_kvstore OWNER TO davidchuka;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: blog_comment id; Type: DEFAULT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.blog_comment ALTER COLUMN id SET DEFAULT nextval('public.blog_comment_id_seq'::regclass);


--
-- Name: blog_post id; Type: DEFAULT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.blog_post ALTER COLUMN id SET DEFAULT nextval('public.blog_post_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: django_summernote_attachment id; Type: DEFAULT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.django_summernote_attachment ALTER COLUMN id SET DEFAULT nextval('public.django_summernote_attachment_id_seq'::regclass);


--
-- Name: projects_projects id; Type: DEFAULT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.projects_projects ALTER COLUMN id SET DEFAULT nextval('public.projects_projects_id_seq'::regclass);


--
-- Name: projects_testimonial id; Type: DEFAULT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.projects_testimonial ALTER COLUMN id SET DEFAULT nextval('public.projects_recommendation_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add post	1	add_post
2	Can change post	1	change_post
3	Can delete post	1	delete_post
4	Can add comment	2	add_comment
5	Can change comment	2	change_comment
6	Can delete comment	2	delete_comment
7	Can add projects	3	add_projects
8	Can change projects	3	change_projects
9	Can delete projects	3	delete_projects
10	Can add testimonial	4	add_testimonial
11	Can change testimonial	4	change_testimonial
12	Can delete testimonial	4	delete_testimonial
13	Can add log entry	5	add_logentry
14	Can change log entry	5	change_logentry
15	Can delete log entry	5	delete_logentry
16	Can add permission	6	add_permission
17	Can change permission	6	change_permission
18	Can delete permission	6	delete_permission
19	Can add group	7	add_group
20	Can change group	7	change_group
21	Can delete group	7	delete_group
22	Can add user	8	add_user
23	Can change user	8	change_user
24	Can delete user	8	delete_user
25	Can add content type	9	add_contenttype
26	Can change content type	9	change_contenttype
27	Can delete content type	9	delete_contenttype
28	Can add session	10	add_session
29	Can change session	10	change_session
30	Can delete session	10	delete_session
31	Can add site	11	add_site
32	Can change site	11	change_site
33	Can delete site	11	delete_site
34	Can add attachment	12	add_attachment
35	Can change attachment	12	change_attachment
36	Can delete attachment	12	delete_attachment
37	Can add kv store	13	add_kvstore
38	Can change kv store	13	change_kvstore
39	Can delete kv store	13	delete_kvstore
40	Can add Tag	14	add_tag
41	Can change Tag	14	change_tag
42	Can delete Tag	14	delete_tag
43	Can add Tagged Item	15	add_taggeditem
44	Can change Tagged Item	15	change_taggeditem
45	Can delete Tagged Item	15	delete_taggeditem
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$TI4IhWbkZSbQ$imG2h0rhJk6r/kNTc7J6etiAkZYnxkosHF4JzkWNLgw=	2018-12-27 08:03:22.506738+00	t	davidchuka			davidnwadiogbu@gmail.com	t	t	2018-11-28 02:03:08.508901+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: blog_comment; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.blog_comment (id, name, email, body, created, updated, active, post_id) FROM stdin;
\.


--
-- Data for Name: blog_post; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.blog_post (id, title, slug, body, publish, created, updated, status, author_id, medium, header, pinned) FROM stdin;
1	My 2018 Tech Summary	my-2018-tech-summary	<p style="text-align: justify; "><b>2018 is over.</b>&nbsp;Yup, you heard that right. It literally seems like we got here just yesterday and lookie here, it's all over. Well before 2018 ends I'll have to admit, this has been the craziest year for me in tech. There has been ups and downs, highs and lows, yes and no(s) and a whole lot of victories as well as let downs.<br></p><p></p><div style="text-align: justify;">I'll be highlighting (in no particular order) some of my best experiences in tech this year. </div><div style="text-align: justify;">Do enjoy the read! 😁</div><div style="text-align: justify;"><br></div><p></p><h1 style="text-align: justify;"><span style="font-size: 24px;">﻿<b>1. Concatenate conf. (August 2018)</b></span></h1><p style="text-align: justify;">this was by far an amazing experience. I got back to Lagos from Ilorin on day 1 of concatenate and so I obviously couldn't go and on day 2 I was sooo tired but I had to force myself to attend this because, I mean, it was <a href="https://twitter.com/ConcatenateConf" target="_blank">Concatenate!!</a></p><p></p><p style="text-align: justify;">I learned and gained a lot from this event and I can't wait to see what they have in stock for next year. This year's speakers included A LOT from the abroad and then also A LOT from the mother land!&nbsp;</p><p style="text-align: justify;"><span style="font-weight: 700; font-size: 24px;"><br></span></p><p style="text-align: justify;"><span style="font-weight: 700; font-size: 24px;">2. PyConNG 2018 (September 2018)</span><br></p><p style="text-align: justify;">Now if you never saw any post about PyconNG 2018, this <a href="https://twitter.com/CNwadiogbu/status/1041033026694725633" target="_blank">tweet</a> is all you need to know how it went. PyConNG is an annual conference for Python developers in Nigeria and although this was my very first time of attending, I felt right at home. I got to meet and network with amazing people, as well as listen to great talks from awesome speakers! sigh...I'm getting emotional again. I honestly can't wait to relive the experience at the next PyConNG! This was by far my favorite conference of the year and it was the only conference I had to pay for. But I don't regret spending a single dime. Sorry, but not sorry.</p><p style="text-align: justify;"><img src="/media/django-summernote/2018-12-06/2f9bb250-1fce-4a31-8ea8-3b3c1f2ee4bf.jpeg" style="width: 100%;"><br></p><p style="text-align: center;">&nbsp;That tagline tho.<br></p><p style="text-align: justify;"><span style="font-size: 24px; font-weight: 700;"><br></span></p><p style="text-align: justify;"><span style="font-size: 24px; font-weight: 700;">3. DevFestLagos (November 2018)</span></p><p style="text-align: justify;">This year was like 'my conference' year. I attended a lot of dev conferences and dev meetups like never before and this was highly due to the fact that I was at home for about 6 months (May-October) for my <a href="http://unimaid.edu.ng/center/siwes.html" target="_blank">SIWES</a> programme. I have never been at home for up to 6 months before since I got into the University. So I seized this rare opportunity and tried to spread my wings in the developer circle as far as possible.</p><p style="text-align: justify;">DevFest Lagos came up while I was already back in school though and so I had to travel back down from Ilorin to Lagos for the event which lasted a day. It was a great experience because we (Tega and Muiz who came along with me) were catered for by GDG UNILORIN. The event was packed with developers from different backgrounds with different stories and it was an awesome time to network with these people as well as gain insights from the various sessions that took place at the event.</p><p style="text-align: justify;"><br></p><p style="text-align: justify;"><span style="font-size: 24px; font-weight: 700;">4. Django Girls Malete (October 2018)</span></p><p style="text-align: justify;">Ah yes! volunteering, being a coach! Y'all would probably sue me if I use the word <b>"amazing"</b> again so I'm going to try not to do that. But for real, django girls was....</p><p style="text-align: justify;">........amazing. 😂 Sue me, I don't care!</p><p style="text-align: justify;"><b><a href="https://djangogirls.org/" target="_blank">Django girls</a>&nbsp;</b>is basically a non profit organization and a community that empowers and helps women to organize free, one-day programming workshops by providing tools, resources and support and it takes place all over the world. There's probably a Django girls event happening around you right now.</p><p style="text-align: justify;">I had volunteered to teach high school kids the fundamentals programming at an earlier programme called <b><a href="https://africacodeweek.org/" target="_blank">Africa Code Week</a>&nbsp;</b>but for some reason, this was much more difficult. Maybe it was because at Africa Code Week, we taught these kids the basics Javascript on the browser (with the console) and Scratch while at Django girls I had to explain what Django was to a set of curious ladies who just wanted to build and deploy their first website. Honestly, I don't know. But at the end of the event I really had to appreciate those free youtube videos, PDFs and tonnes of materials people have settled down, used their time and energy to prepare, just to teach a bunch of strangers who they've never met and may never meet how to code. I realized how difficult it actually was trying to explain certain stuff in a certain way. It was a fun experience for me. My co-coaches/organizers were simply awesome people with awesome personalities and it felt like a missionary journey having me step out of my comfort zone to go to the streets of the great Malete and to the world class university! <a href="https://en.wikipedia.org/wiki/Kwara_State_University" target="_blank"><b>KWASU</b></a>!</p><p style="text-align: justify;"><img src="/media/django-summernote/2018-12-06/65b95cb0-a38e-43ec-b2c1-8a527dec4514.jpg" style="width: 698px;"><br></p><p style="text-align: justify;"><br></p><p style="text-align: justify;"><span style="font-size: 24px; font-weight: 700;">5. Africa Code Week (October 2018)</span></p><p style="text-align: justify;">Maybe I should have talked about this before Django girls but like I said earlier, this list is in no particular order. <b><a href="https://africacodeweek.org/" target="_blank">Africa Code Week</a>&nbsp;</b>is an initiative that aims at instilling digital literacy and coding skills in the young generation in Africa and I was really glad to be part of this. A team and I went to this school called Chaste intellect at Tanke, Ilorin and after teaching these kids the basic of programming and helping them build their first game with scratch for a few days. I grew so fond of them. I knew their names. I felt like they were....*sob* like they were my own.&nbsp;</p><p style="text-align: justify;">I'm just going to stop here. I don't want to get emotional again like I did when it was time to say goodbye. Africa code week was my first official time of volunteering and I'd definitely do it again if I had to.</p><p style="text-align: justify;"><br></p><p style="text-align: justify;"><br></p><p style="text-align: justify;"><span style="font-size: 24px; font-weight: 700;">5. MLH Local Hack Day Unilorin (December 2018)</span></p><p style="text-align: justify;">This was by far the most challenging task I had to take up in 2018. The first time I ever heard of <a href="https://mlh.io/" target="_blank"><b>mlh</b></a>&nbsp;or <b><a href="https://localhackday.mlh.io/" target="_blank">local hack-day</a>&nbsp;</b>was less than 2 weeks to the event and at first thought I was like "naah, its already too late, we would never get everything in place". But then at second thought I was like "hmmm, what if I actually just gave it a shot" and then I did and I could tell you with a straight face that I did not have a good night's rest for the next 10 days. Planning an event is HARD! People that are event planners by profession should have a special place in heaven because, bruhhhh! even though I feel most of the stress and panic came from the short notice, I think attending the event rather than planning it is a much more easier job and I think I would stick to that for now.</p><p style="text-align: justify;">Getting a venue for the event was difficult, getting people to register was a headache, getting sponsors for the event was worse, catering for the already registered people on the day of the event was a nightmare! I obviously wouldn't go into all it took to get our first ever mlh local hack day at the University of Ilorin up and running because that's not what you came to read but after the event, after I got texts like "Bro, we really learned a lot! thanks for this" and "You did a great job today bro! well done" a huge smile lit up on my face and I felt it was all worth it.</p><p style="text-align: justify;"><br></p><hr><p style="text-align: justify;">Okay this was a long post but I just felt I had to really take some time and do a review of 2018. I'm really grateful for how far I've come, and I can't WAIT to see what I can accomplish in the coming year! I hope we're all striving for greatness. There's no like button here but we do have a comment section! please do well to share your own experiences (in terms of what you accomplished in important areas of your life in 2018 and what you hope to accomplish in 2019 and forthcoming years). I would also appreciate it if someone could suggest a substitute for the word "amazing" because my usage quota is probably getting out of hand. If you enjoyed the read, you could share it to others as well 😉</p><p style="text-align: justify;"><br></p><p style="text-align: justify;">kay' bye 👋🏿</p>	2018-12-03 03:22:14.319307+00	2018-12-03 03:22:14.322816+00	2018-12-06 03:26:51.17866+00	published	1	\N	headers/IMG-20181201-WA0048.jpg	t
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-12-03 03:22:14.340629+00	1	2018 Tech Summary	1	[{"added": {}}]	1	1
2	2018-12-03 03:53:58.914588+00	1	2018 Tech Summary	2	[{"changed": {"fields": ["body", "tags"]}}]	1	1
3	2018-12-03 03:55:00.035581+00	1	2018 Tech Summary	2	[{"changed": {"fields": ["body", "tags"]}}]	1	1
4	2018-12-03 03:58:58.457527+00	1	Tambo (coming soon)	1	[{"added": {}}]	3	1
5	2018-12-03 04:17:24.920398+00	2	GON Studios (coming soon)	1	[{"added": {}}]	3	1
6	2018-12-03 05:00:16.182777+00	2	GON Studios (coming soon)	2	[{"changed": {"fields": ["technology", "screenshot"]}}]	3	1
7	2018-12-03 05:05:01.818381+00	1	Catherine Wama	1	[{"added": {}}]	4	1
8	2018-12-03 05:05:59.566408+00	1	Catherine Wama	2	[{"changed": {"fields": ["photo"]}}]	4	1
9	2018-12-03 05:06:24.496385+00	1	Catherine Wama	2	[]	4	1
10	2018-12-03 05:06:50.519837+00	1	Catherine Wama	2	[{"changed": {"fields": ["photo"]}}]	4	1
11	2018-12-03 05:07:13.168755+00	1	Catherine Wama	3		4	1
12	2018-12-05 23:12:33.582596+00	1	My 2018 Tech Summary	2	[{"changed": {"fields": ["title", "slug", "body", "tags"]}}]	1	1
13	2018-12-06 03:05:20.455837+00	1	My 2018 Tech Summary	2	[{"changed": {"fields": ["body", "tags"]}}]	1	1
14	2018-12-06 03:26:51.184712+00	1	My 2018 Tech Summary	2	[{"changed": {"fields": ["body", "tags"]}}]	1	1
15	2018-12-27 08:03:53.450114+00	2	GON Studios (coming soon)	3		3	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	blog	post
2	blog	comment
3	projects	projects
4	projects	testimonial
5	admin	logentry
6	auth	permission
7	auth	group
8	auth	user
9	contenttypes	contenttype
10	sessions	session
11	sites	site
12	django_summernote	attachment
13	thumbnail	kvstore
14	taggit	tag
15	taggit	taggeditem
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-11-28 02:01:24.922543+00
2	auth	0001_initial	2018-11-28 02:01:24.987474+00
3	admin	0001_initial	2018-11-28 02:01:25.010116+00
4	admin	0002_logentry_remove_auto_add	2018-11-28 02:01:25.020191+00
5	contenttypes	0002_remove_content_type_name	2018-11-28 02:01:25.039982+00
6	auth	0002_alter_permission_name_max_length	2018-11-28 02:01:25.047401+00
7	auth	0003_alter_user_email_max_length	2018-11-28 02:01:25.05647+00
8	auth	0004_alter_user_username_opts	2018-11-28 02:01:25.06487+00
9	auth	0005_alter_user_last_login_null	2018-11-28 02:01:25.073889+00
10	auth	0006_require_contenttypes_0002	2018-11-28 02:01:25.075428+00
11	auth	0007_alter_validators_add_error_messages	2018-11-28 02:01:25.084004+00
12	auth	0008_alter_user_username_max_length	2018-11-28 02:01:25.096737+00
13	auth	0009_alter_user_last_name_max_length	2018-11-28 02:01:25.107296+00
14	taggit	0001_initial	2018-11-28 02:01:25.140163+00
15	taggit	0002_auto_20150616_2121	2018-11-28 02:01:25.149363+00
16	blog	0001_initial	2018-11-28 02:01:25.171949+00
17	blog	0002_post_medium	2018-11-28 02:01:25.183865+00
18	blog	0003_comment	2018-11-28 02:01:25.204522+00
19	blog	0004_post_tags	2018-11-28 02:01:25.217785+00
20	blog	0005_post_header	2018-11-28 02:01:25.240279+00
21	blog	0006_post_pinned	2018-11-28 02:01:25.284144+00
22	blog	0007_auto_20181005_0751	2018-11-28 02:01:25.296532+00
23	blog	0008_auto_20181005_1445	2018-11-28 02:01:25.330386+00
24	blog	0009_pinnedpost_is_pinned	2018-11-28 02:01:25.344367+00
25	blog	0010_auto_20181005_1945	2018-11-28 02:01:25.379264+00
26	blog	0011_pinnedpost	2018-11-28 02:01:25.399163+00
27	blog	0012_auto_20181009_0834	2018-11-28 02:01:25.439931+00
28	blog	0013_auto_20181010_1304	2018-11-28 02:01:25.451974+00
29	django_summernote	0001_initial	2018-11-28 02:01:25.458678+00
30	django_summernote	0002_update-help_text	2018-11-28 02:01:25.462385+00
31	projects	0001_initial	2018-11-28 02:01:25.468367+00
32	projects	0002_auto_20181006_1931	2018-11-28 02:01:25.50259+00
33	projects	0003_auto_20181006_1959	2018-11-28 02:01:25.514745+00
34	projects	0004_auto_20181006_2002	2018-11-28 02:01:25.521712+00
35	projects	0005_auto_20181009_0834	2018-11-28 02:01:25.533365+00
36	projects	0006_auto_20181009_0836	2018-11-28 02:01:25.54232+00
37	projects	0007_auto_20181010_2302	2018-11-28 02:01:25.563536+00
38	sessions	0001_initial	2018-11-28 02:01:25.573563+00
39	sites	0001_initial	2018-11-28 02:01:25.580071+00
40	sites	0002_alter_domain_unique	2018-11-28 02:01:25.586981+00
41	thumbnail	0001_initial	2018-11-28 02:01:25.595927+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
3m8q5ycgrvm155whcc6ck0z9gwd0alw9	ZTQ2MGMwMDgyMWY4Mjg4NjhkYjBhYWMwMmY1MWY1YWFlMjgyYjJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OGRhMThlYTViOWE4MGMyZjQ2NzljMjc2ODg4NjIzOGE4ZDI0NWRjIn0=	2018-12-16 23:09:08.424006+00
nrz3sa3jfvynsnxifty9sevqgwj6a92n	ZTQ2MGMwMDgyMWY4Mjg4NjhkYjBhYWMwMmY1MWY1YWFlMjgyYjJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OGRhMThlYTViOWE4MGMyZjQ2NzljMjc2ODg4NjIzOGE4ZDI0NWRjIn0=	2018-12-17 03:56:15.228555+00
9y7vqmjw2oae4nf9i1toifnjdg9xzi40	ZTQ2MGMwMDgyMWY4Mjg4NjhkYjBhYWMwMmY1MWY1YWFlMjgyYjJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OGRhMThlYTViOWE4MGMyZjQ2NzljMjc2ODg4NjIzOGE4ZDI0NWRjIn0=	2019-01-10 08:03:22.50945+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: django_summernote_attachment; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.django_summernote_attachment (id, name, file, uploaded) FROM stdin;
1	20180811_183238.jpg	django-summernote/2018-12-03/1a8c7934-7aa8-4b47-8264-4e0693b0c299.jpg	2018-12-03 03:21:14.225411+00
2	20180811_184734.jpg	django-summernote/2018-12-03/f149761f-12ab-4d66-aee6-fb8d70b49178.jpg	2018-12-03 03:36:41.028912+00
3	20180811_183238.jpg	django-summernote/2018-12-03/6abde8f3-4f33-4216-bd61-fcaa4c4b65f1.jpg	2018-12-03 03:39:11.871964+00
4	20180811_184729.jpg	django-summernote/2018-12-03/6f39eda9-64f4-4629-bdf1-aa964088ca13.jpg	2018-12-03 03:40:06.413512+00
5	20180811_183238.jpg	django-summernote/2018-12-03/76170397-5ad4-4784-b74d-9a0f6d819775.jpg	2018-12-03 03:40:59.687773+00
6	il_fullxfull.896365383_fts9_0.jpg	django-summernote/2018-12-03/a2f24144-6440-420a-b003-f0eee77af098.jpg	2018-12-03 03:51:15.487987+00
7	20180811_184949.jpg	django-summernote/2018-12-03/3d3e1ee9-1e0e-4b35-8300-df2b66546a52.jpg	2018-12-03 03:52:53.796194+00
8	Screenshot from 2018-08-14 12-51-28.png	django-summernote/2018-12-03/a96368e7-48d7-48b4-9854-062531611da1.png	2018-12-03 03:53:48.153971+00
9	pyhontainer.jpeg	django-summernote/2018-12-06/2f9bb250-1fce-4a31-8ea8-3b3c1f2ee4bf.jpeg	2018-12-06 03:16:33.130144+00
10	IMG_7827.jpg	django-summernote/2018-12-06/65b95cb0-a38e-43ec-b2c1-8a527dec4514.jpg	2018-12-06 03:20:26.301815+00
\.


--
-- Data for Name: projects_projects; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.projects_projects (id, name, author, created_date, description, screenshot, link) FROM stdin;
1	Tambo (coming soon)	team	2018-12-03 03:56:47+00	A team of amazing people and I created a food ordering app to promote the businesses of student vendors in my University.	project_screenshots/tam_logo_2.jpg	http://tambo.org
\.


--
-- Data for Name: projects_testimonial; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.projects_testimonial (id, name, photo, testimonial) FROM stdin;
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
1	story	story
2	tech	tech
3	Android	android
4	iOS	ios
5	JavaScript	javascript
6	React-Native	react-native
7	React	react
8	Gatsby	gatsby
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
1	1	1	1
2	1	1	2
3	1	3	3
4	1	3	4
5	1	3	5
6	1	3	6
7	1	3	7
\.


--
-- Data for Name: thumbnail_kvstore; Type: TABLE DATA; Schema: public; Owner: davidchuka
--

COPY public.thumbnail_kvstore (key, value) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidchuka
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidchuka
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidchuka
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 45, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidchuka
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidchuka
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidchuka
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: blog_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidchuka
--

SELECT pg_catalog.setval('public.blog_comment_id_seq', 1, false);


--
-- Name: blog_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidchuka
--

SELECT pg_catalog.setval('public.blog_post_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidchuka
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 15, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidchuka
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidchuka
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 41, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidchuka
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidchuka
--

SELECT pg_catalog.setval('public.django_summernote_attachment_id_seq', 10, true);


--
-- Name: projects_projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidchuka
--

SELECT pg_catalog.setval('public.projects_projects_id_seq', 2, true);


--
-- Name: projects_recommendation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidchuka
--

SELECT pg_catalog.setval('public.projects_recommendation_id_seq', 1, true);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidchuka
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 8, true);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidchuka
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 9, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: blog_comment blog_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_pkey PRIMARY KEY (id);


--
-- Name: blog_post blog_post_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: django_summernote_attachment django_summernote_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.django_summernote_attachment
    ADD CONSTRAINT django_summernote_attachment_pkey PRIMARY KEY (id);


--
-- Name: projects_projects projects_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.projects_projects
    ADD CONSTRAINT projects_projects_pkey PRIMARY KEY (id);


--
-- Name: projects_testimonial projects_recommendation_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.projects_testimonial
    ADD CONSTRAINT projects_recommendation_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: thumbnail_kvstore thumbnail_kvstore_pkey; Type: CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.thumbnail_kvstore
    ADD CONSTRAINT thumbnail_kvstore_pkey PRIMARY KEY (key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: blog_comment_post_id_580e96ef; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX blog_comment_post_id_580e96ef ON public.blog_comment USING btree (post_id);


--
-- Name: blog_post_author_id_dd7a8485; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX blog_post_author_id_dd7a8485 ON public.blog_post USING btree (author_id);


--
-- Name: blog_post_slug_b95473f2; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX blog_post_slug_b95473f2 ON public.blog_post USING btree (slug);


--
-- Name: blog_post_slug_b95473f2_like; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX blog_post_slug_b95473f2_like ON public.blog_post USING btree (slug varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: thumbnail_kvstore_key_3f850178_like; Type: INDEX; Schema: public; Owner: davidchuka
--

CREATE INDEX thumbnail_kvstore_key_3f850178_like ON public.thumbnail_kvstore USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_comment blog_comment_post_id_580e96ef_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_post_id_580e96ef_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post blog_post_author_id_dd7a8485_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_author_id_dd7a8485_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: davidchuka
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

