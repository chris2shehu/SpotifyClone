--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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
-- Name: album; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.album (
    album_id integer NOT NULL,
    album_name text NOT NULL,
    fk_album_artist_id integer,
    fk_genre_id integer
);


ALTER TABLE public.album OWNER TO postgres;

--
-- Name: album_album_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.album_album_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_album_id_seq OWNER TO postgres;

--
-- Name: album_album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.album_album_id_seq OWNED BY public.album.album_id;


--
-- Name: artist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artist (
    artist_id integer NOT NULL,
    artist_name text NOT NULL
);


ALTER TABLE public.artist OWNER TO postgres;

--
-- Name: artist_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.artist_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_artist_id_seq OWNER TO postgres;

--
-- Name: artist_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.artist_artist_id_seq OWNED BY public.artist.artist_id;


--
-- Name: genre_c; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genre_c (
    genre_id integer NOT NULL,
    genre text
);


ALTER TABLE public.genre_c OWNER TO postgres;

--
-- Name: genre_c_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genre_c_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genre_c_genre_id_seq OWNER TO postgres;

--
-- Name: genre_c_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genre_c_genre_id_seq OWNED BY public.genre_c.genre_id;


--
-- Name: pref_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pref_list (
    pref_id integer NOT NULL,
    genre_id integer,
    fk_user_id integer,
    fk_genre_id integer
);


ALTER TABLE public.pref_list OWNER TO postgres;

--
-- Name: pref_list_pref_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pref_list_pref_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pref_list_pref_id_seq OWNER TO postgres;

--
-- Name: pref_list_pref_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pref_list_pref_id_seq OWNED BY public.pref_list.pref_id;


--
-- Name: song; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.song (
    song_id integer NOT NULL,
    song_name text NOT NULL,
    song_release_date date,
    fk_song_artist_id integer,
    fk_genre_id integer,
    fk_album_id integer
);


ALTER TABLE public.song OWNER TO postgres;

--
-- Name: song_song_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.song_song_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.song_song_id_seq OWNER TO postgres;

--
-- Name: song_song_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.song_song_id_seq OWNED BY public.song.song_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username text NOT NULL,
    password text NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: album album_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album ALTER COLUMN album_id SET DEFAULT nextval('public.album_album_id_seq'::regclass);


--
-- Name: artist artist_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artist ALTER COLUMN artist_id SET DEFAULT nextval('public.artist_artist_id_seq'::regclass);


--
-- Name: genre_c genre_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genre_c ALTER COLUMN genre_id SET DEFAULT nextval('public.genre_c_genre_id_seq'::regclass);


--
-- Name: pref_list pref_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pref_list ALTER COLUMN pref_id SET DEFAULT nextval('public.pref_list_pref_id_seq'::regclass);


--
-- Name: song song_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.song ALTER COLUMN song_id SET DEFAULT nextval('public.song_song_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: album; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.album (album_id, album_name, fk_album_artist_id, fk_genre_id) FROM stdin;
\.


--
-- Data for Name: artist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artist (artist_id, artist_name) FROM stdin;
\.


--
-- Data for Name: genre_c; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genre_c (genre_id, genre) FROM stdin;
\.


--
-- Data for Name: pref_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pref_list (pref_id, genre_id, fk_user_id, fk_genre_id) FROM stdin;
\.


--
-- Data for Name: song; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.song (song_id, song_name, song_release_date, fk_song_artist_id, fk_genre_id, fk_album_id) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, username, password) FROM stdin;
\.


--
-- Name: album_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.album_album_id_seq', 1, false);


--
-- Name: artist_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artist_artist_id_seq', 1, false);


--
-- Name: genre_c_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genre_c_genre_id_seq', 1, false);


--
-- Name: pref_list_pref_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pref_list_pref_id_seq', 1, false);


--
-- Name: song_song_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.song_song_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 1, false);


--
-- Name: album album_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pkey PRIMARY KEY (album_id);


--
-- Name: artist artist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artist
    ADD CONSTRAINT artist_pkey PRIMARY KEY (artist_id);


--
-- Name: genre_c genre_c_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genre_c
    ADD CONSTRAINT genre_c_pkey PRIMARY KEY (genre_id);


--
-- Name: pref_list pref_list_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pref_list
    ADD CONSTRAINT pref_list_pkey PRIMARY KEY (pref_id);


--
-- Name: song song_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.song
    ADD CONSTRAINT song_pkey PRIMARY KEY (song_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: album fk_album_artist_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT fk_album_artist_id FOREIGN KEY (fk_album_artist_id) REFERENCES public.artist(artist_id);


--
-- Name: song fk_album_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.song
    ADD CONSTRAINT fk_album_id FOREIGN KEY (fk_album_id) REFERENCES public.album(album_id);


--
-- Name: pref_list fk_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pref_list
    ADD CONSTRAINT fk_genre_id FOREIGN KEY (fk_genre_id) REFERENCES public.genre_c(genre_id);


--
-- Name: album fk_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT fk_genre_id FOREIGN KEY (fk_genre_id) REFERENCES public.genre_c(genre_id);


--
-- Name: song fk_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.song
    ADD CONSTRAINT fk_genre_id FOREIGN KEY (fk_genre_id) REFERENCES public.genre_c(genre_id);


--
-- Name: song fk_song_artist_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.song
    ADD CONSTRAINT fk_song_artist_id FOREIGN KEY (fk_song_artist_id) REFERENCES public.artist(artist_id);


--
-- Name: pref_list fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pref_list
    ADD CONSTRAINT fk_user_id FOREIGN KEY (fk_user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

    