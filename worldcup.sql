--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (467, 2018, 'Final', 861, 862, 4, 2);
INSERT INTO public.games VALUES (468, 2018, 'Third Place', 863, 864, 2, 0);
INSERT INTO public.games VALUES (469, 2018, 'Semi-Final', 862, 864, 2, 1);
INSERT INTO public.games VALUES (470, 2018, 'Semi-Final', 861, 863, 1, 0);
INSERT INTO public.games VALUES (471, 2018, 'Quarter-Final', 862, 865, 3, 2);
INSERT INTO public.games VALUES (472, 2018, 'Quarter-Final', 864, 866, 2, 0);
INSERT INTO public.games VALUES (473, 2018, 'Quarter-Final', 863, 867, 2, 1);
INSERT INTO public.games VALUES (474, 2018, 'Quarter-Final', 861, 868, 2, 0);
INSERT INTO public.games VALUES (475, 2018, 'Eighth-Final', 864, 869, 2, 1);
INSERT INTO public.games VALUES (476, 2018, 'Eighth-Final', 866, 870, 1, 0);
INSERT INTO public.games VALUES (477, 2018, 'Eighth-Final', 863, 871, 3, 2);
INSERT INTO public.games VALUES (478, 2018, 'Eighth-Final', 867, 872, 2, 0);
INSERT INTO public.games VALUES (479, 2018, 'Eighth-Final', 862, 873, 2, 1);
INSERT INTO public.games VALUES (480, 2018, 'Eighth-Final', 865, 874, 2, 1);
INSERT INTO public.games VALUES (481, 2018, 'Eighth-Final', 868, 875, 2, 1);
INSERT INTO public.games VALUES (482, 2018, 'Eighth-Final', 861, 876, 4, 3);
INSERT INTO public.games VALUES (483, 2014, 'Final', 877, 876, 1, 0);
INSERT INTO public.games VALUES (484, 2014, 'Third Place', 878, 867, 3, 0);
INSERT INTO public.games VALUES (485, 2014, 'Semi-Final', 876, 878, 1, 0);
INSERT INTO public.games VALUES (486, 2014, 'Semi-Final', 877, 867, 7, 1);
INSERT INTO public.games VALUES (487, 2014, 'Quarter-Final', 878, 879, 1, 0);
INSERT INTO public.games VALUES (488, 2014, 'Quarter-Final', 876, 863, 1, 0);
INSERT INTO public.games VALUES (489, 2014, 'Quarter-Final', 867, 869, 2, 1);
INSERT INTO public.games VALUES (490, 2014, 'Quarter-Final', 877, 861, 1, 0);
INSERT INTO public.games VALUES (491, 2014, 'Eighth-Final', 867, 880, 2, 1);
INSERT INTO public.games VALUES (492, 2014, 'Eighth-Final', 869, 868, 2, 0);
INSERT INTO public.games VALUES (493, 2014, 'Eighth-Final', 861, 881, 2, 0);
INSERT INTO public.games VALUES (494, 2014, 'Eighth-Final', 877, 882, 2, 1);
INSERT INTO public.games VALUES (495, 2014, 'Eighth-Final', 878, 872, 2, 1);
INSERT INTO public.games VALUES (496, 2014, 'Eighth-Final', 879, 883, 2, 1);
INSERT INTO public.games VALUES (497, 2014, 'Eighth-Final', 876, 870, 1, 0);
INSERT INTO public.games VALUES (498, 2014, 'Eighth-Final', 863, 884, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (861, 'France');
INSERT INTO public.teams VALUES (862, 'Croatia');
INSERT INTO public.teams VALUES (863, 'Belgium');
INSERT INTO public.teams VALUES (864, 'England');
INSERT INTO public.teams VALUES (865, 'Russia');
INSERT INTO public.teams VALUES (866, 'Sweden');
INSERT INTO public.teams VALUES (867, 'Brazil');
INSERT INTO public.teams VALUES (868, 'Uruguay');
INSERT INTO public.teams VALUES (869, 'Colombia');
INSERT INTO public.teams VALUES (870, 'Switzerland');
INSERT INTO public.teams VALUES (871, 'Japan');
INSERT INTO public.teams VALUES (872, 'Mexico');
INSERT INTO public.teams VALUES (873, 'Denmark');
INSERT INTO public.teams VALUES (874, 'Spain');
INSERT INTO public.teams VALUES (875, 'Portugal');
INSERT INTO public.teams VALUES (876, 'Argentina');
INSERT INTO public.teams VALUES (877, 'Germany');
INSERT INTO public.teams VALUES (878, 'Netherlands');
INSERT INTO public.teams VALUES (879, 'Costa Rica');
INSERT INTO public.teams VALUES (880, 'Chile');
INSERT INTO public.teams VALUES (881, 'Nigeria');
INSERT INTO public.teams VALUES (882, 'Algeria');
INSERT INTO public.teams VALUES (883, 'Greece');
INSERT INTO public.teams VALUES (884, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 498, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 884, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

