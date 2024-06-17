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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: dfe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dfe (
    dfe_id integer NOT NULL,
    name character varying(60) NOT NULL,
    distance integer NOT NULL
);


ALTER TABLE public.dfe OWNER TO freecodecamp;

--
-- Name: dfe_dfe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dfe_dfe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dfe_dfe_id_seq OWNER TO freecodecamp;

--
-- Name: dfe_dfe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dfe_dfe_id_seq OWNED BY public.dfe.dfe_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    size integer NOT NULL,
    blackhole boolean,
    good_bad boolean,
    proverb text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    size integer NOT NULL,
    planet_id integer,
    population numeric(2,1),
    proverb text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    size integer NOT NULL,
    star_id integer,
    population numeric(2,1),
    proverb text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    size integer NOT NULL,
    galaxy_id integer,
    population numeric(2,1)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: dfe dfe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dfe ALTER COLUMN dfe_id SET DEFAULT nextval('public.dfe_dfe_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: dfe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dfe VALUES (1, 'America', 30);
INSERT INTO public.dfe VALUES (2, 'Russia', 40);
INSERT INTO public.dfe VALUES (3, 'Other', 35);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g0', 1, true, true, 'justdoit');
INSERT INTO public.galaxy VALUES (2, 'g1', 2, true, false, 'justgorforit');
INSERT INTO public.galaxy VALUES (3, 'g3', 4, false, false, 'asdas');
INSERT INTO public.galaxy VALUES (4, 'g4', 5, false, true, 'asdasd');
INSERT INTO public.galaxy VALUES (5, 'g6', 7, false, true, 'asdae');
INSERT INTO public.galaxy VALUES (6, 'g8', 9, true, true, 'mada');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm0', 1, 1, 0.1, 'keremama');
INSERT INTO public.moon VALUES (2, 'm1', 2, 2, 0.2, 'keremamae');
INSERT INTO public.moon VALUES (3, 'm2', 3, 3, 0.3, 'keremamaee');
INSERT INTO public.moon VALUES (4, 'm3', 4, 4, 0.4, 'kerdemamaee');
INSERT INTO public.moon VALUES (5, 'm4', 5, 5, 0.5, 'kerdemamasdaee');
INSERT INTO public.moon VALUES (6, 'm5', 6, 6, 0.6, 'kerdeasmamasdaee');
INSERT INTO public.moon VALUES (10, 'm6', 7, 8, 0.7, 'kasderdeasmamasdaee');
INSERT INTO public.moon VALUES (11, 'm7', 8, 9, 0.8, 'kasderdeasmamasdaee');
INSERT INTO public.moon VALUES (12, 'm8', 9, 10, 0.9, 'kasderdeasmamasdaee');
INSERT INTO public.moon VALUES (13, 'm9', 10, 11, 1.0, 'kasderdeasmamasdaee');
INSERT INTO public.moon VALUES (14, 'm10', 11, 12, 1.1, 'kasderdeasmamasdaee');
INSERT INTO public.moon VALUES (15, 'm11', 12, 12, 1.1, 'kasderdeasmamasdaee');
INSERT INTO public.moon VALUES (16, 'm12', 13, 12, 1.1, 'kasderdeasmamasdaee');
INSERT INTO public.moon VALUES (17, 'm13', 14, 12, 1.1, 'kasderdeasmamasdaee');
INSERT INTO public.moon VALUES (18, 'm14', 15, 12, 1.1, 'kasderdeasmamasdaee');
INSERT INTO public.moon VALUES (19, 'm15', 16, 12, 1.1, 'kasderdeasmamasdaee');
INSERT INTO public.moon VALUES (20, 'm16', 17, 12, 1.1, 'kasderdeasmamasdaee');
INSERT INTO public.moon VALUES (21, 'm17', 18, 12, 1.1, 'kasderdeasmamasdaee');
INSERT INTO public.moon VALUES (22, 'm18', 19, 12, 1.1, 'kasderdeasmamasdaee');
INSERT INTO public.moon VALUES (23, 'm19', 20, 12, 1.1, 'kasderdeasmamasdaee');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p0', 1, 1, 0.1, 'keremama');
INSERT INTO public.planet VALUES (2, 'p1', 2, 2, 1.1, 'sup');
INSERT INTO public.planet VALUES (3, 'p2', 3, 3, 2.1, 'sudp');
INSERT INTO public.planet VALUES (4, 'p3', 4, 4, 3.1, 'sp');
INSERT INTO public.planet VALUES (5, 'p4', 5, 5, 4.1, 'sp');
INSERT INTO public.planet VALUES (6, 'p5', 6, 6, 5.1, 'sp');
INSERT INTO public.planet VALUES (8, 'p6', 7, 1, 6.1, 'sapd');
INSERT INTO public.planet VALUES (9, 'p7', 8, 2, 7.1, 'sapd');
INSERT INTO public.planet VALUES (10, 'p8', 9, 3, 8.1, 'sapd');
INSERT INTO public.planet VALUES (11, 'p9', 10, 4, 9.1, 'sapde');
INSERT INTO public.planet VALUES (12, 'p10', 11, 5, 9.2, 'saepde');
INSERT INTO public.planet VALUES (13, 'p11', 12, 6, 9.5, 'seaepde');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's0', 1, 1, 2.1);
INSERT INTO public.star VALUES (2, 's1', 2, 2, 3.1);
INSERT INTO public.star VALUES (3, 's2', 3, 3, 4.1);
INSERT INTO public.star VALUES (4, 's3', 4, 4, 5.1);
INSERT INTO public.star VALUES (5, 's4', 5, 5, 6.1);
INSERT INTO public.star VALUES (6, 's5', 6, 6, 7.1);


--
-- Name: dfe_dfe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dfe_dfe_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dfe dfe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dfe
    ADD CONSTRAINT dfe_name_key UNIQUE (name);


--
-- Name: dfe dfe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dfe
    ADD CONSTRAINT dfe_pkey PRIMARY KEY (dfe_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

