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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_billions_of_years integer,
    distance_from_earth numeric,
    discription text,
    has_life boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_billions_of_years integer,
    distance_from_earth numeric,
    discription text,
    has_life boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_billions_of_years integer,
    distance_from_earth numeric,
    discription text,
    has_life boolean NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_billions_of_years integer,
    distance_from_earth numeric,
    discription text,
    has_life boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: unknown; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.unknown (
    name character varying(50) NOT NULL,
    unknown_id integer NOT NULL,
    unknown text
);


ALTER TABLE public.unknown OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 13, NULL, NULL, true);
INSERT INTO public.galaxy VALUES (2, 'andromeda', NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (3, 'virgo a.', NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', NULL, NULL, NULL, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'the moon', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (2, 'moon2', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (3, 'moon3', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (4, 'moon4', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (6, 'moon6', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (7, 'moon7', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (8, 'moon8', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (9, 'moon9', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (10, 'moon10', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (11, 'moon11', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (12, 'moon12', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (13, 'moon13', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (14, 'moon14', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (15, 'moon15', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (16, 'moon16', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (17, 'moon17', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (18, 'moon18', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (19, 'moon19', NULL, NULL, NULL, false, 3);
INSERT INTO public.moon VALUES (20, 'moon20', NULL, NULL, NULL, false, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (2, 'venus', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (3, 'earth', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (4, 'planet4', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (5, 'planet5', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (6, 'planet6', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (7, 'planet7', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (8, 'planet8', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (9, 'planet9', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (10, 'planet10', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (11, 'planet11', NULL, NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (12, 'planet12', NULL, NULL, NULL, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'the sun', NULL, NULL, NULL, false, 1);
INSERT INTO public.star VALUES (2, 'star2', NULL, NULL, NULL, false, 1);
INSERT INTO public.star VALUES (3, 'star3', NULL, NULL, NULL, false, 1);
INSERT INTO public.star VALUES (4, 'star4', NULL, NULL, NULL, false, 1);
INSERT INTO public.star VALUES (5, 'star5', NULL, NULL, NULL, false, 1);
INSERT INTO public.star VALUES (6, 'star6', NULL, NULL, NULL, false, 1);


--
-- Data for Name: unknown; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.unknown VALUES ('test', 1, NULL);
INSERT INTO public.unknown VALUES ('test2', 2, NULL);
INSERT INTO public.unknown VALUES ('test3', 3, NULL);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_galaxy_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key1 UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pk PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pk PRIMARY KEY (moon_id);


--
-- Name: planet planet_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pk PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pk PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: unknown unknown_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.unknown
    ADD CONSTRAINT unknown_pkey PRIMARY KEY (unknown_id);


--
-- Name: unknown unknown_unknown_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.unknown
    ADD CONSTRAINT unknown_unknown_id_key UNIQUE (unknown_id);


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

