--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    guesses_number integer,
    player_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 7, 3);
INSERT INTO public.games VALUES (2, 15, 3);
INSERT INTO public.games VALUES (3, 27, 3);
INSERT INTO public.games VALUES (4, 3, 17);
INSERT INTO public.games VALUES (5, 792, 18);
INSERT INTO public.games VALUES (6, 813, 18);
INSERT INTO public.games VALUES (7, 235, 19);
INSERT INTO public.games VALUES (8, 315, 19);
INSERT INTO public.games VALUES (9, 39, 18);
INSERT INTO public.games VALUES (10, 886, 18);
INSERT INTO public.games VALUES (11, 737, 18);
INSERT INTO public.games VALUES (12, 572, 20);
INSERT INTO public.games VALUES (13, 347, 20);
INSERT INTO public.games VALUES (14, 571, 21);
INSERT INTO public.games VALUES (15, 983, 21);
INSERT INTO public.games VALUES (16, 482, 20);
INSERT INTO public.games VALUES (17, 328, 20);
INSERT INTO public.games VALUES (18, 22, 20);
INSERT INTO public.games VALUES (19, 1, 22);
INSERT INTO public.games VALUES (20, 2, 22);
INSERT INTO public.games VALUES (21, 401, 23);
INSERT INTO public.games VALUES (22, 150, 23);
INSERT INTO public.games VALUES (23, 959, 24);
INSERT INTO public.games VALUES (24, 247, 24);
INSERT INTO public.games VALUES (25, 904, 23);
INSERT INTO public.games VALUES (26, 369, 23);
INSERT INTO public.games VALUES (27, 655, 23);
INSERT INTO public.games VALUES (28, 983, 25);
INSERT INTO public.games VALUES (29, 748, 25);
INSERT INTO public.games VALUES (30, 106, 26);
INSERT INTO public.games VALUES (31, 281, 26);
INSERT INTO public.games VALUES (32, 55, 25);
INSERT INTO public.games VALUES (33, 273, 25);
INSERT INTO public.games VALUES (34, 495, 25);
INSERT INTO public.games VALUES (35, 595, 27);
INSERT INTO public.games VALUES (36, 464, 27);
INSERT INTO public.games VALUES (37, 308, 28);
INSERT INTO public.games VALUES (38, 693, 28);
INSERT INTO public.games VALUES (39, 237, 27);
INSERT INTO public.games VALUES (40, 735, 27);
INSERT INTO public.games VALUES (41, 809, 27);
INSERT INTO public.games VALUES (42, 481, 29);
INSERT INTO public.games VALUES (43, 901, 29);
INSERT INTO public.games VALUES (44, 522, 30);
INSERT INTO public.games VALUES (45, 756, 30);
INSERT INTO public.games VALUES (46, 317, 29);
INSERT INTO public.games VALUES (47, 851, 29);
INSERT INTO public.games VALUES (48, 12, 29);
INSERT INTO public.games VALUES (49, 291, 31);
INSERT INTO public.games VALUES (50, 691, 31);
INSERT INTO public.games VALUES (51, 469, 32);
INSERT INTO public.games VALUES (52, 388, 32);
INSERT INTO public.games VALUES (53, 696, 31);
INSERT INTO public.games VALUES (54, 831, 31);
INSERT INTO public.games VALUES (55, 587, 31);
INSERT INTO public.games VALUES (56, 444, 33);
INSERT INTO public.games VALUES (57, 492, 33);
INSERT INTO public.games VALUES (58, 910, 34);
INSERT INTO public.games VALUES (59, 294, 34);
INSERT INTO public.games VALUES (60, 462, 33);
INSERT INTO public.games VALUES (61, 999, 33);
INSERT INTO public.games VALUES (62, 349, 33);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (3, 'Miauzinha');
INSERT INTO public.players VALUES (4, 'user_1674935412756');
INSERT INTO public.players VALUES (5, 'user_1674935412755');
INSERT INTO public.players VALUES (6, 'Miazuinha');
INSERT INTO public.players VALUES (7, 'user_1674936861453');
INSERT INTO public.players VALUES (8, 'user_1674936861452');
INSERT INTO public.players VALUES (9, 'user_1674938549623');
INSERT INTO public.players VALUES (10, 'user_1674938549622');
INSERT INTO public.players VALUES (11, '700]');
INSERT INTO public.players VALUES (12, 'user_1674941851232');
INSERT INTO public.players VALUES (13, 'user_1674941851231');
INSERT INTO public.players VALUES (14, 'user_1674942136647');
INSERT INTO public.players VALUES (15, 'user_1674942136646');
INSERT INTO public.players VALUES (17, 'Kawaizinha');
INSERT INTO public.players VALUES (18, 'user_1674944051993');
INSERT INTO public.players VALUES (19, 'user_1674944051992');
INSERT INTO public.players VALUES (20, 'user_1674944540405');
INSERT INTO public.players VALUES (21, 'user_1674944540404');
INSERT INTO public.players VALUES (22, 'piu');
INSERT INTO public.players VALUES (23, 'user_1674945070209');
INSERT INTO public.players VALUES (24, 'user_1674945070208');
INSERT INTO public.players VALUES (25, 'user_1674945459525');
INSERT INTO public.players VALUES (26, 'user_1674945459524');
INSERT INTO public.players VALUES (27, 'user_1674945902921');
INSERT INTO public.players VALUES (28, 'user_1674945902920');
INSERT INTO public.players VALUES (29, 'user_1674946799420');
INSERT INTO public.players VALUES (30, 'user_1674946799419');
INSERT INTO public.players VALUES (31, 'user_1674946889114');
INSERT INTO public.players VALUES (32, 'user_1674946889113');
INSERT INTO public.players VALUES (33, 'user_1674947098253');
INSERT INTO public.players VALUES (34, 'user_1674947098252');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 62, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 34, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: players players_username_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key1 UNIQUE (username);


--
-- Name: games games_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- PostgreSQL database dump complete
--

