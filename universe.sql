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
    name character varying(100) NOT NULL,
    age integer NOT NULL,
    neighbor text,
    is_big boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: maintable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.maintable (
    name character varying(100) NOT NULL,
    day date NOT NULL,
    month text,
    maintable_id integer NOT NULL
);


ALTER TABLE public.maintable OWNER TO freecodecamp;

--
-- Name: maintable_maintable_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.maintable_maintable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.maintable_maintable_id_seq OWNER TO freecodecamp;

--
-- Name: maintable_maintable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.maintable_maintable_id_seq OWNED BY public.maintable.maintable_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(100) NOT NULL,
    age integer NOT NULL,
    moon_id integer NOT NULL,
    life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age integer NOT NULL,
    life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age integer NOT NULL,
    distance numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: maintable maintable_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.maintable ALTER COLUMN maintable_id SET DEFAULT nextval('public.maintable_maintable_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('MilkyWay', 5000, 'Not Sure', true, 1);
INSERT INTO public.galaxy VALUES ('CanisMajor', 6000, 'Not Sure', true, 2);
INSERT INTO public.galaxy VALUES ('Sagittarius', 7000, 'Not Sure', true, 3);
INSERT INTO public.galaxy VALUES ('LargeMagellanic', 8000, 'Not Sure', true, 4);
INSERT INTO public.galaxy VALUES ('SmallMagellanic', 9000, 'Not Sure', true, 5);
INSERT INTO public.galaxy VALUES ('Ursa', 4000, 'Not Sure', true, 6);


--
-- Data for Name: maintable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.maintable VALUES ('google', '2025-08-29', 'August', 1);
INSERT INTO public.maintable VALUES ('chatgpt', '2025-07-30', 'July', 2);
INSERT INTO public.maintable VALUES ('book', '2025-06-30', 'June', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Enceladus', 5151, 10, false, 22);
INSERT INTO public.moon VALUES ('Luna', 222, 1212, false, 11);
INSERT INTO public.moon VALUES ('Phobos', 333, 1313, false, 12);
INSERT INTO public.moon VALUES ('Deimos', 444, 1414, false, 13);
INSERT INTO public.moon VALUES ('Metis', 555, 1515, false, 14);
INSERT INTO public.moon VALUES ('Adrastea', 666, 1616, false, 15);
INSERT INTO public.moon VALUES ('Amalthea', 777, 1717, false, 16);
INSERT INTO public.moon VALUES ('Io', 888, 1818, false, 17);
INSERT INTO public.moon VALUES ('Europa', 999, 1919, false, 18);
INSERT INTO public.moon VALUES ('Ganymede', 223, 2121, false, 19);
INSERT INTO public.moon VALUES ('Callisto', 334, 3131, false, 20);
INSERT INTO public.moon VALUES ('Mimas', 445, 4141, false, 21);
INSERT INTO public.moon VALUES ('Dione', 667, 6161, false, 11);
INSERT INTO public.moon VALUES ('Rhea', 778, 7171, false, 11);
INSERT INTO public.moon VALUES ('Titan', 889, 8181, false, 11);
INSERT INTO public.moon VALUES ('Hyperion', 991, 9191, false, 11);
INSERT INTO public.moon VALUES ('Iapetus', 122, 11001, false, 11);
INSERT INTO public.moon VALUES ('Phoebe', 133, 22002, false, 11);
INSERT INTO public.moon VALUES ('Tethys', 144, 33003, false, 11);
INSERT INTO public.moon VALUES ('Thebe', 155, 44004, false, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (11, 'Mercury', 200, true, 101);
INSERT INTO public.planet VALUES (12, 'Venus', 300, false, 102);
INSERT INTO public.planet VALUES (13, 'Mars', 400, true, 101);
INSERT INTO public.planet VALUES (14, 'Jupiter', 500, false, 102);
INSERT INTO public.planet VALUES (15, 'Saturn', 600, true, 101);
INSERT INTO public.planet VALUES (16, 'Uranus', 700, false, 102);
INSERT INTO public.planet VALUES (17, 'Neptune', 800, true, 101);
INSERT INTO public.planet VALUES (18, 'Pluto', 900, false, 102);
INSERT INTO public.planet VALUES (19, 'ProximaB', 1000, true, 101);
INSERT INTO public.planet VALUES (20, 'ProximaD', 1100, false, 102);
INSERT INTO public.planet VALUES (21, 'ProximaC', 1200, true, 101);
INSERT INTO public.planet VALUES (22, 'Alpha', 1300, false, 102);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (101, 'Sun', 300, 9900, 1);
INSERT INTO public.star VALUES (102, 'ProximaCentauri', 400, 9901, 2);
INSERT INTO public.star VALUES (103, 'AlphaCentauriA', 500, 9902, 3);
INSERT INTO public.star VALUES (104, 'AlphaCentauriB', 600, 9903, 4);
INSERT INTO public.star VALUES (105, 'Barnard', 700, 9904, 5);
INSERT INTO public.star VALUES (106, 'Wolf', 800, 9905, 6);


--
-- Name: maintable_maintable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.maintable_maintable_id_seq', 3, true);


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
-- Name: maintable maintable_month_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.maintable
    ADD CONSTRAINT maintable_month_key UNIQUE (month);


--
-- Name: maintable maintable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.maintable
    ADD CONSTRAINT maintable_pkey PRIMARY KEY (maintable_id);


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
-- Name: planet planet_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_key UNIQUE (age);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_key UNIQUE (age);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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