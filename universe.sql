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
-- Name: cool_other; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cool_other (
    name character varying(30) NOT NULL,
    cool_other_id integer NOT NULL,
    type_object character varying(30)
);


ALTER TABLE public.cool_other OWNER TO freecodecamp;

--
-- Name: cool_other_cool_other_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cool_other_cool_other_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cool_other_cool_other_id_seq OWNER TO freecodecamp;

--
-- Name: cool_other_cool_other_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cool_other_cool_other_id_seq OWNED BY public.cool_other.cool_other_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    shape text,
    galaxy_id integer NOT NULL,
    ly_radius integer,
    age_my integer
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
    name character varying(30) NOT NULL,
    radius_mi integer,
    cool_moon boolean,
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
    name character varying(30),
    distance_in_ly integer,
    would_visit boolean,
    star_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    spectral_type character varying(30),
    age_by numeric NOT NULL,
    galaxy_id integer,
    solar_radius real
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
-- Name: cool_other cool_other_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cool_other ALTER COLUMN cool_other_id SET DEFAULT nextval('public.cool_other_cool_other_id_seq'::regclass);


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
-- Data for Name: cool_other; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cool_other VALUES ('243 Ida', 1, 'Asteroid');
INSERT INTO public.cool_other VALUES ('Pluto', 2, 'Dwarf Planet');
INSERT INTO public.cool_other VALUES ('Eris', 3, 'Dwarf Planet');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', 'Spiral', 5, 111000, 5000);
INSERT INTO public.galaxy VALUES ('Whirlpool', 'Spiral', 6, 30000, 400);
INSERT INTO public.galaxy VALUES ('Messier 82', 'Cigar-Shaped Bar', 3, 18500, 13300);
INSERT INTO public.galaxy VALUES ('Sombrero Galaxy', 'Barred Spiral', 4, 25000, 13250);
INSERT INTO public.galaxy VALUES ('Hoags Object', 'Ring', 2, 60500, 12750);
INSERT INTO public.galaxy VALUES ('Milky Way', 'Spiral', 1, 52850, 13610);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1079, true, 1);
INSERT INTO public.moon VALUES (3, 'Europa', 970, true, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 1637, true, 4);
INSERT INTO public.moon VALUES (5, 'Callisto', 1498, true, 4);
INSERT INTO public.moon VALUES (6, 'Titan', 1600, true, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 841, true, 8);
INSERT INTO public.moon VALUES (12, 'Iaptus', 456, true, 6);
INSERT INTO public.moon VALUES (13, 'Hyperion', 84, true, 6);
INSERT INTO public.moon VALUES (8, 'Rhea', 475, true, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 165, true, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 123, true, 6);
INSERT INTO public.moon VALUES (14, 'Phobos', 7, true, 2);
INSERT INTO public.moon VALUES (15, 'Nereid', 106, false, 8);
INSERT INTO public.moon VALUES (16, 'Oberon', 473, true, 5);
INSERT INTO public.moon VALUES (17, 'Dione', 349, false, 6);
INSERT INTO public.moon VALUES (18, 'Tethys', 330, false, 6);
INSERT INTO public.moon VALUES (19, 'Epimetheus', 36, false, 6);
INSERT INTO public.moon VALUES (20, 'Titania', 490, false, 5);
INSERT INTO public.moon VALUES (21, 'Methone', 1, true, 6);
INSERT INTO public.moon VALUES (2, 'Io', 1132, true, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0, true, 7);
INSERT INTO public.planet VALUES (2, 'Mars', 0, true, 7);
INSERT INTO public.planet VALUES (3, 'Venus', 0, false, 7);
INSERT INTO public.planet VALUES (4, 'Jupiter', 0, false, 7);
INSERT INTO public.planet VALUES (5, 'Uranus', 0, false, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', 0, false, 7);
INSERT INTO public.planet VALUES (7, 'Mercury', 0, false, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 0, true, 7);
INSERT INTO public.planet VALUES (9, 'Pollux b', 34, true, 8);
INSERT INTO public.planet VALUES (11, 'Proxima Centuri b', 4, true, 10);
INSERT INTO public.planet VALUES (12, 'Proxima Centuri c', 4, true, 10);
INSERT INTO public.planet VALUES (10, 'Proxima Centuri a', 4, true, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Andromedae', 'A3V', 0, 5, 2.7);
INSERT INTO public.star VALUES (2, 'Beta Canum Venaticorum', 'G0V', 4, 6, 1.123);
INSERT INTO public.star VALUES (3, 'PSR J1719-1438', 'Millisecond Pulsar', 0, 1, 0.89);
INSERT INTO public.star VALUES (4, 'HD 140283', 'G0IV-V m-5', 12, 1, 2.04);
INSERT INTO public.star VALUES (5, 'HE 0437-5439', 'BV', 0, 1, NULL);
INSERT INTO public.star VALUES (6, 'Vega', 'A0Va', 0, 1, 2.362);
INSERT INTO public.star VALUES (7, 'Sol', 'G2V', 5, 1, 1.0009);
INSERT INTO public.star VALUES (8, 'Pollux', 'K0 III', 1, 1, 9.06);
INSERT INTO public.star VALUES (9, 'Fomalhaut', 'A3V / K5Vp / M4V', 4, 1, 1.842);
INSERT INTO public.star VALUES (10, 'Proxima Centuri', 'MV5.5Ve', 5, 1, 0);


--
-- Name: cool_other_cool_other_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cool_other_cool_other_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: cool_other cool_other_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cool_other
    ADD CONSTRAINT cool_other_name_key UNIQUE (name);


--
-- Name: cool_other cool_other_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cool_other
    ADD CONSTRAINT cool_other_pkey PRIMARY KEY (cool_other_id);


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
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
