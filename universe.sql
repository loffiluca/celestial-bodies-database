--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    blackholes integer,
    star_name text,
    alien_civilizations integer
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
    inhabitants numeric,
    holes integer,
    planet_id integer
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
    livable boolean,
    star_id integer,
    vulcanos integer
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
    dying boolean,
    galaxy_id integer,
    blue boolean
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
-- Name: supernovas; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.supernovas (
    distance_from_earth numeric,
    name character varying(60) NOT NULL,
    supernovas_id integer NOT NULL,
    bright boolean
);


ALTER TABLE public.supernovas OWNER TO freecodecamp;

--
-- Name: supernovas_supernovas_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.supernovas_supernovas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supernovas_supernovas_id_seq OWNER TO freecodecamp;

--
-- Name: supernovas_supernovas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.supernovas_supernovas_id_seq OWNED BY public.supernovas.supernovas_id;


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
-- Name: supernovas supernovas_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernovas ALTER COLUMN supernovas_id SET DEFAULT nextval('public.supernovas_supernovas_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vía Láctea', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andrómeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triángulo', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Remolino', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Molinete', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Deimos', NULL, NULL, 4);
INSERT INTO public.moon VALUES (3, 'Fobos', NULL, NULL, 4);
INSERT INTO public.moon VALUES (4, 'Calisto', NULL, NULL, 5);
INSERT INTO public.moon VALUES (5, 'Ganímedes', NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Europa', NULL, NULL, 5);
INSERT INTO public.moon VALUES (7, 'Ío', NULL, NULL, 5);
INSERT INTO public.moon VALUES (8, 'Japeto', NULL, NULL, 6);
INSERT INTO public.moon VALUES (9, 'Rea', NULL, NULL, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', NULL, NULL, 6);
INSERT INTO public.moon VALUES (11, 'Encélado', NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Titán', NULL, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Umbriel', NULL, NULL, 7);
INSERT INTO public.moon VALUES (14, 'Ariel', NULL, NULL, 7);
INSERT INTO public.moon VALUES (15, 'Miranda', NULL, NULL, 7);
INSERT INTO public.moon VALUES (16, 'Oberón', NULL, NULL, 7);
INSERT INTO public.moon VALUES (17, 'Titania', NULL, NULL, 7);
INSERT INTO public.moon VALUES (18, 'Proteo', NULL, NULL, 8);
INSERT INTO public.moon VALUES (19, 'Nereida', NULL, NULL, 8);
INSERT INTO public.moon VALUES (20, 'Tritón', NULL, NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', false, 2, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', false, 2, NULL);
INSERT INTO public.planet VALUES (3, 'Tierra', true, 2, NULL);
INSERT INTO public.planet VALUES (4, 'Marte', false, 2, NULL);
INSERT INTO public.planet VALUES (5, 'Júpiter', false, 2, NULL);
INSERT INTO public.planet VALUES (6, 'Saturno', false, 2, NULL);
INSERT INTO public.planet VALUES (7, 'Urano', false, 2, NULL);
INSERT INTO public.planet VALUES (8, 'Neptuno', false, 2, NULL);
INSERT INTO public.planet VALUES (9, 'Sirius b1', false, 3, NULL);
INSERT INTO public.planet VALUES (10, 'Sirius b2', false, 3, NULL);
INSERT INTO public.planet VALUES (11, 'Alph I', false, 4, NULL);
INSERT INTO public.planet VALUES (12, 'Alph II', false, 4, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sol', NULL, 1, NULL);
INSERT INTO public.star VALUES (3, 'Sirius', NULL, 1, NULL);
INSERT INTO public.star VALUES (4, 'Alpheratz', NULL, 2, NULL);
INSERT INTO public.star VALUES (5, 'Betelgeuse', NULL, 1, NULL);
INSERT INTO public.star VALUES (6, 'Rigel', NULL, 1, NULL);
INSERT INTO public.star VALUES (7, 'Mirach', NULL, 6, NULL);


--
-- Data for Name: supernovas; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.supernovas VALUES (168000, 'SN 1987A', 1, true);
INSERT INTO public.supernovas VALUES (6500, 'SN 1054', 2, true);
INSERT INTO public.supernovas VALUES (8000, 'SN 1572', 3, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: supernovas_supernovas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.supernovas_supernovas_id_seq', 3, true);


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
-- Name: supernovas supernovas_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernovas
    ADD CONSTRAINT supernovas_name_key UNIQUE (name);


--
-- Name: supernovas supernovas_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernovas
    ADD CONSTRAINT supernovas_pkey PRIMARY KEY (supernovas_id);


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

