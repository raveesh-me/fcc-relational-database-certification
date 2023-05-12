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
    name character varying(30) NOT NULL,
    number_of_stars integer,
    age_in_years integer,
    description character varying(60)
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
    diameter_at_equator numeric(6,1),
    planet_id integer NOT NULL,
    distance_from_planet integer
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_moons integer,
    description_of_climate text,
    has_life boolean DEFAULT false,
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: sattelite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sattelite (
    sattelite_id integer NOT NULL,
    is_artificial boolean DEFAULT true,
    distance_from_planet_kms integer NOT NULL,
    name character varying(20)
);


ALTER TABLE public.sattelite OWNER TO freecodecamp;

--
-- Name: sattelite_sattelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sattelite_sattelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sattelite_sattelite_id_seq OWNER TO freecodecamp;

--
-- Name: sattelite_sattelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sattelite_sattelite_id_seq OWNED BY public.sattelite.sattelite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_planets integer,
    has_planets boolean DEFAULT true,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: sattelite sattelite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sattelite ALTER COLUMN sattelite_id SET DEFAULT nextval('public.sattelite_sattelite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky_way', 10000, 1000000, 'description');
INSERT INTO public.galaxy VALUES (2, 'watery_way', 1316541, 65498, 'watery as water');
INSERT INTO public.galaxy VALUES (3, 'one_peice_galaxy', 46546, 94984, 'luffy senpai');
INSERT INTO public.galaxy VALUES (4, 'naruto_galaxy', 4674, 67698, 'whatever');
INSERT INTO public.galaxy VALUES (5, 'nija_hattori galaxy', 465494, 5449, 'Hatori hatori');
INSERT INTO public.galaxy VALUES (6, 'witcher_of_worlds', 65464, 465465, 'Geralt of rivia');
INSERT INTO public.galaxy VALUES (7, 'Galaxy 1', 55182, 2614, 'description for galaxy 1');
INSERT INTO public.galaxy VALUES (8, 'Galaxy 2', 25448, 2230, 'description for galaxy 2');
INSERT INTO public.galaxy VALUES (9, 'Galaxy 3', 19387, 1615, 'description for galaxy 3');
INSERT INTO public.galaxy VALUES (10, 'Galaxy 4', 98147, 373, 'description for galaxy 4');
INSERT INTO public.galaxy VALUES (11, 'Galaxy 5', 7975, 3663, 'description for galaxy 5');
INSERT INTO public.galaxy VALUES (12, 'Galaxy 6', 64913, 15161, 'description for galaxy 6');
INSERT INTO public.galaxy VALUES (13, 'Galaxy 7', 85638, 12630, 'description for galaxy 7');
INSERT INTO public.galaxy VALUES (14, 'Galaxy 8', 32202, 14091, 'description for galaxy 8');
INSERT INTO public.galaxy VALUES (15, 'Galaxy 9', 45791, 6279, 'description for galaxy 9');
INSERT INTO public.galaxy VALUES (16, 'Galaxy 10', 46993, 14353, 'description for galaxy 10');
INSERT INTO public.galaxy VALUES (17, 'Galaxy 11', 47171, 12633, 'description for galaxy 11');
INSERT INTO public.galaxy VALUES (18, 'Galaxy 12', 28641, 10191, 'description for galaxy 12');
INSERT INTO public.galaxy VALUES (19, 'Galaxy 13', 19184, 5099, 'description for galaxy 13');
INSERT INTO public.galaxy VALUES (20, 'Galaxy 14', 95888, 704, 'description for galaxy 14');
INSERT INTO public.galaxy VALUES (21, 'Galaxy 15', 14396, 2611, 'description for galaxy 15');
INSERT INTO public.galaxy VALUES (22, 'Galaxy 16', 51306, 775, 'description for galaxy 16');
INSERT INTO public.galaxy VALUES (23, 'Galaxy 17', 31076, 6690, 'description for galaxy 17');
INSERT INTO public.galaxy VALUES (24, 'Galaxy 18', 70380, 6761, 'description for galaxy 18');
INSERT INTO public.galaxy VALUES (25, 'Galaxy 19', 69330, 4016, 'description for galaxy 19');
INSERT INTO public.galaxy VALUES (26, 'Galaxy 20', 3365, 14444, 'description for galaxy 20');
INSERT INTO public.galaxy VALUES (27, 'Galaxy 21', 18697, 14314, 'description for galaxy 21');
INSERT INTO public.galaxy VALUES (28, 'Galaxy 22', 49082, 12656, 'description for galaxy 22');
INSERT INTO public.galaxy VALUES (29, 'Galaxy 23', 40149, 9440, 'description for galaxy 23');
INSERT INTO public.galaxy VALUES (30, 'Galaxy 24', 16763, 6972, 'description for galaxy 24');
INSERT INTO public.galaxy VALUES (31, 'Galaxy 25', 1899, 11737, 'description for galaxy 25');
INSERT INTO public.galaxy VALUES (32, 'Galaxy 26', 97117, 8230, 'description for galaxy 26');
INSERT INTO public.galaxy VALUES (33, 'Galaxy 27', 46416, 5327, 'description for galaxy 27');
INSERT INTO public.galaxy VALUES (34, 'Galaxy 28', 10856, 5025, 'description for galaxy 28');
INSERT INTO public.galaxy VALUES (35, 'Galaxy 29', 9411, 9608, 'description for galaxy 29');
INSERT INTO public.galaxy VALUES (36, 'Galaxy 30', 62417, 2687, 'description for galaxy 30');
INSERT INTO public.galaxy VALUES (37, 'Galaxy 31', 23494, 14255, 'description for galaxy 31');
INSERT INTO public.galaxy VALUES (38, 'Galaxy 32', 70447, 8585, 'description for galaxy 32');
INSERT INTO public.galaxy VALUES (39, 'Galaxy 33', 26747, 12269, 'description for galaxy 33');
INSERT INTO public.galaxy VALUES (40, 'Galaxy 34', 73425, 14388, 'description for galaxy 34');
INSERT INTO public.galaxy VALUES (41, 'Galaxy 35', 55829, 6623, 'description for galaxy 35');
INSERT INTO public.galaxy VALUES (42, 'Galaxy 36', 68561, 7185, 'description for galaxy 36');
INSERT INTO public.galaxy VALUES (43, 'Galaxy 37', 44729, 5862, 'description for galaxy 37');
INSERT INTO public.galaxy VALUES (44, 'Galaxy 38', 61598, 9425, 'description for galaxy 38');
INSERT INTO public.galaxy VALUES (45, 'Galaxy 39', 23119, 12335, 'description for galaxy 39');
INSERT INTO public.galaxy VALUES (46, 'Galaxy 40', 12481, 15100, 'description for galaxy 40');
INSERT INTO public.galaxy VALUES (47, 'Galaxy 41', 25953, 12695, 'description for galaxy 41');
INSERT INTO public.galaxy VALUES (48, 'Galaxy 42', 11924, 8889, 'description for galaxy 42');
INSERT INTO public.galaxy VALUES (49, 'Galaxy 43', 90800, 6362, 'description for galaxy 43');
INSERT INTO public.galaxy VALUES (50, 'Galaxy 44', 22954, 10322, 'description for galaxy 44');
INSERT INTO public.galaxy VALUES (51, 'Galaxy 45', 48037, 8619, 'description for galaxy 45');
INSERT INTO public.galaxy VALUES (52, 'Galaxy 46', 52555, 6735, 'description for galaxy 46');
INSERT INTO public.galaxy VALUES (53, 'Galaxy 47', 56885, 1460, 'description for galaxy 47');
INSERT INTO public.galaxy VALUES (54, 'Galaxy 48', 65917, 10458, 'description for galaxy 48');
INSERT INTO public.galaxy VALUES (55, 'Galaxy 49', 27140, 6038, 'description for galaxy 49');
INSERT INTO public.galaxy VALUES (56, 'Galaxy 50', 30712, 8204, 'description for galaxy 50');
INSERT INTO public.galaxy VALUES (57, 'Galaxy 51', 843, 6458, 'description for galaxy 51');
INSERT INTO public.galaxy VALUES (58, 'Galaxy 52', 43709, 14846, 'description for galaxy 52');
INSERT INTO public.galaxy VALUES (59, 'Galaxy 53', 72949, 3143, 'description for galaxy 53');
INSERT INTO public.galaxy VALUES (60, 'Galaxy 54', 86159, 1797, 'description for galaxy 54');
INSERT INTO public.galaxy VALUES (61, 'Galaxy 55', 67054, 14135, 'description for galaxy 55');
INSERT INTO public.galaxy VALUES (62, 'Galaxy 56', 18461, 2040, 'description for galaxy 56');
INSERT INTO public.galaxy VALUES (63, 'Galaxy 57', 77255, 2932, 'description for galaxy 57');
INSERT INTO public.galaxy VALUES (64, 'Galaxy 58', 25846, 14930, 'description for galaxy 58');
INSERT INTO public.galaxy VALUES (65, 'Galaxy 59', 55300, 77, 'description for galaxy 59');
INSERT INTO public.galaxy VALUES (66, 'Galaxy 60', 84177, 8501, 'description for galaxy 60');
INSERT INTO public.galaxy VALUES (67, 'Galaxy 61', 92224, 5915, 'description for galaxy 61');
INSERT INTO public.galaxy VALUES (68, 'Galaxy 62', 23722, 2749, 'description for galaxy 62');
INSERT INTO public.galaxy VALUES (69, 'Galaxy 63', 83817, 4649, 'description for galaxy 63');
INSERT INTO public.galaxy VALUES (70, 'Galaxy 64', 26031, 689, 'description for galaxy 64');
INSERT INTO public.galaxy VALUES (71, 'Galaxy 65', 11587, 14258, 'description for galaxy 65');
INSERT INTO public.galaxy VALUES (72, 'Galaxy 66', 18245, 12472, 'description for galaxy 66');
INSERT INTO public.galaxy VALUES (73, 'Galaxy 67', 36639, 1606, 'description for galaxy 67');
INSERT INTO public.galaxy VALUES (74, 'Galaxy 68', 5459, 9771, 'description for galaxy 68');
INSERT INTO public.galaxy VALUES (75, 'Galaxy 69', 28247, 11499, 'description for galaxy 69');
INSERT INTO public.galaxy VALUES (76, 'Galaxy 70', 56804, 13551, 'description for galaxy 70');
INSERT INTO public.galaxy VALUES (77, 'Galaxy 71', 6263, 918, 'description for galaxy 71');
INSERT INTO public.galaxy VALUES (78, 'Galaxy 72', 87895, 2640, 'description for galaxy 72');
INSERT INTO public.galaxy VALUES (79, 'Galaxy 73', 5174, 12973, 'description for galaxy 73');
INSERT INTO public.galaxy VALUES (80, 'Galaxy 74', 41022, 460, 'description for galaxy 74');
INSERT INTO public.galaxy VALUES (81, 'Galaxy 75', 95125, 4145, 'description for galaxy 75');
INSERT INTO public.galaxy VALUES (82, 'Galaxy 76', 86305, 14626, 'description for galaxy 76');
INSERT INTO public.galaxy VALUES (83, 'Galaxy 77', 62950, 7204, 'description for galaxy 77');
INSERT INTO public.galaxy VALUES (84, 'Galaxy 78', 59836, 3911, 'description for galaxy 78');
INSERT INTO public.galaxy VALUES (85, 'Galaxy 79', 44921, 3978, 'description for galaxy 79');
INSERT INTO public.galaxy VALUES (86, 'Galaxy 80', 28167, 2254, 'description for galaxy 80');
INSERT INTO public.galaxy VALUES (87, 'Galaxy 81', 56975, 11351, 'description for galaxy 81');
INSERT INTO public.galaxy VALUES (88, 'Galaxy 82', 58282, 12997, 'description for galaxy 82');
INSERT INTO public.galaxy VALUES (89, 'Galaxy 83', 21521, 13153, 'description for galaxy 83');
INSERT INTO public.galaxy VALUES (90, 'Galaxy 84', 66146, 7139, 'description for galaxy 84');
INSERT INTO public.galaxy VALUES (91, 'Galaxy 85', 90082, 2939, 'description for galaxy 85');
INSERT INTO public.galaxy VALUES (92, 'Galaxy 86', 79079, 4317, 'description for galaxy 86');
INSERT INTO public.galaxy VALUES (93, 'Galaxy 87', 95025, 6938, 'description for galaxy 87');
INSERT INTO public.galaxy VALUES (94, 'Galaxy 88', 43421, 7266, 'description for galaxy 88');
INSERT INTO public.galaxy VALUES (95, 'Galaxy 89', 82200, 12155, 'description for galaxy 89');
INSERT INTO public.galaxy VALUES (96, 'Galaxy 90', 31371, 4661, 'description for galaxy 90');
INSERT INTO public.galaxy VALUES (97, 'Galaxy 91', 19452, 3443, 'description for galaxy 91');
INSERT INTO public.galaxy VALUES (98, 'Galaxy 92', 93486, 15192, 'description for galaxy 92');
INSERT INTO public.galaxy VALUES (99, 'Galaxy 93', 97701, 12145, 'description for galaxy 93');
INSERT INTO public.galaxy VALUES (100, 'Galaxy 94', 86431, 6967, 'description for galaxy 94');
INSERT INTO public.galaxy VALUES (101, 'Galaxy 95', 34637, 5395, 'description for galaxy 95');
INSERT INTO public.galaxy VALUES (102, 'Galaxy 96', 1193, 1503, 'description for galaxy 96');
INSERT INTO public.galaxy VALUES (103, 'Galaxy 97', 13195, 8093, 'description for galaxy 97');
INSERT INTO public.galaxy VALUES (104, 'Galaxy 98', 73618, 11783, 'description for galaxy 98');
INSERT INTO public.galaxy VALUES (105, 'Galaxy 99', 84071, 1565, 'description for galaxy 99');
INSERT INTO public.galaxy VALUES (106, 'Galaxy 100', 76946, 13196, 'description for galaxy 100');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon 1', 68954.2, 946, 310631);
INSERT INTO public.moon VALUES (2, 'moon 2', 72385.7, 562, 178059);
INSERT INTO public.moon VALUES (3, 'moon 3', 79080.4, 964, 576795);
INSERT INTO public.moon VALUES (4, 'moon 4', 52657.0, 821, 578942);
INSERT INTO public.moon VALUES (5, 'moon 5', 75118.5, 612, 98438);
INSERT INTO public.moon VALUES (6, 'moon 6', 32836.1, 988, 547177);
INSERT INTO public.moon VALUES (7, 'moon 7', 47950.2, 580, 1176201);
INSERT INTO public.moon VALUES (8, 'moon 8', 86806.5, 567, 709354);
INSERT INTO public.moon VALUES (9, 'moon 9', 43281.2, 633, 126376);
INSERT INTO public.moon VALUES (10, 'moon 10', 33752.3, 525, 8148);
INSERT INTO public.moon VALUES (11, 'moon 11', 87190.0, 629, 453353);
INSERT INTO public.moon VALUES (12, 'moon 12', 89079.9, 887, 671229);
INSERT INTO public.moon VALUES (13, 'moon 13', 23485.6, 928, 141220);
INSERT INTO public.moon VALUES (14, 'moon 14', 73645.3, 886, 309225);
INSERT INTO public.moon VALUES (15, 'moon 15', 188.9, 772, 638174);
INSERT INTO public.moon VALUES (16, 'moon 16', 151.1, 659, 1091117);
INSERT INTO public.moon VALUES (17, 'moon 17', 54060.7, 514, 890915);
INSERT INTO public.moon VALUES (18, 'moon 18', 33765.3, 993, 1089518);
INSERT INTO public.moon VALUES (19, 'moon 19', 83690.0, 1000, 333626);
INSERT INTO public.moon VALUES (20, 'moon 20', 35360.8, 896, 47418);
INSERT INTO public.moon VALUES (21, 'moon 21', 19424.6, 955, 640527);
INSERT INTO public.moon VALUES (22, 'moon 22', 81291.0, 993, 1230272);
INSERT INTO public.moon VALUES (23, 'moon 23', 19718.1, 923, 494833);
INSERT INTO public.moon VALUES (24, 'moon 24', 20745.4, 799, 89651);
INSERT INTO public.moon VALUES (25, 'moon 25', 23391.2, 733, 1191983);
INSERT INTO public.moon VALUES (26, 'moon 26', 42743.6, 937, 1106583);
INSERT INTO public.moon VALUES (27, 'moon 27', 42882.1, 797, 655374);
INSERT INTO public.moon VALUES (28, 'moon 28', 32473.3, 701, 305969);
INSERT INTO public.moon VALUES (29, 'moon 29', 87212.9, 756, 18682);
INSERT INTO public.moon VALUES (30, 'moon 30', 28432.0, 1000, 37016);
INSERT INTO public.moon VALUES (31, 'moon 31', 82714.6, 899, 476691);
INSERT INTO public.moon VALUES (32, 'moon 32', 63069.4, 938, 874307);
INSERT INTO public.moon VALUES (33, 'moon 33', 40301.7, 746, 1140132);
INSERT INTO public.moon VALUES (34, 'moon 34', 29093.7, 774, 1112700);
INSERT INTO public.moon VALUES (35, 'moon 35', 63044.7, 589, 455719);
INSERT INTO public.moon VALUES (36, 'moon 36', 42476.8, 884, 946191);
INSERT INTO public.moon VALUES (37, 'moon 37', 40082.6, 910, 871439);
INSERT INTO public.moon VALUES (38, 'moon 38', 42868.5, 602, 1038600);
INSERT INTO public.moon VALUES (39, 'moon 39', 89822.7, 807, 34094);
INSERT INTO public.moon VALUES (40, 'moon 40', 21274.8, 645, 158893);
INSERT INTO public.moon VALUES (41, 'moon 41', 3308.9, 735, 894107);
INSERT INTO public.moon VALUES (42, 'moon 42', 54899.2, 630, 194579);
INSERT INTO public.moon VALUES (43, 'moon 43', 39609.6, 912, 611638);
INSERT INTO public.moon VALUES (44, 'moon 44', 88700.1, 932, 934032);
INSERT INTO public.moon VALUES (45, 'moon 45', 66895.0, 848, 340790);
INSERT INTO public.moon VALUES (46, 'moon 46', 74195.9, 845, 356707);
INSERT INTO public.moon VALUES (47, 'moon 47', 67565.7, 536, 139063);
INSERT INTO public.moon VALUES (48, 'moon 48', 16650.1, 563, 309636);
INSERT INTO public.moon VALUES (49, 'moon 49', 76061.5, 678, 364966);
INSERT INTO public.moon VALUES (50, 'moon 50', 47877.8, 745, 623639);
INSERT INTO public.moon VALUES (51, 'moon 51', 81354.1, 610, 28766);
INSERT INTO public.moon VALUES (52, 'moon 52', 35248.3, 589, 1142924);
INSERT INTO public.moon VALUES (53, 'moon 53', 57498.4, 721, 679282);
INSERT INTO public.moon VALUES (54, 'moon 54', 57669.8, 515, 1046521);
INSERT INTO public.moon VALUES (55, 'moon 55', 68235.8, 648, 423130);
INSERT INTO public.moon VALUES (56, 'moon 56', 81330.6, 602, 533302);
INSERT INTO public.moon VALUES (57, 'moon 57', 11387.3, 988, 572150);
INSERT INTO public.moon VALUES (58, 'moon 58', 5465.2, 574, 1016992);
INSERT INTO public.moon VALUES (59, 'moon 59', 9554.6, 790, 1185018);
INSERT INTO public.moon VALUES (60, 'moon 60', 39318.0, 985, 36490);
INSERT INTO public.moon VALUES (61, 'moon 61', 57555.2, 981, 60235);
INSERT INTO public.moon VALUES (62, 'moon 62', 18888.1, 724, 150663);
INSERT INTO public.moon VALUES (63, 'moon 63', 20908.9, 606, 153940);
INSERT INTO public.moon VALUES (64, 'moon 64', 54843.6, 908, 644929);
INSERT INTO public.moon VALUES (65, 'moon 65', 67900.3, 605, 1257963);
INSERT INTO public.moon VALUES (66, 'moon 66', 28348.0, 629, 657595);
INSERT INTO public.moon VALUES (67, 'moon 67', 39422.0, 873, 705418);
INSERT INTO public.moon VALUES (68, 'moon 68', 50599.8, 867, 938743);
INSERT INTO public.moon VALUES (69, 'moon 69', 10874.8, 791, 1059356);
INSERT INTO public.moon VALUES (70, 'moon 70', 65992.7, 728, 308335);
INSERT INTO public.moon VALUES (71, 'moon 71', 62496.2, 714, 990185);
INSERT INTO public.moon VALUES (72, 'moon 72', 38154.5, 864, 837254);
INSERT INTO public.moon VALUES (73, 'moon 73', 38288.3, 975, 987609);
INSERT INTO public.moon VALUES (74, 'moon 74', 59730.9, 557, 451355);
INSERT INTO public.moon VALUES (75, 'moon 75', 14124.0, 972, 822320);
INSERT INTO public.moon VALUES (76, 'moon 76', 13258.7, 610, 32436);
INSERT INTO public.moon VALUES (77, 'moon 77', 61304.9, 630, 952528);
INSERT INTO public.moon VALUES (78, 'moon 78', 57509.3, 669, 232049);
INSERT INTO public.moon VALUES (79, 'moon 79', 72384.9, 911, 473577);
INSERT INTO public.moon VALUES (80, 'moon 80', 42847.0, 995, 381233);
INSERT INTO public.moon VALUES (81, 'moon 81', 2499.0, 913, 13984);
INSERT INTO public.moon VALUES (82, 'moon 82', 68969.1, 867, 59111);
INSERT INTO public.moon VALUES (83, 'moon 83', 64757.1, 739, 1058733);
INSERT INTO public.moon VALUES (84, 'moon 84', 24599.0, 596, 1084992);
INSERT INTO public.moon VALUES (85, 'moon 85', 60854.3, 511, 70997);
INSERT INTO public.moon VALUES (86, 'moon 86', 3807.6, 773, 974516);
INSERT INTO public.moon VALUES (87, 'moon 87', 62927.7, 735, 664443);
INSERT INTO public.moon VALUES (88, 'moon 88', 34372.3, 525, 288014);
INSERT INTO public.moon VALUES (89, 'moon 89', 3850.6, 509, 847182);
INSERT INTO public.moon VALUES (90, 'moon 90', 28522.4, 666, 703680);
INSERT INTO public.moon VALUES (91, 'moon 91', 39774.6, 938, 605235);
INSERT INTO public.moon VALUES (92, 'moon 92', 72021.5, 669, 706682);
INSERT INTO public.moon VALUES (93, 'moon 93', 16335.7, 567, 181941);
INSERT INTO public.moon VALUES (94, 'moon 94', 51186.1, 653, 1248739);
INSERT INTO public.moon VALUES (95, 'moon 95', 17456.5, 930, 1173314);
INSERT INTO public.moon VALUES (96, 'moon 96', 37344.1, 702, 955749);
INSERT INTO public.moon VALUES (97, 'moon 97', 3762.3, 873, 633036);
INSERT INTO public.moon VALUES (98, 'moon 98', 26165.5, 641, 452180);
INSERT INTO public.moon VALUES (99, 'moon 99', 22213.8, 743, 968610);
INSERT INTO public.moon VALUES (100, 'moon 100', 16104.8, 971, 103949);
INSERT INTO public.moon VALUES (101, 'moon 101', 7785.7, 884, 523285);
INSERT INTO public.moon VALUES (102, 'moon 102', 25462.7, 701, 914366);
INSERT INTO public.moon VALUES (103, 'moon 103', 77111.3, 659, 33977);
INSERT INTO public.moon VALUES (104, 'moon 104', 72823.1, 623, 1152842);
INSERT INTO public.moon VALUES (105, 'moon 105', 25389.5, 768, 379018);
INSERT INTO public.moon VALUES (106, 'moon 106', 49731.7, 939, 402631);
INSERT INTO public.moon VALUES (107, 'moon 107', 12513.2, 724, 59031);
INSERT INTO public.moon VALUES (108, 'moon 108', 31580.8, 790, 1234587);
INSERT INTO public.moon VALUES (109, 'moon 109', 78621.1, 915, 984190);
INSERT INTO public.moon VALUES (110, 'moon 110', 68642.6, 607, 137412);
INSERT INTO public.moon VALUES (111, 'moon 111', 24740.3, 806, 1139860);
INSERT INTO public.moon VALUES (112, 'moon 112', 69294.4, 815, 14240);
INSERT INTO public.moon VALUES (113, 'moon 113', 72793.5, 940, 617482);
INSERT INTO public.moon VALUES (114, 'moon 114', 14400.8, 951, 219338);
INSERT INTO public.moon VALUES (115, 'moon 115', 29068.7, 563, 1267151);
INSERT INTO public.moon VALUES (116, 'moon 116', 32237.6, 919, 544817);
INSERT INTO public.moon VALUES (117, 'moon 117', 5466.4, 525, 374034);
INSERT INTO public.moon VALUES (118, 'moon 118', 71691.9, 859, 1207268);
INSERT INTO public.moon VALUES (119, 'moon 119', 67791.7, 671, 1227687);
INSERT INTO public.moon VALUES (120, 'moon 120', 76205.7, 718, 1121837);
INSERT INTO public.moon VALUES (121, 'moon 121', 28615.6, 760, 827852);
INSERT INTO public.moon VALUES (122, 'moon 122', 19396.6, 876, 474801);
INSERT INTO public.moon VALUES (123, 'moon 123', 17939.0, 861, 917335);
INSERT INTO public.moon VALUES (124, 'moon 124', 51708.5, 509, 823637);
INSERT INTO public.moon VALUES (125, 'moon 125', 66881.3, 753, 278052);
INSERT INTO public.moon VALUES (126, 'moon 126', 20050.9, 619, 966964);
INSERT INTO public.moon VALUES (127, 'moon 127', 78090.7, 719, 17944);
INSERT INTO public.moon VALUES (128, 'moon 128', 20996.6, 949, 324838);
INSERT INTO public.moon VALUES (129, 'moon 129', 17303.7, 685, 764326);
INSERT INTO public.moon VALUES (130, 'moon 130', 75931.6, 774, 551011);
INSERT INTO public.moon VALUES (131, 'moon 131', 64359.0, 813, 1072326);
INSERT INTO public.moon VALUES (132, 'moon 132', 43173.6, 523, 373175);
INSERT INTO public.moon VALUES (133, 'moon 133', 38258.7, 693, 771309);
INSERT INTO public.moon VALUES (134, 'moon 134', 32116.5, 623, 359298);
INSERT INTO public.moon VALUES (135, 'moon 135', 61624.1, 743, 16898);
INSERT INTO public.moon VALUES (136, 'moon 136', 67801.0, 804, 213993);
INSERT INTO public.moon VALUES (137, 'moon 137', 36978.9, 920, 147989);
INSERT INTO public.moon VALUES (138, 'moon 138', 4118.4, 655, 1283320);
INSERT INTO public.moon VALUES (139, 'moon 139', 9403.3, 679, 11547);
INSERT INTO public.moon VALUES (140, 'moon 140', 1604.3, 605, 299723);
INSERT INTO public.moon VALUES (141, 'moon 141', 2991.2, 529, 631995);
INSERT INTO public.moon VALUES (142, 'moon 142', 52748.5, 781, 504946);
INSERT INTO public.moon VALUES (143, 'moon 143', 77096.9, 952, 1219273);
INSERT INTO public.moon VALUES (144, 'moon 144', 88373.4, 942, 387937);
INSERT INTO public.moon VALUES (145, 'moon 145', 8860.5, 646, 1191862);
INSERT INTO public.moon VALUES (146, 'moon 146', 36557.6, 946, 209618);
INSERT INTO public.moon VALUES (147, 'moon 147', 56567.4, 767, 757403);
INSERT INTO public.moon VALUES (148, 'moon 148', 69472.8, 985, 548323);
INSERT INTO public.moon VALUES (149, 'moon 149', 14242.0, 669, 774355);
INSERT INTO public.moon VALUES (150, 'moon 150', 47505.6, 886, 659828);
INSERT INTO public.moon VALUES (151, 'moon 151', 1007.5, 583, 1211356);
INSERT INTO public.moon VALUES (152, 'moon 152', 21377.8, 988, 118814);
INSERT INTO public.moon VALUES (153, 'moon 153', 44310.0, 683, 1078126);
INSERT INTO public.moon VALUES (154, 'moon 154', 72530.5, 991, 295905);
INSERT INTO public.moon VALUES (155, 'moon 155', 36227.8, 620, 817774);
INSERT INTO public.moon VALUES (156, 'moon 156', 86369.6, 994, 798789);
INSERT INTO public.moon VALUES (157, 'moon 157', 67689.8, 640, 853716);
INSERT INTO public.moon VALUES (158, 'moon 158', 38623.4, 800, 51396);
INSERT INTO public.moon VALUES (159, 'moon 159', 88720.0, 604, 1138575);
INSERT INTO public.moon VALUES (160, 'moon 160', 70236.6, 967, 636762);
INSERT INTO public.moon VALUES (161, 'moon 161', 48077.3, 983, 596164);
INSERT INTO public.moon VALUES (162, 'moon 162', 41148.5, 513, 122209);
INSERT INTO public.moon VALUES (163, 'moon 163', 38938.9, 722, 650978);
INSERT INTO public.moon VALUES (164, 'moon 164', 66116.1, 799, 442405);
INSERT INTO public.moon VALUES (165, 'moon 165', 77884.3, 914, 50264);
INSERT INTO public.moon VALUES (166, 'moon 166', 65397.9, 729, 482438);
INSERT INTO public.moon VALUES (167, 'moon 167', 24478.8, 505, 459593);
INSERT INTO public.moon VALUES (168, 'moon 168', 41615.8, 521, 167803);
INSERT INTO public.moon VALUES (169, 'moon 169', 34121.3, 983, 66856);
INSERT INTO public.moon VALUES (170, 'moon 170', 5524.2, 711, 1171439);
INSERT INTO public.moon VALUES (171, 'moon 171', 47366.2, 875, 809935);
INSERT INTO public.moon VALUES (172, 'moon 172', 61647.6, 612, 1242603);
INSERT INTO public.moon VALUES (173, 'moon 173', 40814.3, 667, 294125);
INSERT INTO public.moon VALUES (174, 'moon 174', 49848.3, 606, 627847);
INSERT INTO public.moon VALUES (175, 'moon 175', 83764.2, 517, 682648);
INSERT INTO public.moon VALUES (176, 'moon 176', 20188.1, 759, 1021094);
INSERT INTO public.moon VALUES (177, 'moon 177', 2974.7, 965, 477034);
INSERT INTO public.moon VALUES (178, 'moon 178', 13553.3, 961, 288825);
INSERT INTO public.moon VALUES (179, 'moon 179', 75303.5, 868, 169138);
INSERT INTO public.moon VALUES (180, 'moon 180', 77158.3, 890, 1119593);
INSERT INTO public.moon VALUES (181, 'moon 181', 41426.3, 536, 6409);
INSERT INTO public.moon VALUES (182, 'moon 182', 57310.8, 806, 1190697);
INSERT INTO public.moon VALUES (183, 'moon 183', 66339.6, 831, 532005);
INSERT INTO public.moon VALUES (184, 'moon 184', 14210.7, 829, 946657);
INSERT INTO public.moon VALUES (185, 'moon 185', 4636.8, 766, 1147846);
INSERT INTO public.moon VALUES (186, 'moon 186', 3785.1, 758, 35726);
INSERT INTO public.moon VALUES (187, 'moon 187', 75260.0, 722, 381578);
INSERT INTO public.moon VALUES (188, 'moon 188', 20782.7, 919, 497110);
INSERT INTO public.moon VALUES (189, 'moon 189', 44642.0, 885, 347042);
INSERT INTO public.moon VALUES (190, 'moon 190', 16447.1, 812, 1255754);
INSERT INTO public.moon VALUES (191, 'moon 191', 59488.3, 604, 237310);
INSERT INTO public.moon VALUES (192, 'moon 192', 3101.0, 922, 1147242);
INSERT INTO public.moon VALUES (193, 'moon 193', 68.7, 938, 817153);
INSERT INTO public.moon VALUES (194, 'moon 194', 34126.3, 825, 382540);
INSERT INTO public.moon VALUES (195, 'moon 195', 45509.7, 622, 1107502);
INSERT INTO public.moon VALUES (196, 'moon 196', 67106.0, 644, 463743);
INSERT INTO public.moon VALUES (197, 'moon 197', 37550.1, 770, 635089);
INSERT INTO public.moon VALUES (198, 'moon 198', 56575.1, 617, 505572);
INSERT INTO public.moon VALUES (199, 'moon 199', 51687.9, 603, 652319);
INSERT INTO public.moon VALUES (200, 'moon 200', 68565.2, 888, 916105);
INSERT INTO public.moon VALUES (201, 'moon 201', 63094.1, 722, 512019);
INSERT INTO public.moon VALUES (202, 'moon 202', 80629.9, 944, 734223);
INSERT INTO public.moon VALUES (203, 'moon 203', 82465.1, 640, 222857);
INSERT INTO public.moon VALUES (204, 'moon 204', 36385.2, 707, 49461);
INSERT INTO public.moon VALUES (205, 'moon 205', 69597.5, 782, 1232549);
INSERT INTO public.moon VALUES (206, 'moon 206', 53434.6, 503, 907589);
INSERT INTO public.moon VALUES (207, 'moon 207', 18365.3, 903, 545259);
INSERT INTO public.moon VALUES (208, 'moon 208', 83254.9, 971, 189868);
INSERT INTO public.moon VALUES (209, 'moon 209', 61700.0, 536, 1288587);
INSERT INTO public.moon VALUES (210, 'moon 210', 15788.1, 820, 161300);
INSERT INTO public.moon VALUES (211, 'moon 211', 38419.0, 547, 968272);
INSERT INTO public.moon VALUES (212, 'moon 212', 39239.9, 840, 821989);
INSERT INTO public.moon VALUES (213, 'moon 213', 65700.4, 764, 1058425);
INSERT INTO public.moon VALUES (214, 'moon 214', 16443.4, 976, 345838);
INSERT INTO public.moon VALUES (215, 'moon 215', 77343.8, 963, 339147);
INSERT INTO public.moon VALUES (216, 'moon 216', 38033.1, 864, 298135);
INSERT INTO public.moon VALUES (217, 'moon 217', 39447.5, 578, 807026);
INSERT INTO public.moon VALUES (218, 'moon 218', 31141.9, 898, 812531);
INSERT INTO public.moon VALUES (219, 'moon 219', 48607.6, 827, 1105089);
INSERT INTO public.moon VALUES (220, 'moon 220', 50322.8, 576, 767630);
INSERT INTO public.moon VALUES (221, 'moon 221', 55472.0, 961, 266762);
INSERT INTO public.moon VALUES (222, 'moon 222', 59955.0, 977, 1143344);
INSERT INTO public.moon VALUES (223, 'moon 223', 22725.1, 796, 1131500);
INSERT INTO public.moon VALUES (224, 'moon 224', 58152.8, 832, 607708);
INSERT INTO public.moon VALUES (225, 'moon 225', 86860.0, 538, 313060);
INSERT INTO public.moon VALUES (226, 'moon 226', 81163.7, 756, 31361);
INSERT INTO public.moon VALUES (227, 'moon 227', 32984.0, 552, 174807);
INSERT INTO public.moon VALUES (228, 'moon 228', 74181.4, 656, 818162);
INSERT INTO public.moon VALUES (229, 'moon 229', 34812.7, 585, 400783);
INSERT INTO public.moon VALUES (230, 'moon 230', 56090.8, 573, 349068);
INSERT INTO public.moon VALUES (231, 'moon 231', 82756.6, 729, 1117162);
INSERT INTO public.moon VALUES (232, 'moon 232', 33065.5, 567, 841484);
INSERT INTO public.moon VALUES (233, 'moon 233', 716.4, 908, 262123);
INSERT INTO public.moon VALUES (234, 'moon 234', 73809.3, 799, 661609);
INSERT INTO public.moon VALUES (235, 'moon 235', 80064.5, 934, 874334);
INSERT INTO public.moon VALUES (236, 'moon 236', 65744.0, 532, 614876);
INSERT INTO public.moon VALUES (237, 'moon 237', 52119.4, 905, 742132);
INSERT INTO public.moon VALUES (238, 'moon 238', 32721.5, 650, 277895);
INSERT INTO public.moon VALUES (239, 'moon 239', 22479.2, 965, 1221303);
INSERT INTO public.moon VALUES (240, 'moon 240', 19657.7, 685, 544273);
INSERT INTO public.moon VALUES (241, 'moon 241', 23225.9, 899, 207480);
INSERT INTO public.moon VALUES (242, 'moon 242', 67152.6, 632, 1128346);
INSERT INTO public.moon VALUES (243, 'moon 243', 24306.0, 757, 609438);
INSERT INTO public.moon VALUES (244, 'moon 244', 35601.4, 512, 442908);
INSERT INTO public.moon VALUES (245, 'moon 245', 19525.3, 526, 1134077);
INSERT INTO public.moon VALUES (246, 'moon 246', 49079.1, 693, 540270);
INSERT INTO public.moon VALUES (247, 'moon 247', 82592.4, 780, 168997);
INSERT INTO public.moon VALUES (248, 'moon 248', 85037.5, 936, 791861);
INSERT INTO public.moon VALUES (249, 'moon 249', 71034.1, 530, 737482);
INSERT INTO public.moon VALUES (250, 'moon 250', 11683.4, 578, 300011);
INSERT INTO public.moon VALUES (251, 'moon 251', 74855.2, 913, 658871);
INSERT INTO public.moon VALUES (252, 'moon 252', 81321.3, 810, 515879);
INSERT INTO public.moon VALUES (253, 'moon 253', 6315.8, 728, 617454);
INSERT INTO public.moon VALUES (254, 'moon 254', 14248.3, 501, 111843);
INSERT INTO public.moon VALUES (255, 'moon 255', 84604.3, 773, 630025);
INSERT INTO public.moon VALUES (256, 'moon 256', 29647.0, 652, 368704);
INSERT INTO public.moon VALUES (257, 'moon 257', 9960.2, 579, 1003337);
INSERT INTO public.moon VALUES (258, 'moon 258', 59291.5, 909, 711447);
INSERT INTO public.moon VALUES (259, 'moon 259', 47639.9, 961, 500643);
INSERT INTO public.moon VALUES (260, 'moon 260', 75824.0, 669, 812185);
INSERT INTO public.moon VALUES (261, 'moon 261', 15292.8, 864, 487070);
INSERT INTO public.moon VALUES (262, 'moon 262', 76102.1, 752, 585398);
INSERT INTO public.moon VALUES (263, 'moon 263', 56145.4, 514, 186134);
INSERT INTO public.moon VALUES (264, 'moon 264', 21906.0, 831, 297402);
INSERT INTO public.moon VALUES (265, 'moon 265', 75319.2, 728, 1219194);
INSERT INTO public.moon VALUES (266, 'moon 266', 53605.3, 930, 524894);
INSERT INTO public.moon VALUES (267, 'moon 267', 42837.9, 521, 160722);
INSERT INTO public.moon VALUES (268, 'moon 268', 48507.0, 624, 1226907);
INSERT INTO public.moon VALUES (269, 'moon 269', 16449.0, 652, 653406);
INSERT INTO public.moon VALUES (270, 'moon 270', 73104.5, 527, 1140012);
INSERT INTO public.moon VALUES (271, 'moon 271', 40014.1, 898, 1025479);
INSERT INTO public.moon VALUES (272, 'moon 272', 37262.7, 940, 1096811);
INSERT INTO public.moon VALUES (273, 'moon 273', 20918.6, 974, 909242);
INSERT INTO public.moon VALUES (274, 'moon 274', 64199.1, 619, 1063176);
INSERT INTO public.moon VALUES (275, 'moon 275', 30413.6, 845, 98896);
INSERT INTO public.moon VALUES (276, 'moon 276', 7017.8, 601, 1084386);
INSERT INTO public.moon VALUES (277, 'moon 277', 45426.7, 890, 1277392);
INSERT INTO public.moon VALUES (278, 'moon 278', 15014.7, 954, 270408);
INSERT INTO public.moon VALUES (279, 'moon 279', 65453.9, 764, 276498);
INSERT INTO public.moon VALUES (280, 'moon 280', 32565.4, 595, 345166);
INSERT INTO public.moon VALUES (281, 'moon 281', 1591.3, 601, 734208);
INSERT INTO public.moon VALUES (282, 'moon 282', 6570.0, 578, 819077);
INSERT INTO public.moon VALUES (283, 'moon 283', 23006.7, 644, 1177153);
INSERT INTO public.moon VALUES (284, 'moon 284', 64438.4, 700, 354413);
INSERT INTO public.moon VALUES (285, 'moon 285', 11029.9, 568, 543624);
INSERT INTO public.moon VALUES (286, 'moon 286', 9126.0, 819, 129188);
INSERT INTO public.moon VALUES (287, 'moon 287', 39816.6, 652, 497860);
INSERT INTO public.moon VALUES (288, 'moon 288', 6161.9, 701, 22726);
INSERT INTO public.moon VALUES (289, 'moon 289', 14648.6, 815, 936514);
INSERT INTO public.moon VALUES (290, 'moon 290', 40892.7, 558, 1073558);
INSERT INTO public.moon VALUES (291, 'moon 291', 61184.2, 616, 445801);
INSERT INTO public.moon VALUES (292, 'moon 292', 79306.4, 802, 544406);
INSERT INTO public.moon VALUES (293, 'moon 293', 41796.0, 630, 1140780);
INSERT INTO public.moon VALUES (294, 'moon 294', 17150.9, 968, 977635);
INSERT INTO public.moon VALUES (295, 'moon 295', 15330.8, 665, 626452);
INSERT INTO public.moon VALUES (296, 'moon 296', 36709.2, 921, 721397);
INSERT INTO public.moon VALUES (297, 'moon 297', 27770.3, 523, 1226353);
INSERT INTO public.moon VALUES (298, 'moon 298', 25212.2, 869, 1008113);
INSERT INTO public.moon VALUES (299, 'moon 299', 16411.3, 722, 1169862);
INSERT INTO public.moon VALUES (300, 'moon 300', 36209.7, 556, 289426);
INSERT INTO public.moon VALUES (301, 'moon 301', 10759.5, 680, 1254018);
INSERT INTO public.moon VALUES (302, 'moon 302', 44136.8, 999, 386111);
INSERT INTO public.moon VALUES (303, 'moon 303', 82389.9, 558, 664309);
INSERT INTO public.moon VALUES (304, 'moon 304', 61142.0, 967, 901520);
INSERT INTO public.moon VALUES (305, 'moon 305', 75385.9, 574, 1145339);
INSERT INTO public.moon VALUES (306, 'moon 306', 80471.9, 955, 1035716);
INSERT INTO public.moon VALUES (307, 'moon 307', 51396.8, 941, 1236409);
INSERT INTO public.moon VALUES (308, 'moon 308', 4662.1, 802, 1203834);
INSERT INTO public.moon VALUES (309, 'moon 309', 34146.6, 811, 1254029);
INSERT INTO public.moon VALUES (310, 'moon 310', 6621.2, 705, 465610);
INSERT INTO public.moon VALUES (311, 'moon 311', 36131.4, 617, 706194);
INSERT INTO public.moon VALUES (312, 'moon 312', 89142.5, 740, 216127);
INSERT INTO public.moon VALUES (313, 'moon 313', 62907.0, 785, 1259208);
INSERT INTO public.moon VALUES (314, 'moon 314', 38427.6, 903, 1002220);
INSERT INTO public.moon VALUES (315, 'moon 315', 12444.6, 695, 572075);
INSERT INTO public.moon VALUES (316, 'moon 316', 74220.9, 606, 496878);
INSERT INTO public.moon VALUES (317, 'moon 317', 66455.6, 842, 946690);
INSERT INTO public.moon VALUES (318, 'moon 318', 55531.5, 857, 1216744);
INSERT INTO public.moon VALUES (319, 'moon 319', 48710.9, 884, 416744);
INSERT INTO public.moon VALUES (320, 'moon 320', 31852.5, 677, 517771);
INSERT INTO public.moon VALUES (321, 'moon 321', 51975.2, 519, 962690);
INSERT INTO public.moon VALUES (322, 'moon 322', 1126.5, 645, 867891);
INSERT INTO public.moon VALUES (323, 'moon 323', 60438.6, 661, 204102);
INSERT INTO public.moon VALUES (324, 'moon 324', 85619.2, 806, 99204);
INSERT INTO public.moon VALUES (325, 'moon 325', 24333.9, 755, 667222);
INSERT INTO public.moon VALUES (326, 'moon 326', 87908.0, 828, 848864);
INSERT INTO public.moon VALUES (327, 'moon 327', 39147.2, 590, 994718);
INSERT INTO public.moon VALUES (328, 'moon 328', 71669.7, 909, 20524);
INSERT INTO public.moon VALUES (329, 'moon 329', 47775.9, 631, 300336);
INSERT INTO public.moon VALUES (330, 'moon 330', 84913.3, 521, 1072723);
INSERT INTO public.moon VALUES (331, 'moon 331', 27204.9, 998, 1106963);
INSERT INTO public.moon VALUES (332, 'moon 332', 77876.5, 831, 1156904);
INSERT INTO public.moon VALUES (333, 'moon 333', 78377.2, 826, 753626);
INSERT INTO public.moon VALUES (334, 'moon 334', 21846.6, 694, 917710);
INSERT INTO public.moon VALUES (335, 'moon 335', 79452.5, 945, 84316);
INSERT INTO public.moon VALUES (336, 'moon 336', 65925.1, 896, 790541);
INSERT INTO public.moon VALUES (337, 'moon 337', 41881.2, 693, 767306);
INSERT INTO public.moon VALUES (338, 'moon 338', 10920.6, 859, 865727);
INSERT INTO public.moon VALUES (339, 'moon 339', 32666.4, 865, 677112);
INSERT INTO public.moon VALUES (340, 'moon 340', 60843.7, 968, 1044351);
INSERT INTO public.moon VALUES (341, 'moon 341', 34991.4, 996, 1112073);
INSERT INTO public.moon VALUES (342, 'moon 342', 43887.2, 812, 660705);
INSERT INTO public.moon VALUES (343, 'moon 343', 16140.2, 657, 347894);
INSERT INTO public.moon VALUES (344, 'moon 344', 38181.2, 658, 1203041);
INSERT INTO public.moon VALUES (345, 'moon 345', 10577.8, 519, 1206703);
INSERT INTO public.moon VALUES (346, 'moon 346', 86220.2, 598, 243786);
INSERT INTO public.moon VALUES (347, 'moon 347', 4484.3, 779, 1279590);
INSERT INTO public.moon VALUES (348, 'moon 348', 89408.8, 835, 36672);
INSERT INTO public.moon VALUES (349, 'moon 349', 88702.5, 899, 635477);
INSERT INTO public.moon VALUES (350, 'moon 350', 10118.3, 959, 1224049);
INSERT INTO public.moon VALUES (351, 'moon 351', 59565.2, 614, 1155311);
INSERT INTO public.moon VALUES (352, 'moon 352', 8028.2, 503, 1108694);
INSERT INTO public.moon VALUES (353, 'moon 353', 390.6, 700, 963282);
INSERT INTO public.moon VALUES (354, 'moon 354', 24104.5, 919, 131124);
INSERT INTO public.moon VALUES (355, 'moon 355', 80583.1, 564, 522695);
INSERT INTO public.moon VALUES (356, 'moon 356', 26413.6, 974, 611931);
INSERT INTO public.moon VALUES (357, 'moon 357', 26993.5, 550, 736478);
INSERT INTO public.moon VALUES (358, 'moon 358', 36784.7, 976, 633306);
INSERT INTO public.moon VALUES (359, 'moon 359', 41850.8, 761, 933386);
INSERT INTO public.moon VALUES (360, 'moon 360', 56753.7, 847, 458705);
INSERT INTO public.moon VALUES (361, 'moon 361', 77609.8, 576, 154076);
INSERT INTO public.moon VALUES (362, 'moon 362', 62275.9, 729, 1091758);
INSERT INTO public.moon VALUES (363, 'moon 363', 88787.0, 614, 722648);
INSERT INTO public.moon VALUES (364, 'moon 364', 15413.7, 762, 1150348);
INSERT INTO public.moon VALUES (365, 'moon 365', 25874.0, 681, 941406);
INSERT INTO public.moon VALUES (366, 'moon 366', 56818.7, 919, 163628);
INSERT INTO public.moon VALUES (367, 'moon 367', 88568.4, 623, 11579);
INSERT INTO public.moon VALUES (368, 'moon 368', 80499.5, 686, 1220638);
INSERT INTO public.moon VALUES (369, 'moon 369', 49360.8, 842, 281882);
INSERT INTO public.moon VALUES (370, 'moon 370', 55852.3, 709, 1132303);
INSERT INTO public.moon VALUES (371, 'moon 371', 17405.4, 803, 938157);
INSERT INTO public.moon VALUES (372, 'moon 372', 89920.9, 700, 821683);
INSERT INTO public.moon VALUES (373, 'moon 373', 38922.5, 899, 982932);
INSERT INTO public.moon VALUES (374, 'moon 374', 12626.6, 509, 1219126);
INSERT INTO public.moon VALUES (375, 'moon 375', 51539.0, 837, 521417);
INSERT INTO public.moon VALUES (376, 'moon 376', 51070.2, 714, 335843);
INSERT INTO public.moon VALUES (377, 'moon 377', 25345.3, 815, 319156);
INSERT INTO public.moon VALUES (378, 'moon 378', 90415.7, 999, 1004894);
INSERT INTO public.moon VALUES (379, 'moon 379', 75853.7, 636, 731796);
INSERT INTO public.moon VALUES (380, 'moon 380', 64683.3, 675, 856126);
INSERT INTO public.moon VALUES (381, 'moon 381', 83260.5, 913, 941481);
INSERT INTO public.moon VALUES (382, 'moon 382', 44247.6, 730, 842683);
INSERT INTO public.moon VALUES (383, 'moon 383', 20698.5, 833, 420664);
INSERT INTO public.moon VALUES (384, 'moon 384', 62244.9, 774, 1182523);
INSERT INTO public.moon VALUES (385, 'moon 385', 83681.8, 728, 569262);
INSERT INTO public.moon VALUES (386, 'moon 386', 53622.7, 949, 610126);
INSERT INTO public.moon VALUES (387, 'moon 387', 45643.5, 702, 1163681);
INSERT INTO public.moon VALUES (388, 'moon 388', 71903.6, 853, 64537);
INSERT INTO public.moon VALUES (389, 'moon 389', 15707.4, 851, 516600);
INSERT INTO public.moon VALUES (390, 'moon 390', 58005.2, 691, 64870);
INSERT INTO public.moon VALUES (391, 'moon 391', 33597.4, 563, 284755);
INSERT INTO public.moon VALUES (392, 'moon 392', 75301.8, 941, 1130983);
INSERT INTO public.moon VALUES (393, 'moon 393', 73234.3, 845, 255270);
INSERT INTO public.moon VALUES (394, 'moon 394', 58682.3, 663, 917284);
INSERT INTO public.moon VALUES (395, 'moon 395', 49549.6, 627, 336339);
INSERT INTO public.moon VALUES (396, 'moon 396', 2105.4, 596, 459641);
INSERT INTO public.moon VALUES (397, 'moon 397', 29278.0, 867, 209803);
INSERT INTO public.moon VALUES (398, 'moon 398', 60486.2, 867, 391323);
INSERT INTO public.moon VALUES (399, 'moon 399', 89451.6, 800, 1041631);
INSERT INTO public.moon VALUES (400, 'moon 400', 1375.0, 511, 773977);
INSERT INTO public.moon VALUES (401, 'moon 401', 22617.0, 653, 973334);
INSERT INTO public.moon VALUES (402, 'moon 402', 90587.4, 903, 603550);
INSERT INTO public.moon VALUES (403, 'moon 403', 78109.4, 999, 48149);
INSERT INTO public.moon VALUES (404, 'moon 404', 46576.5, 624, 1107261);
INSERT INTO public.moon VALUES (405, 'moon 405', 88587.4, 593, 1069886);
INSERT INTO public.moon VALUES (406, 'moon 406', 73040.9, 577, 570502);
INSERT INTO public.moon VALUES (407, 'moon 407', 27725.9, 607, 755894);
INSERT INTO public.moon VALUES (408, 'moon 408', 25303.1, 946, 394031);
INSERT INTO public.moon VALUES (409, 'moon 409', 4577.4, 877, 411431);
INSERT INTO public.moon VALUES (410, 'moon 410', 13886.1, 697, 533583);
INSERT INTO public.moon VALUES (411, 'moon 411', 56395.4, 714, 559299);
INSERT INTO public.moon VALUES (412, 'moon 412', 66667.7, 556, 1234933);
INSERT INTO public.moon VALUES (413, 'moon 413', 39999.6, 772, 1270894);
INSERT INTO public.moon VALUES (414, 'moon 414', 27089.7, 548, 226380);
INSERT INTO public.moon VALUES (415, 'moon 415', 19099.9, 582, 217781);
INSERT INTO public.moon VALUES (416, 'moon 416', 67210.0, 527, 1115076);
INSERT INTO public.moon VALUES (417, 'moon 417', 76636.3, 617, 1121999);
INSERT INTO public.moon VALUES (418, 'moon 418', 51769.9, 782, 982877);
INSERT INTO public.moon VALUES (419, 'moon 419', 6916.0, 850, 1054645);
INSERT INTO public.moon VALUES (420, 'moon 420', 82900.0, 514, 41278);
INSERT INTO public.moon VALUES (421, 'moon 421', 1120.8, 859, 1056844);
INSERT INTO public.moon VALUES (422, 'moon 422', 55166.5, 584, 144161);
INSERT INTO public.moon VALUES (423, 'moon 423', 68889.4, 877, 461885);
INSERT INTO public.moon VALUES (424, 'moon 424', 83588.2, 998, 342933);
INSERT INTO public.moon VALUES (425, 'moon 425', 86864.9, 521, 158715);
INSERT INTO public.moon VALUES (426, 'moon 426', 19237.7, 781, 22217);
INSERT INTO public.moon VALUES (427, 'moon 427', 54151.7, 967, 1281352);
INSERT INTO public.moon VALUES (428, 'moon 428', 63007.4, 637, 420524);
INSERT INTO public.moon VALUES (429, 'moon 429', 33692.4, 738, 561136);
INSERT INTO public.moon VALUES (430, 'moon 430', 36820.9, 864, 1211256);
INSERT INTO public.moon VALUES (431, 'moon 431', 46294.6, 843, 928877);
INSERT INTO public.moon VALUES (432, 'moon 432', 78033.6, 869, 1155832);
INSERT INTO public.moon VALUES (433, 'moon 433', 59568.0, 527, 750271);
INSERT INTO public.moon VALUES (434, 'moon 434', 56405.4, 742, 122628);
INSERT INTO public.moon VALUES (435, 'moon 435', 78090.0, 715, 738102);
INSERT INTO public.moon VALUES (436, 'moon 436', 23391.6, 595, 863011);
INSERT INTO public.moon VALUES (437, 'moon 437', 33722.1, 765, 1175100);
INSERT INTO public.moon VALUES (438, 'moon 438', 39181.2, 506, 1095611);
INSERT INTO public.moon VALUES (439, 'moon 439', 58242.4, 908, 396529);
INSERT INTO public.moon VALUES (440, 'moon 440', 37613.1, 801, 440970);
INSERT INTO public.moon VALUES (441, 'moon 441', 15614.0, 928, 858780);
INSERT INTO public.moon VALUES (442, 'moon 442', 3976.5, 934, 1213549);
INSERT INTO public.moon VALUES (443, 'moon 443', 30446.2, 820, 116745);
INSERT INTO public.moon VALUES (444, 'moon 444', 65238.1, 567, 580953);
INSERT INTO public.moon VALUES (445, 'moon 445', 52874.5, 793, 524656);
INSERT INTO public.moon VALUES (446, 'moon 446', 49289.4, 986, 850260);
INSERT INTO public.moon VALUES (447, 'moon 447', 27511.3, 963, 398511);
INSERT INTO public.moon VALUES (448, 'moon 448', 81581.3, 611, 211307);
INSERT INTO public.moon VALUES (449, 'moon 449', 70153.0, 718, 437249);
INSERT INTO public.moon VALUES (450, 'moon 450', 65595.4, 978, 807919);
INSERT INTO public.moon VALUES (451, 'moon 451', 6883.2, 805, 777267);
INSERT INTO public.moon VALUES (452, 'moon 452', 69936.0, 633, 723008);
INSERT INTO public.moon VALUES (453, 'moon 453', 76739.0, 987, 1094545);
INSERT INTO public.moon VALUES (454, 'moon 454', 34004.1, 651, 444545);
INSERT INTO public.moon VALUES (455, 'moon 455', 19305.5, 649, 935410);
INSERT INTO public.moon VALUES (456, 'moon 456', 86536.0, 897, 754180);
INSERT INTO public.moon VALUES (457, 'moon 457', 34663.5, 504, 971374);
INSERT INTO public.moon VALUES (458, 'moon 458', 19262.4, 609, 365667);
INSERT INTO public.moon VALUES (459, 'moon 459', 28401.3, 831, 437177);
INSERT INTO public.moon VALUES (460, 'moon 460', 14939.7, 613, 904027);
INSERT INTO public.moon VALUES (461, 'moon 461', 81908.2, 783, 682060);
INSERT INTO public.moon VALUES (462, 'moon 462', 68730.8, 915, 890917);
INSERT INTO public.moon VALUES (463, 'moon 463', 10011.8, 962, 1111695);
INSERT INTO public.moon VALUES (464, 'moon 464', 25553.8, 640, 1161210);
INSERT INTO public.moon VALUES (465, 'moon 465', 73375.4, 562, 648242);
INSERT INTO public.moon VALUES (466, 'moon 466', 55079.4, 561, 615620);
INSERT INTO public.moon VALUES (467, 'moon 467', 35386.4, 709, 871919);
INSERT INTO public.moon VALUES (468, 'moon 468', 60526.7, 583, 268983);
INSERT INTO public.moon VALUES (469, 'moon 469', 67873.2, 593, 414305);
INSERT INTO public.moon VALUES (470, 'moon 470', 46649.1, 874, 937182);
INSERT INTO public.moon VALUES (471, 'moon 471', 39010.9, 511, 196136);
INSERT INTO public.moon VALUES (472, 'moon 472', 49155.6, 783, 483057);
INSERT INTO public.moon VALUES (473, 'moon 473', 48018.6, 520, 683207);
INSERT INTO public.moon VALUES (474, 'moon 474', 65052.0, 709, 1239509);
INSERT INTO public.moon VALUES (475, 'moon 475', 20687.6, 967, 948157);
INSERT INTO public.moon VALUES (476, 'moon 476', 61714.5, 602, 352129);
INSERT INTO public.moon VALUES (477, 'moon 477', 73640.1, 989, 1140614);
INSERT INTO public.moon VALUES (478, 'moon 478', 42486.7, 907, 274670);
INSERT INTO public.moon VALUES (479, 'moon 479', 32407.0, 684, 1121653);
INSERT INTO public.moon VALUES (480, 'moon 480', 31454.3, 887, 168811);
INSERT INTO public.moon VALUES (481, 'moon 481', 24080.8, 570, 497083);
INSERT INTO public.moon VALUES (482, 'moon 482', 65522.1, 782, 867758);
INSERT INTO public.moon VALUES (483, 'moon 483', 68440.4, 898, 252974);
INSERT INTO public.moon VALUES (484, 'moon 484', 69152.9, 621, 349685);
INSERT INTO public.moon VALUES (485, 'moon 485', 34287.2, 948, 515293);
INSERT INTO public.moon VALUES (486, 'moon 486', 34032.0, 932, 196671);
INSERT INTO public.moon VALUES (487, 'moon 487', 33834.4, 703, 574031);
INSERT INTO public.moon VALUES (488, 'moon 488', 88015.6, 840, 1056394);
INSERT INTO public.moon VALUES (489, 'moon 489', 12882.5, 582, 107500);
INSERT INTO public.moon VALUES (490, 'moon 490', 38540.8, 599, 945663);
INSERT INTO public.moon VALUES (491, 'moon 491', 50532.9, 674, 570451);
INSERT INTO public.moon VALUES (492, 'moon 492', 64144.2, 532, 64266);
INSERT INTO public.moon VALUES (493, 'moon 493', 72557.7, 960, 404146);
INSERT INTO public.moon VALUES (494, 'moon 494', 13724.3, 778, 635830);
INSERT INTO public.moon VALUES (495, 'moon 495', 33406.8, 815, 1050094);
INSERT INTO public.moon VALUES (496, 'moon 496', 81486.0, 868, 1033515);
INSERT INTO public.moon VALUES (497, 'moon 497', 17091.4, 508, 564976);
INSERT INTO public.moon VALUES (498, 'moon 498', 10683.4, 880, 1063896);
INSERT INTO public.moon VALUES (499, 'moon 499', 44011.7, 981, 821660);
INSERT INTO public.moon VALUES (500, 'moon 500', 76452.6, 992, 1202749);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (501, 'Planet name1', 9, 'Climate is pleasant at planet 1', true, 542);
INSERT INTO public.planet VALUES (502, 'Planet name2', 5, 'Climate is pleasant at planet 2', false, 700);
INSERT INTO public.planet VALUES (503, 'Planet name3', 4, 'Climate is pleasant at planet 3', true, 936);
INSERT INTO public.planet VALUES (504, 'Planet name4', 2, 'Climate is pleasant at planet 4', true, 672);
INSERT INTO public.planet VALUES (505, 'Planet name5', 8, 'Climate is pleasant at planet 5', false, 572);
INSERT INTO public.planet VALUES (506, 'Planet name6', 3, 'Climate is pleasant at planet 6', false, 674);
INSERT INTO public.planet VALUES (507, 'Planet name7', 2, 'Climate is pleasant at planet 7', true, 630);
INSERT INTO public.planet VALUES (508, 'Planet name8', 9, 'Climate is pleasant at planet 8', true, 508);
INSERT INTO public.planet VALUES (509, 'Planet name9', 9, 'Climate is pleasant at planet 9', false, 508);
INSERT INTO public.planet VALUES (510, 'Planet name10', 5, 'Climate is pleasant at planet 10', false, 806);
INSERT INTO public.planet VALUES (511, 'Planet name11', 6, 'Climate is pleasant at planet 11', false, 815);
INSERT INTO public.planet VALUES (512, 'Planet name12', 6, 'Climate is pleasant at planet 12', false, 571);
INSERT INTO public.planet VALUES (513, 'Planet name13', 0, 'Climate is pleasant at planet 13', false, 625);
INSERT INTO public.planet VALUES (514, 'Planet name14', 8, 'Climate is pleasant at planet 14', true, 509);
INSERT INTO public.planet VALUES (515, 'Planet name15', 8, 'Climate is pleasant at planet 15', true, 613);
INSERT INTO public.planet VALUES (516, 'Planet name16', 7, 'Climate is pleasant at planet 16', true, 538);
INSERT INTO public.planet VALUES (517, 'Planet name17', 1, 'Climate is pleasant at planet 17', true, 731);
INSERT INTO public.planet VALUES (518, 'Planet name18', 2, 'Climate is pleasant at planet 18', false, 962);
INSERT INTO public.planet VALUES (519, 'Planet name19', 3, 'Climate is pleasant at planet 19', false, 851);
INSERT INTO public.planet VALUES (520, 'Planet name20', 6, 'Climate is pleasant at planet 20', true, 576);
INSERT INTO public.planet VALUES (521, 'Planet name21', 7, 'Climate is pleasant at planet 21', false, 831);
INSERT INTO public.planet VALUES (522, 'Planet name22', 8, 'Climate is pleasant at planet 22', true, 716);
INSERT INTO public.planet VALUES (523, 'Planet name23', 1, 'Climate is pleasant at planet 23', false, 614);
INSERT INTO public.planet VALUES (524, 'Planet name24', 8, 'Climate is pleasant at planet 24', false, 773);
INSERT INTO public.planet VALUES (525, 'Planet name25', 9, 'Climate is pleasant at planet 25', false, 531);
INSERT INTO public.planet VALUES (526, 'Planet name26', 7, 'Climate is pleasant at planet 26', true, 647);
INSERT INTO public.planet VALUES (527, 'Planet name27', 1, 'Climate is pleasant at planet 27', false, 780);
INSERT INTO public.planet VALUES (528, 'Planet name28', 2, 'Climate is pleasant at planet 28', false, 523);
INSERT INTO public.planet VALUES (529, 'Planet name29', 4, 'Climate is pleasant at planet 29', true, 663);
INSERT INTO public.planet VALUES (530, 'Planet name30', 4, 'Climate is pleasant at planet 30', false, 660);
INSERT INTO public.planet VALUES (531, 'Planet name31', 3, 'Climate is pleasant at planet 31', true, 548);
INSERT INTO public.planet VALUES (532, 'Planet name32', 5, 'Climate is pleasant at planet 32', false, 680);
INSERT INTO public.planet VALUES (533, 'Planet name33', 1, 'Climate is pleasant at planet 33', true, 563);
INSERT INTO public.planet VALUES (534, 'Planet name34', 0, 'Climate is pleasant at planet 34', false, 942);
INSERT INTO public.planet VALUES (535, 'Planet name35', 1, 'Climate is pleasant at planet 35', true, 624);
INSERT INTO public.planet VALUES (536, 'Planet name36', 6, 'Climate is pleasant at planet 36', false, 937);
INSERT INTO public.planet VALUES (537, 'Planet name37', 7, 'Climate is pleasant at planet 37', false, 529);
INSERT INTO public.planet VALUES (538, 'Planet name38', 7, 'Climate is pleasant at planet 38', true, 815);
INSERT INTO public.planet VALUES (539, 'Planet name39', 3, 'Climate is pleasant at planet 39', false, 692);
INSERT INTO public.planet VALUES (540, 'Planet name40', 4, 'Climate is pleasant at planet 40', true, 845);
INSERT INTO public.planet VALUES (541, 'Planet name41', 4, 'Climate is pleasant at planet 41', false, 808);
INSERT INTO public.planet VALUES (542, 'Planet name42', 9, 'Climate is pleasant at planet 42', false, 656);
INSERT INTO public.planet VALUES (543, 'Planet name43', 1, 'Climate is pleasant at planet 43', false, 961);
INSERT INTO public.planet VALUES (544, 'Planet name44', 7, 'Climate is pleasant at planet 44', false, 538);
INSERT INTO public.planet VALUES (545, 'Planet name45', 9, 'Climate is pleasant at planet 45', false, 900);
INSERT INTO public.planet VALUES (546, 'Planet name46', 1, 'Climate is pleasant at planet 46', true, 627);
INSERT INTO public.planet VALUES (547, 'Planet name47', 4, 'Climate is pleasant at planet 47', true, 858);
INSERT INTO public.planet VALUES (548, 'Planet name48', 9, 'Climate is pleasant at planet 48', true, 745);
INSERT INTO public.planet VALUES (549, 'Planet name49', 3, 'Climate is pleasant at planet 49', true, 831);
INSERT INTO public.planet VALUES (550, 'Planet name50', 2, 'Climate is pleasant at planet 50', true, 835);
INSERT INTO public.planet VALUES (551, 'Planet name51', 8, 'Climate is pleasant at planet 51', false, 570);
INSERT INTO public.planet VALUES (552, 'Planet name52', 1, 'Climate is pleasant at planet 52', true, 644);
INSERT INTO public.planet VALUES (553, 'Planet name53', 7, 'Climate is pleasant at planet 53', true, 706);
INSERT INTO public.planet VALUES (554, 'Planet name54', 5, 'Climate is pleasant at planet 54', true, 729);
INSERT INTO public.planet VALUES (555, 'Planet name55', 1, 'Climate is pleasant at planet 55', false, 544);
INSERT INTO public.planet VALUES (556, 'Planet name56', 6, 'Climate is pleasant at planet 56', true, 804);
INSERT INTO public.planet VALUES (557, 'Planet name57', 10, 'Climate is pleasant at planet 57', true, 656);
INSERT INTO public.planet VALUES (558, 'Planet name58', 9, 'Climate is pleasant at planet 58', false, 803);
INSERT INTO public.planet VALUES (559, 'Planet name59', 8, 'Climate is pleasant at planet 59', true, 779);
INSERT INTO public.planet VALUES (560, 'Planet name60', 8, 'Climate is pleasant at planet 60', false, 587);
INSERT INTO public.planet VALUES (561, 'Planet name61', 5, 'Climate is pleasant at planet 61', false, 628);
INSERT INTO public.planet VALUES (562, 'Planet name62', 7, 'Climate is pleasant at planet 62', false, 603);
INSERT INTO public.planet VALUES (563, 'Planet name63', 5, 'Climate is pleasant at planet 63', true, 772);
INSERT INTO public.planet VALUES (564, 'Planet name64', 0, 'Climate is pleasant at planet 64', true, 723);
INSERT INTO public.planet VALUES (565, 'Planet name65', 7, 'Climate is pleasant at planet 65', false, 851);
INSERT INTO public.planet VALUES (566, 'Planet name66', 9, 'Climate is pleasant at planet 66', false, 504);
INSERT INTO public.planet VALUES (567, 'Planet name67', 10, 'Climate is pleasant at planet 67', true, 634);
INSERT INTO public.planet VALUES (568, 'Planet name68', 1, 'Climate is pleasant at planet 68', true, 827);
INSERT INTO public.planet VALUES (569, 'Planet name69', 5, 'Climate is pleasant at planet 69', true, 521);
INSERT INTO public.planet VALUES (570, 'Planet name70', 2, 'Climate is pleasant at planet 70', true, 702);
INSERT INTO public.planet VALUES (571, 'Planet name71', 2, 'Climate is pleasant at planet 71', false, 718);
INSERT INTO public.planet VALUES (572, 'Planet name72', 8, 'Climate is pleasant at planet 72', true, 571);
INSERT INTO public.planet VALUES (573, 'Planet name73', 0, 'Climate is pleasant at planet 73', true, 940);
INSERT INTO public.planet VALUES (574, 'Planet name74', 5, 'Climate is pleasant at planet 74', true, 780);
INSERT INTO public.planet VALUES (575, 'Planet name75', 3, 'Climate is pleasant at planet 75', false, 676);
INSERT INTO public.planet VALUES (576, 'Planet name76', 10, 'Climate is pleasant at planet 76', false, 899);
INSERT INTO public.planet VALUES (577, 'Planet name77', 4, 'Climate is pleasant at planet 77', false, 839);
INSERT INTO public.planet VALUES (578, 'Planet name78', 5, 'Climate is pleasant at planet 78', true, 973);
INSERT INTO public.planet VALUES (579, 'Planet name79', 7, 'Climate is pleasant at planet 79', true, 867);
INSERT INTO public.planet VALUES (580, 'Planet name80', 8, 'Climate is pleasant at planet 80', false, 622);
INSERT INTO public.planet VALUES (581, 'Planet name81', 3, 'Climate is pleasant at planet 81', true, 626);
INSERT INTO public.planet VALUES (582, 'Planet name82', 2, 'Climate is pleasant at planet 82', true, 827);
INSERT INTO public.planet VALUES (583, 'Planet name83', 1, 'Climate is pleasant at planet 83', true, 757);
INSERT INTO public.planet VALUES (584, 'Planet name84', 1, 'Climate is pleasant at planet 84', true, 611);
INSERT INTO public.planet VALUES (585, 'Planet name85', 9, 'Climate is pleasant at planet 85', false, 565);
INSERT INTO public.planet VALUES (586, 'Planet name86', 1, 'Climate is pleasant at planet 86', false, 629);
INSERT INTO public.planet VALUES (587, 'Planet name87', 7, 'Climate is pleasant at planet 87', true, 648);
INSERT INTO public.planet VALUES (588, 'Planet name88', 2, 'Climate is pleasant at planet 88', true, 645);
INSERT INTO public.planet VALUES (589, 'Planet name89', 8, 'Climate is pleasant at planet 89', true, 926);
INSERT INTO public.planet VALUES (590, 'Planet name90', 4, 'Climate is pleasant at planet 90', false, 900);
INSERT INTO public.planet VALUES (591, 'Planet name91', 6, 'Climate is pleasant at planet 91', true, 845);
INSERT INTO public.planet VALUES (592, 'Planet name92', 9, 'Climate is pleasant at planet 92', true, 592);
INSERT INTO public.planet VALUES (593, 'Planet name93', 5, 'Climate is pleasant at planet 93', true, 939);
INSERT INTO public.planet VALUES (594, 'Planet name94', 4, 'Climate is pleasant at planet 94', true, 897);
INSERT INTO public.planet VALUES (595, 'Planet name95', 1, 'Climate is pleasant at planet 95', true, 994);
INSERT INTO public.planet VALUES (596, 'Planet name96', 6, 'Climate is pleasant at planet 96', true, 590);
INSERT INTO public.planet VALUES (597, 'Planet name97', 1, 'Climate is pleasant at planet 97', false, 767);
INSERT INTO public.planet VALUES (598, 'Planet name98', 2, 'Climate is pleasant at planet 98', true, 910);
INSERT INTO public.planet VALUES (599, 'Planet name99', 5, 'Climate is pleasant at planet 99', false, 745);
INSERT INTO public.planet VALUES (600, 'Planet name100', 4, 'Climate is pleasant at planet 100', false, 786);
INSERT INTO public.planet VALUES (601, 'Planet name101', 6, 'Climate is pleasant at planet 101', false, 985);
INSERT INTO public.planet VALUES (602, 'Planet name102', 7, 'Climate is pleasant at planet 102', false, 854);
INSERT INTO public.planet VALUES (603, 'Planet name103', 0, 'Climate is pleasant at planet 103', false, 834);
INSERT INTO public.planet VALUES (604, 'Planet name104', 4, 'Climate is pleasant at planet 104', false, 515);
INSERT INTO public.planet VALUES (605, 'Planet name105', 6, 'Climate is pleasant at planet 105', true, 806);
INSERT INTO public.planet VALUES (606, 'Planet name106', 2, 'Climate is pleasant at planet 106', false, 852);
INSERT INTO public.planet VALUES (607, 'Planet name107', 9, 'Climate is pleasant at planet 107', true, 537);
INSERT INTO public.planet VALUES (608, 'Planet name108', 9, 'Climate is pleasant at planet 108', false, 884);
INSERT INTO public.planet VALUES (609, 'Planet name109', 5, 'Climate is pleasant at planet 109', false, 690);
INSERT INTO public.planet VALUES (610, 'Planet name110', 8, 'Climate is pleasant at planet 110', true, 819);
INSERT INTO public.planet VALUES (611, 'Planet name111', 6, 'Climate is pleasant at planet 111', false, 836);
INSERT INTO public.planet VALUES (612, 'Planet name112', 0, 'Climate is pleasant at planet 112', false, 593);
INSERT INTO public.planet VALUES (613, 'Planet name113', 8, 'Climate is pleasant at planet 113', true, 791);
INSERT INTO public.planet VALUES (614, 'Planet name114', 7, 'Climate is pleasant at planet 114', true, 550);
INSERT INTO public.planet VALUES (615, 'Planet name115', 3, 'Climate is pleasant at planet 115', false, 836);
INSERT INTO public.planet VALUES (616, 'Planet name116', 8, 'Climate is pleasant at planet 116', true, 900);
INSERT INTO public.planet VALUES (617, 'Planet name117', 9, 'Climate is pleasant at planet 117', true, 555);
INSERT INTO public.planet VALUES (618, 'Planet name118', 6, 'Climate is pleasant at planet 118', true, 600);
INSERT INTO public.planet VALUES (619, 'Planet name119', 1, 'Climate is pleasant at planet 119', true, 663);
INSERT INTO public.planet VALUES (620, 'Planet name120', 5, 'Climate is pleasant at planet 120', true, 648);
INSERT INTO public.planet VALUES (621, 'Planet name121', 3, 'Climate is pleasant at planet 121', true, 574);
INSERT INTO public.planet VALUES (622, 'Planet name122', 6, 'Climate is pleasant at planet 122', false, 977);
INSERT INTO public.planet VALUES (623, 'Planet name123', 2, 'Climate is pleasant at planet 123', true, 715);
INSERT INTO public.planet VALUES (624, 'Planet name124', 2, 'Climate is pleasant at planet 124', false, 719);
INSERT INTO public.planet VALUES (625, 'Planet name125', 1, 'Climate is pleasant at planet 125', false, 606);
INSERT INTO public.planet VALUES (626, 'Planet name126', 1, 'Climate is pleasant at planet 126', true, 740);
INSERT INTO public.planet VALUES (627, 'Planet name127', 5, 'Climate is pleasant at planet 127', false, 631);
INSERT INTO public.planet VALUES (628, 'Planet name128', 3, 'Climate is pleasant at planet 128', false, 853);
INSERT INTO public.planet VALUES (629, 'Planet name129', 9, 'Climate is pleasant at planet 129', true, 532);
INSERT INTO public.planet VALUES (630, 'Planet name130', 5, 'Climate is pleasant at planet 130', true, 901);
INSERT INTO public.planet VALUES (631, 'Planet name131', 5, 'Climate is pleasant at planet 131', true, 774);
INSERT INTO public.planet VALUES (632, 'Planet name132', 1, 'Climate is pleasant at planet 132', false, 886);
INSERT INTO public.planet VALUES (633, 'Planet name133', 5, 'Climate is pleasant at planet 133', false, 981);
INSERT INTO public.planet VALUES (634, 'Planet name134', 1, 'Climate is pleasant at planet 134', false, 694);
INSERT INTO public.planet VALUES (635, 'Planet name135', 1, 'Climate is pleasant at planet 135', true, 956);
INSERT INTO public.planet VALUES (636, 'Planet name136', 6, 'Climate is pleasant at planet 136', true, 592);
INSERT INTO public.planet VALUES (637, 'Planet name137', 4, 'Climate is pleasant at planet 137', false, 563);
INSERT INTO public.planet VALUES (638, 'Planet name138', 1, 'Climate is pleasant at planet 138', true, 866);
INSERT INTO public.planet VALUES (639, 'Planet name139', 3, 'Climate is pleasant at planet 139', true, 912);
INSERT INTO public.planet VALUES (640, 'Planet name140', 9, 'Climate is pleasant at planet 140', false, 714);
INSERT INTO public.planet VALUES (641, 'Planet name141', 10, 'Climate is pleasant at planet 141', true, 634);
INSERT INTO public.planet VALUES (642, 'Planet name142', 5, 'Climate is pleasant at planet 142', true, 695);
INSERT INTO public.planet VALUES (643, 'Planet name143', 3, 'Climate is pleasant at planet 143', false, 738);
INSERT INTO public.planet VALUES (644, 'Planet name144', 9, 'Climate is pleasant at planet 144', false, 887);
INSERT INTO public.planet VALUES (645, 'Planet name145', 1, 'Climate is pleasant at planet 145', true, 531);
INSERT INTO public.planet VALUES (646, 'Planet name146', 6, 'Climate is pleasant at planet 146', false, 978);
INSERT INTO public.planet VALUES (647, 'Planet name147', 3, 'Climate is pleasant at planet 147', true, 842);
INSERT INTO public.planet VALUES (648, 'Planet name148', 3, 'Climate is pleasant at planet 148', false, 983);
INSERT INTO public.planet VALUES (649, 'Planet name149', 10, 'Climate is pleasant at planet 149', false, 820);
INSERT INTO public.planet VALUES (650, 'Planet name150', 3, 'Climate is pleasant at planet 150', true, 816);
INSERT INTO public.planet VALUES (651, 'Planet name151', 5, 'Climate is pleasant at planet 151', false, 991);
INSERT INTO public.planet VALUES (652, 'Planet name152', 6, 'Climate is pleasant at planet 152', false, 826);
INSERT INTO public.planet VALUES (653, 'Planet name153', 10, 'Climate is pleasant at planet 153', false, 564);
INSERT INTO public.planet VALUES (654, 'Planet name154', 7, 'Climate is pleasant at planet 154', false, 690);
INSERT INTO public.planet VALUES (655, 'Planet name155', 3, 'Climate is pleasant at planet 155', false, 827);
INSERT INTO public.planet VALUES (656, 'Planet name156', 6, 'Climate is pleasant at planet 156', false, 515);
INSERT INTO public.planet VALUES (657, 'Planet name157', 2, 'Climate is pleasant at planet 157', true, 571);
INSERT INTO public.planet VALUES (658, 'Planet name158', 9, 'Climate is pleasant at planet 158', false, 513);
INSERT INTO public.planet VALUES (659, 'Planet name159', 8, 'Climate is pleasant at planet 159', true, 817);
INSERT INTO public.planet VALUES (660, 'Planet name160', 2, 'Climate is pleasant at planet 160', true, 627);
INSERT INTO public.planet VALUES (661, 'Planet name161', 7, 'Climate is pleasant at planet 161', true, 896);
INSERT INTO public.planet VALUES (662, 'Planet name162', 4, 'Climate is pleasant at planet 162', false, 706);
INSERT INTO public.planet VALUES (663, 'Planet name163', 9, 'Climate is pleasant at planet 163', true, 918);
INSERT INTO public.planet VALUES (664, 'Planet name164', 2, 'Climate is pleasant at planet 164', true, 817);
INSERT INTO public.planet VALUES (665, 'Planet name165', 3, 'Climate is pleasant at planet 165', false, 546);
INSERT INTO public.planet VALUES (666, 'Planet name166', 4, 'Climate is pleasant at planet 166', false, 695);
INSERT INTO public.planet VALUES (667, 'Planet name167', 8, 'Climate is pleasant at planet 167', false, 824);
INSERT INTO public.planet VALUES (668, 'Planet name168', 4, 'Climate is pleasant at planet 168', true, 660);
INSERT INTO public.planet VALUES (669, 'Planet name169', 3, 'Climate is pleasant at planet 169', false, 577);
INSERT INTO public.planet VALUES (670, 'Planet name170', 4, 'Climate is pleasant at planet 170', true, 817);
INSERT INTO public.planet VALUES (671, 'Planet name171', 7, 'Climate is pleasant at planet 171', true, 768);
INSERT INTO public.planet VALUES (672, 'Planet name172', 3, 'Climate is pleasant at planet 172', false, 730);
INSERT INTO public.planet VALUES (673, 'Planet name173', 3, 'Climate is pleasant at planet 173', false, 816);
INSERT INTO public.planet VALUES (674, 'Planet name174', 4, 'Climate is pleasant at planet 174', false, 566);
INSERT INTO public.planet VALUES (675, 'Planet name175', 2, 'Climate is pleasant at planet 175', true, 542);
INSERT INTO public.planet VALUES (676, 'Planet name176', 6, 'Climate is pleasant at planet 176', false, 697);
INSERT INTO public.planet VALUES (677, 'Planet name177', 7, 'Climate is pleasant at planet 177', true, 746);
INSERT INTO public.planet VALUES (678, 'Planet name178', 1, 'Climate is pleasant at planet 178', false, 892);
INSERT INTO public.planet VALUES (679, 'Planet name179', 7, 'Climate is pleasant at planet 179', false, 749);
INSERT INTO public.planet VALUES (680, 'Planet name180', 5, 'Climate is pleasant at planet 180', false, 638);
INSERT INTO public.planet VALUES (681, 'Planet name181', 4, 'Climate is pleasant at planet 181', true, 902);
INSERT INTO public.planet VALUES (682, 'Planet name182', 4, 'Climate is pleasant at planet 182', true, 745);
INSERT INTO public.planet VALUES (683, 'Planet name183', 5, 'Climate is pleasant at planet 183', true, 904);
INSERT INTO public.planet VALUES (684, 'Planet name184', 3, 'Climate is pleasant at planet 184', false, 574);
INSERT INTO public.planet VALUES (685, 'Planet name185', 2, 'Climate is pleasant at planet 185', false, 888);
INSERT INTO public.planet VALUES (686, 'Planet name186', 10, 'Climate is pleasant at planet 186', true, 881);
INSERT INTO public.planet VALUES (687, 'Planet name187', 4, 'Climate is pleasant at planet 187', false, 712);
INSERT INTO public.planet VALUES (688, 'Planet name188', 4, 'Climate is pleasant at planet 188', false, 755);
INSERT INTO public.planet VALUES (689, 'Planet name189', 0, 'Climate is pleasant at planet 189', false, 642);
INSERT INTO public.planet VALUES (690, 'Planet name190', 3, 'Climate is pleasant at planet 190', true, 827);
INSERT INTO public.planet VALUES (691, 'Planet name191', 4, 'Climate is pleasant at planet 191', true, 888);
INSERT INTO public.planet VALUES (692, 'Planet name192', 2, 'Climate is pleasant at planet 192', true, 575);
INSERT INTO public.planet VALUES (693, 'Planet name193', 4, 'Climate is pleasant at planet 193', false, 983);
INSERT INTO public.planet VALUES (694, 'Planet name194', 8, 'Climate is pleasant at planet 194', true, 592);
INSERT INTO public.planet VALUES (695, 'Planet name195', 5, 'Climate is pleasant at planet 195', false, 763);
INSERT INTO public.planet VALUES (696, 'Planet name196', 10, 'Climate is pleasant at planet 196', true, 846);
INSERT INTO public.planet VALUES (697, 'Planet name197', 8, 'Climate is pleasant at planet 197', true, 820);
INSERT INTO public.planet VALUES (698, 'Planet name198', 1, 'Climate is pleasant at planet 198', true, 781);
INSERT INTO public.planet VALUES (699, 'Planet name199', 9, 'Climate is pleasant at planet 199', true, 564);
INSERT INTO public.planet VALUES (700, 'Planet name200', 0, 'Climate is pleasant at planet 200', false, 537);
INSERT INTO public.planet VALUES (701, 'Planet name201', 1, 'Climate is pleasant at planet 201', false, 747);
INSERT INTO public.planet VALUES (702, 'Planet name202', 7, 'Climate is pleasant at planet 202', true, 597);
INSERT INTO public.planet VALUES (703, 'Planet name203', 4, 'Climate is pleasant at planet 203', true, 850);
INSERT INTO public.planet VALUES (704, 'Planet name204', 1, 'Climate is pleasant at planet 204', true, 929);
INSERT INTO public.planet VALUES (705, 'Planet name205', 4, 'Climate is pleasant at planet 205', true, 855);
INSERT INTO public.planet VALUES (706, 'Planet name206', 4, 'Climate is pleasant at planet 206', false, 693);
INSERT INTO public.planet VALUES (707, 'Planet name207', 10, 'Climate is pleasant at planet 207', false, 642);
INSERT INTO public.planet VALUES (708, 'Planet name208', 4, 'Climate is pleasant at planet 208', true, 973);
INSERT INTO public.planet VALUES (709, 'Planet name209', 9, 'Climate is pleasant at planet 209', true, 752);
INSERT INTO public.planet VALUES (710, 'Planet name210', 1, 'Climate is pleasant at planet 210', false, 982);
INSERT INTO public.planet VALUES (711, 'Planet name211', 7, 'Climate is pleasant at planet 211', true, 854);
INSERT INTO public.planet VALUES (712, 'Planet name212', 6, 'Climate is pleasant at planet 212', false, 542);
INSERT INTO public.planet VALUES (713, 'Planet name213', 10, 'Climate is pleasant at planet 213', true, 789);
INSERT INTO public.planet VALUES (714, 'Planet name214', 8, 'Climate is pleasant at planet 214', true, 591);
INSERT INTO public.planet VALUES (715, 'Planet name215', 8, 'Climate is pleasant at planet 215', false, 635);
INSERT INTO public.planet VALUES (716, 'Planet name216', 4, 'Climate is pleasant at planet 216', true, 943);
INSERT INTO public.planet VALUES (717, 'Planet name217', 5, 'Climate is pleasant at planet 217', false, 610);
INSERT INTO public.planet VALUES (718, 'Planet name218', 5, 'Climate is pleasant at planet 218', false, 747);
INSERT INTO public.planet VALUES (719, 'Planet name219', 3, 'Climate is pleasant at planet 219', false, 636);
INSERT INTO public.planet VALUES (720, 'Planet name220', 4, 'Climate is pleasant at planet 220', true, 582);
INSERT INTO public.planet VALUES (721, 'Planet name221', 1, 'Climate is pleasant at planet 221', true, 763);
INSERT INTO public.planet VALUES (722, 'Planet name222', 2, 'Climate is pleasant at planet 222', false, 645);
INSERT INTO public.planet VALUES (723, 'Planet name223', 6, 'Climate is pleasant at planet 223', true, 942);
INSERT INTO public.planet VALUES (724, 'Planet name224', 8, 'Climate is pleasant at planet 224', false, 910);
INSERT INTO public.planet VALUES (725, 'Planet name225', 7, 'Climate is pleasant at planet 225', false, 583);
INSERT INTO public.planet VALUES (726, 'Planet name226', 6, 'Climate is pleasant at planet 226', true, 965);
INSERT INTO public.planet VALUES (727, 'Planet name227', 4, 'Climate is pleasant at planet 227', false, 724);
INSERT INTO public.planet VALUES (728, 'Planet name228', 6, 'Climate is pleasant at planet 228', true, 986);
INSERT INTO public.planet VALUES (729, 'Planet name229', 10, 'Climate is pleasant at planet 229', false, 711);
INSERT INTO public.planet VALUES (730, 'Planet name230', 9, 'Climate is pleasant at planet 230', true, 738);
INSERT INTO public.planet VALUES (731, 'Planet name231', 3, 'Climate is pleasant at planet 231', true, 505);
INSERT INTO public.planet VALUES (732, 'Planet name232', 3, 'Climate is pleasant at planet 232', false, 967);
INSERT INTO public.planet VALUES (733, 'Planet name233', 10, 'Climate is pleasant at planet 233', false, 961);
INSERT INTO public.planet VALUES (734, 'Planet name234', 1, 'Climate is pleasant at planet 234', true, 876);
INSERT INTO public.planet VALUES (735, 'Planet name235', 9, 'Climate is pleasant at planet 235', true, 960);
INSERT INTO public.planet VALUES (736, 'Planet name236', 0, 'Climate is pleasant at planet 236', false, 648);
INSERT INTO public.planet VALUES (737, 'Planet name237', 6, 'Climate is pleasant at planet 237', false, 569);
INSERT INTO public.planet VALUES (738, 'Planet name238', 7, 'Climate is pleasant at planet 238', true, 948);
INSERT INTO public.planet VALUES (739, 'Planet name239', 8, 'Climate is pleasant at planet 239', false, 739);
INSERT INTO public.planet VALUES (740, 'Planet name240', 3, 'Climate is pleasant at planet 240', false, 566);
INSERT INTO public.planet VALUES (741, 'Planet name241', 6, 'Climate is pleasant at planet 241', true, 828);
INSERT INTO public.planet VALUES (742, 'Planet name242', 4, 'Climate is pleasant at planet 242', true, 875);
INSERT INTO public.planet VALUES (743, 'Planet name243', 7, 'Climate is pleasant at planet 243', true, 956);
INSERT INTO public.planet VALUES (744, 'Planet name244', 6, 'Climate is pleasant at planet 244', false, 954);
INSERT INTO public.planet VALUES (745, 'Planet name245', 9, 'Climate is pleasant at planet 245', true, 878);
INSERT INTO public.planet VALUES (746, 'Planet name246', 5, 'Climate is pleasant at planet 246', false, 614);
INSERT INTO public.planet VALUES (747, 'Planet name247', 2, 'Climate is pleasant at planet 247', true, 622);
INSERT INTO public.planet VALUES (748, 'Planet name248', 8, 'Climate is pleasant at planet 248', false, 720);
INSERT INTO public.planet VALUES (749, 'Planet name249', 10, 'Climate is pleasant at planet 249', false, 920);
INSERT INTO public.planet VALUES (750, 'Planet name250', 8, 'Climate is pleasant at planet 250', false, 870);
INSERT INTO public.planet VALUES (751, 'Planet name251', 5, 'Climate is pleasant at planet 251', true, 713);
INSERT INTO public.planet VALUES (752, 'Planet name252', 10, 'Climate is pleasant at planet 252', false, 673);
INSERT INTO public.planet VALUES (753, 'Planet name253', 2, 'Climate is pleasant at planet 253', false, 880);
INSERT INTO public.planet VALUES (754, 'Planet name254', 3, 'Climate is pleasant at planet 254', false, 721);
INSERT INTO public.planet VALUES (755, 'Planet name255', 8, 'Climate is pleasant at planet 255', false, 731);
INSERT INTO public.planet VALUES (756, 'Planet name256', 7, 'Climate is pleasant at planet 256', false, 633);
INSERT INTO public.planet VALUES (757, 'Planet name257', 5, 'Climate is pleasant at planet 257', true, 634);
INSERT INTO public.planet VALUES (758, 'Planet name258', 3, 'Climate is pleasant at planet 258', true, 754);
INSERT INTO public.planet VALUES (759, 'Planet name259', 7, 'Climate is pleasant at planet 259', false, 653);
INSERT INTO public.planet VALUES (760, 'Planet name260', 4, 'Climate is pleasant at planet 260', false, 625);
INSERT INTO public.planet VALUES (761, 'Planet name261', 9, 'Climate is pleasant at planet 261', true, 843);
INSERT INTO public.planet VALUES (762, 'Planet name262', 9, 'Climate is pleasant at planet 262', false, 887);
INSERT INTO public.planet VALUES (763, 'Planet name263', 7, 'Climate is pleasant at planet 263', true, 525);
INSERT INTO public.planet VALUES (764, 'Planet name264', 7, 'Climate is pleasant at planet 264', true, 757);
INSERT INTO public.planet VALUES (765, 'Planet name265', 4, 'Climate is pleasant at planet 265', false, 927);
INSERT INTO public.planet VALUES (766, 'Planet name266', 4, 'Climate is pleasant at planet 266', true, 713);
INSERT INTO public.planet VALUES (767, 'Planet name267', 8, 'Climate is pleasant at planet 267', false, 607);
INSERT INTO public.planet VALUES (768, 'Planet name268', 8, 'Climate is pleasant at planet 268', true, 641);
INSERT INTO public.planet VALUES (769, 'Planet name269', 1, 'Climate is pleasant at planet 269', false, 670);
INSERT INTO public.planet VALUES (770, 'Planet name270', 4, 'Climate is pleasant at planet 270', true, 820);
INSERT INTO public.planet VALUES (771, 'Planet name271', 6, 'Climate is pleasant at planet 271', true, 929);
INSERT INTO public.planet VALUES (772, 'Planet name272', 5, 'Climate is pleasant at planet 272', false, 504);
INSERT INTO public.planet VALUES (773, 'Planet name273', 1, 'Climate is pleasant at planet 273', true, 818);
INSERT INTO public.planet VALUES (774, 'Planet name274', 9, 'Climate is pleasant at planet 274', false, 820);
INSERT INTO public.planet VALUES (775, 'Planet name275', 2, 'Climate is pleasant at planet 275', false, 581);
INSERT INTO public.planet VALUES (776, 'Planet name276', 2, 'Climate is pleasant at planet 276', false, 732);
INSERT INTO public.planet VALUES (777, 'Planet name277', 8, 'Climate is pleasant at planet 277', false, 594);
INSERT INTO public.planet VALUES (778, 'Planet name278', 4, 'Climate is pleasant at planet 278', false, 591);
INSERT INTO public.planet VALUES (779, 'Planet name279', 2, 'Climate is pleasant at planet 279', true, 636);
INSERT INTO public.planet VALUES (780, 'Planet name280', 6, 'Climate is pleasant at planet 280', false, 568);
INSERT INTO public.planet VALUES (781, 'Planet name281', 7, 'Climate is pleasant at planet 281', false, 931);
INSERT INTO public.planet VALUES (782, 'Planet name282', 1, 'Climate is pleasant at planet 282', true, 842);
INSERT INTO public.planet VALUES (783, 'Planet name283', 8, 'Climate is pleasant at planet 283', false, 772);
INSERT INTO public.planet VALUES (784, 'Planet name284', 6, 'Climate is pleasant at planet 284', true, 676);
INSERT INTO public.planet VALUES (785, 'Planet name285', 9, 'Climate is pleasant at planet 285', true, 659);
INSERT INTO public.planet VALUES (786, 'Planet name286', 6, 'Climate is pleasant at planet 286', true, 620);
INSERT INTO public.planet VALUES (787, 'Planet name287', 2, 'Climate is pleasant at planet 287', true, 632);
INSERT INTO public.planet VALUES (788, 'Planet name288', 8, 'Climate is pleasant at planet 288', false, 776);
INSERT INTO public.planet VALUES (789, 'Planet name289', 4, 'Climate is pleasant at planet 289', true, 636);
INSERT INTO public.planet VALUES (790, 'Planet name290', 7, 'Climate is pleasant at planet 290', false, 842);
INSERT INTO public.planet VALUES (791, 'Planet name291', 6, 'Climate is pleasant at planet 291', true, 875);
INSERT INTO public.planet VALUES (792, 'Planet name292', 10, 'Climate is pleasant at planet 292', true, 872);
INSERT INTO public.planet VALUES (793, 'Planet name293', 1, 'Climate is pleasant at planet 293', true, 533);
INSERT INTO public.planet VALUES (794, 'Planet name294', 3, 'Climate is pleasant at planet 294', false, 767);
INSERT INTO public.planet VALUES (795, 'Planet name295', 5, 'Climate is pleasant at planet 295', false, 657);
INSERT INTO public.planet VALUES (796, 'Planet name296', 10, 'Climate is pleasant at planet 296', false, 853);
INSERT INTO public.planet VALUES (797, 'Planet name297', 0, 'Climate is pleasant at planet 297', false, 636);
INSERT INTO public.planet VALUES (798, 'Planet name298', 4, 'Climate is pleasant at planet 298', true, 640);
INSERT INTO public.planet VALUES (799, 'Planet name299', 9, 'Climate is pleasant at planet 299', false, 760);
INSERT INTO public.planet VALUES (800, 'Planet name300', 3, 'Climate is pleasant at planet 300', false, 820);
INSERT INTO public.planet VALUES (801, 'Planet name301', 6, 'Climate is pleasant at planet 301', false, 686);
INSERT INTO public.planet VALUES (802, 'Planet name302', 9, 'Climate is pleasant at planet 302', false, 882);
INSERT INTO public.planet VALUES (803, 'Planet name303', 7, 'Climate is pleasant at planet 303', false, 744);
INSERT INTO public.planet VALUES (804, 'Planet name304', 10, 'Climate is pleasant at planet 304', false, 636);
INSERT INTO public.planet VALUES (805, 'Planet name305', 5, 'Climate is pleasant at planet 305', true, 553);
INSERT INTO public.planet VALUES (806, 'Planet name306', 3, 'Climate is pleasant at planet 306', false, 798);
INSERT INTO public.planet VALUES (807, 'Planet name307', 5, 'Climate is pleasant at planet 307', true, 516);
INSERT INTO public.planet VALUES (808, 'Planet name308', 4, 'Climate is pleasant at planet 308', false, 943);
INSERT INTO public.planet VALUES (809, 'Planet name309', 5, 'Climate is pleasant at planet 309', false, 920);
INSERT INTO public.planet VALUES (810, 'Planet name310', 7, 'Climate is pleasant at planet 310', true, 654);
INSERT INTO public.planet VALUES (811, 'Planet name311', 3, 'Climate is pleasant at planet 311', true, 553);
INSERT INTO public.planet VALUES (812, 'Planet name312', 7, 'Climate is pleasant at planet 312', true, 969);
INSERT INTO public.planet VALUES (813, 'Planet name313', 5, 'Climate is pleasant at planet 313', false, 986);
INSERT INTO public.planet VALUES (814, 'Planet name314', 3, 'Climate is pleasant at planet 314', true, 750);
INSERT INTO public.planet VALUES (815, 'Planet name315', 8, 'Climate is pleasant at planet 315', true, 695);
INSERT INTO public.planet VALUES (816, 'Planet name316', 1, 'Climate is pleasant at planet 316', true, 678);
INSERT INTO public.planet VALUES (817, 'Planet name317', 9, 'Climate is pleasant at planet 317', true, 794);
INSERT INTO public.planet VALUES (818, 'Planet name318', 7, 'Climate is pleasant at planet 318', true, 553);
INSERT INTO public.planet VALUES (819, 'Planet name319', 1, 'Climate is pleasant at planet 319', true, 946);
INSERT INTO public.planet VALUES (820, 'Planet name320', 1, 'Climate is pleasant at planet 320', true, 882);
INSERT INTO public.planet VALUES (821, 'Planet name321', 0, 'Climate is pleasant at planet 321', false, 766);
INSERT INTO public.planet VALUES (822, 'Planet name322', 4, 'Climate is pleasant at planet 322', true, 784);
INSERT INTO public.planet VALUES (823, 'Planet name323', 8, 'Climate is pleasant at planet 323', true, 892);
INSERT INTO public.planet VALUES (824, 'Planet name324', 3, 'Climate is pleasant at planet 324', true, 865);
INSERT INTO public.planet VALUES (825, 'Planet name325', 1, 'Climate is pleasant at planet 325', true, 556);
INSERT INTO public.planet VALUES (826, 'Planet name326', 2, 'Climate is pleasant at planet 326', true, 574);
INSERT INTO public.planet VALUES (827, 'Planet name327', 3, 'Climate is pleasant at planet 327', false, 714);
INSERT INTO public.planet VALUES (828, 'Planet name328', 1, 'Climate is pleasant at planet 328', false, 589);
INSERT INTO public.planet VALUES (829, 'Planet name329', 5, 'Climate is pleasant at planet 329', true, 690);
INSERT INTO public.planet VALUES (830, 'Planet name330', 10, 'Climate is pleasant at planet 330', false, 982);
INSERT INTO public.planet VALUES (831, 'Planet name331', 9, 'Climate is pleasant at planet 331', true, 972);
INSERT INTO public.planet VALUES (832, 'Planet name332', 4, 'Climate is pleasant at planet 332', true, 885);
INSERT INTO public.planet VALUES (833, 'Planet name333', 5, 'Climate is pleasant at planet 333', false, 848);
INSERT INTO public.planet VALUES (834, 'Planet name334', 4, 'Climate is pleasant at planet 334', true, 934);
INSERT INTO public.planet VALUES (835, 'Planet name335', 0, 'Climate is pleasant at planet 335', false, 904);
INSERT INTO public.planet VALUES (836, 'Planet name336', 3, 'Climate is pleasant at planet 336', true, 885);
INSERT INTO public.planet VALUES (837, 'Planet name337', 4, 'Climate is pleasant at planet 337', false, 836);
INSERT INTO public.planet VALUES (838, 'Planet name338', 0, 'Climate is pleasant at planet 338', true, 789);
INSERT INTO public.planet VALUES (839, 'Planet name339', 5, 'Climate is pleasant at planet 339', false, 879);
INSERT INTO public.planet VALUES (840, 'Planet name340', 4, 'Climate is pleasant at planet 340', true, 805);
INSERT INTO public.planet VALUES (841, 'Planet name341', 5, 'Climate is pleasant at planet 341', false, 582);
INSERT INTO public.planet VALUES (842, 'Planet name342', 10, 'Climate is pleasant at planet 342', false, 773);
INSERT INTO public.planet VALUES (843, 'Planet name343', 0, 'Climate is pleasant at planet 343', false, 524);
INSERT INTO public.planet VALUES (844, 'Planet name344', 5, 'Climate is pleasant at planet 344', true, 723);
INSERT INTO public.planet VALUES (845, 'Planet name345', 4, 'Climate is pleasant at planet 345', true, 711);
INSERT INTO public.planet VALUES (846, 'Planet name346', 7, 'Climate is pleasant at planet 346', false, 762);
INSERT INTO public.planet VALUES (847, 'Planet name347', 3, 'Climate is pleasant at planet 347', false, 999);
INSERT INTO public.planet VALUES (848, 'Planet name348', 2, 'Climate is pleasant at planet 348', false, 942);
INSERT INTO public.planet VALUES (849, 'Planet name349', 1, 'Climate is pleasant at planet 349', false, 660);
INSERT INTO public.planet VALUES (850, 'Planet name350', 8, 'Climate is pleasant at planet 350', true, 788);
INSERT INTO public.planet VALUES (851, 'Planet name351', 1, 'Climate is pleasant at planet 351', true, 785);
INSERT INTO public.planet VALUES (852, 'Planet name352', 3, 'Climate is pleasant at planet 352', false, 983);
INSERT INTO public.planet VALUES (853, 'Planet name353', 1, 'Climate is pleasant at planet 353', true, 922);
INSERT INTO public.planet VALUES (854, 'Planet name354', 7, 'Climate is pleasant at planet 354', false, 567);
INSERT INTO public.planet VALUES (855, 'Planet name355', 2, 'Climate is pleasant at planet 355', true, 521);
INSERT INTO public.planet VALUES (856, 'Planet name356', 3, 'Climate is pleasant at planet 356', true, 792);
INSERT INTO public.planet VALUES (857, 'Planet name357', 2, 'Climate is pleasant at planet 357', false, 943);
INSERT INTO public.planet VALUES (858, 'Planet name358', 8, 'Climate is pleasant at planet 358', true, 612);
INSERT INTO public.planet VALUES (859, 'Planet name359', 3, 'Climate is pleasant at planet 359', false, 686);
INSERT INTO public.planet VALUES (860, 'Planet name360', 2, 'Climate is pleasant at planet 360', true, 877);
INSERT INTO public.planet VALUES (861, 'Planet name361', 9, 'Climate is pleasant at planet 361', false, 774);
INSERT INTO public.planet VALUES (862, 'Planet name362', 4, 'Climate is pleasant at planet 362', false, 644);
INSERT INTO public.planet VALUES (863, 'Planet name363', 10, 'Climate is pleasant at planet 363', false, 607);
INSERT INTO public.planet VALUES (864, 'Planet name364', 5, 'Climate is pleasant at planet 364', true, 610);
INSERT INTO public.planet VALUES (865, 'Planet name365', 4, 'Climate is pleasant at planet 365', true, 697);
INSERT INTO public.planet VALUES (866, 'Planet name366', 4, 'Climate is pleasant at planet 366', false, 613);
INSERT INTO public.planet VALUES (867, 'Planet name367', 10, 'Climate is pleasant at planet 367', true, 513);
INSERT INTO public.planet VALUES (868, 'Planet name368', 1, 'Climate is pleasant at planet 368', false, 886);
INSERT INTO public.planet VALUES (869, 'Planet name369', 0, 'Climate is pleasant at planet 369', false, 739);
INSERT INTO public.planet VALUES (870, 'Planet name370', 3, 'Climate is pleasant at planet 370', false, 960);
INSERT INTO public.planet VALUES (871, 'Planet name371', 2, 'Climate is pleasant at planet 371', false, 996);
INSERT INTO public.planet VALUES (872, 'Planet name372', 1, 'Climate is pleasant at planet 372', true, 722);
INSERT INTO public.planet VALUES (873, 'Planet name373', 7, 'Climate is pleasant at planet 373', true, 640);
INSERT INTO public.planet VALUES (874, 'Planet name374', 6, 'Climate is pleasant at planet 374', true, 614);
INSERT INTO public.planet VALUES (875, 'Planet name375', 3, 'Climate is pleasant at planet 375', false, 781);
INSERT INTO public.planet VALUES (876, 'Planet name376', 3, 'Climate is pleasant at planet 376', true, 761);
INSERT INTO public.planet VALUES (877, 'Planet name377', 5, 'Climate is pleasant at planet 377', false, 575);
INSERT INTO public.planet VALUES (878, 'Planet name378', 8, 'Climate is pleasant at planet 378', true, 566);
INSERT INTO public.planet VALUES (879, 'Planet name379', 2, 'Climate is pleasant at planet 379', false, 903);
INSERT INTO public.planet VALUES (880, 'Planet name380', 1, 'Climate is pleasant at planet 380', true, 677);
INSERT INTO public.planet VALUES (881, 'Planet name381', 5, 'Climate is pleasant at planet 381', false, 570);
INSERT INTO public.planet VALUES (882, 'Planet name382', 8, 'Climate is pleasant at planet 382', true, 879);
INSERT INTO public.planet VALUES (883, 'Planet name383', 4, 'Climate is pleasant at planet 383', true, 777);
INSERT INTO public.planet VALUES (884, 'Planet name384', 9, 'Climate is pleasant at planet 384', false, 817);
INSERT INTO public.planet VALUES (885, 'Planet name385', 2, 'Climate is pleasant at planet 385', true, 962);
INSERT INTO public.planet VALUES (886, 'Planet name386', 7, 'Climate is pleasant at planet 386', false, 662);
INSERT INTO public.planet VALUES (887, 'Planet name387', 3, 'Climate is pleasant at planet 387', true, 693);
INSERT INTO public.planet VALUES (888, 'Planet name388', 9, 'Climate is pleasant at planet 388', false, 870);
INSERT INTO public.planet VALUES (889, 'Planet name389', 8, 'Climate is pleasant at planet 389', true, 557);
INSERT INTO public.planet VALUES (890, 'Planet name390', 1, 'Climate is pleasant at planet 390', true, 508);
INSERT INTO public.planet VALUES (891, 'Planet name391', 6, 'Climate is pleasant at planet 391', true, 651);
INSERT INTO public.planet VALUES (892, 'Planet name392', 7, 'Climate is pleasant at planet 392', false, 573);
INSERT INTO public.planet VALUES (893, 'Planet name393', 3, 'Climate is pleasant at planet 393', false, 987);
INSERT INTO public.planet VALUES (894, 'Planet name394', 2, 'Climate is pleasant at planet 394', true, 642);
INSERT INTO public.planet VALUES (895, 'Planet name395', 7, 'Climate is pleasant at planet 395', false, 927);
INSERT INTO public.planet VALUES (896, 'Planet name396', 6, 'Climate is pleasant at planet 396', false, 528);
INSERT INTO public.planet VALUES (897, 'Planet name397', 8, 'Climate is pleasant at planet 397', false, 668);
INSERT INTO public.planet VALUES (898, 'Planet name398', 5, 'Climate is pleasant at planet 398', true, 692);
INSERT INTO public.planet VALUES (899, 'Planet name399', 5, 'Climate is pleasant at planet 399', true, 975);
INSERT INTO public.planet VALUES (900, 'Planet name400', 10, 'Climate is pleasant at planet 400', false, 727);
INSERT INTO public.planet VALUES (901, 'Planet name401', 6, 'Climate is pleasant at planet 401', false, 969);
INSERT INTO public.planet VALUES (902, 'Planet name402', 9, 'Climate is pleasant at planet 402', true, 521);
INSERT INTO public.planet VALUES (903, 'Planet name403', 3, 'Climate is pleasant at planet 403', true, 827);
INSERT INTO public.planet VALUES (904, 'Planet name404', 8, 'Climate is pleasant at planet 404', true, 657);
INSERT INTO public.planet VALUES (905, 'Planet name405', 0, 'Climate is pleasant at planet 405', false, 747);
INSERT INTO public.planet VALUES (906, 'Planet name406', 10, 'Climate is pleasant at planet 406', false, 539);
INSERT INTO public.planet VALUES (907, 'Planet name407', 10, 'Climate is pleasant at planet 407', false, 841);
INSERT INTO public.planet VALUES (908, 'Planet name408', 8, 'Climate is pleasant at planet 408', true, 506);
INSERT INTO public.planet VALUES (909, 'Planet name409', 1, 'Climate is pleasant at planet 409', true, 696);
INSERT INTO public.planet VALUES (910, 'Planet name410', 9, 'Climate is pleasant at planet 410', true, 913);
INSERT INTO public.planet VALUES (911, 'Planet name411', 0, 'Climate is pleasant at planet 411', false, 632);
INSERT INTO public.planet VALUES (912, 'Planet name412', 5, 'Climate is pleasant at planet 412', false, 578);
INSERT INTO public.planet VALUES (913, 'Planet name413', 3, 'Climate is pleasant at planet 413', false, 863);
INSERT INTO public.planet VALUES (914, 'Planet name414', 9, 'Climate is pleasant at planet 414', true, 972);
INSERT INTO public.planet VALUES (915, 'Planet name415', 4, 'Climate is pleasant at planet 415', false, 864);
INSERT INTO public.planet VALUES (916, 'Planet name416', 3, 'Climate is pleasant at planet 416', true, 546);
INSERT INTO public.planet VALUES (917, 'Planet name417', 1, 'Climate is pleasant at planet 417', true, 881);
INSERT INTO public.planet VALUES (918, 'Planet name418', 6, 'Climate is pleasant at planet 418', false, 619);
INSERT INTO public.planet VALUES (919, 'Planet name419', 2, 'Climate is pleasant at planet 419', false, 687);
INSERT INTO public.planet VALUES (920, 'Planet name420', 6, 'Climate is pleasant at planet 420', true, 549);
INSERT INTO public.planet VALUES (921, 'Planet name421', 10, 'Climate is pleasant at planet 421', true, 710);
INSERT INTO public.planet VALUES (922, 'Planet name422', 6, 'Climate is pleasant at planet 422', true, 926);
INSERT INTO public.planet VALUES (923, 'Planet name423', 3, 'Climate is pleasant at planet 423', true, 949);
INSERT INTO public.planet VALUES (924, 'Planet name424', 2, 'Climate is pleasant at planet 424', true, 774);
INSERT INTO public.planet VALUES (925, 'Planet name425', 2, 'Climate is pleasant at planet 425', false, 814);
INSERT INTO public.planet VALUES (926, 'Planet name426', 4, 'Climate is pleasant at planet 426', false, 598);
INSERT INTO public.planet VALUES (927, 'Planet name427', 1, 'Climate is pleasant at planet 427', true, 805);
INSERT INTO public.planet VALUES (928, 'Planet name428', 6, 'Climate is pleasant at planet 428', true, 763);
INSERT INTO public.planet VALUES (929, 'Planet name429', 6, 'Climate is pleasant at planet 429', false, 890);
INSERT INTO public.planet VALUES (930, 'Planet name430', 5, 'Climate is pleasant at planet 430', true, 821);
INSERT INTO public.planet VALUES (931, 'Planet name431', 7, 'Climate is pleasant at planet 431', false, 849);
INSERT INTO public.planet VALUES (932, 'Planet name432', 2, 'Climate is pleasant at planet 432', true, 573);
INSERT INTO public.planet VALUES (933, 'Planet name433', 4, 'Climate is pleasant at planet 433', true, 545);
INSERT INTO public.planet VALUES (934, 'Planet name434', 10, 'Climate is pleasant at planet 434', true, 990);
INSERT INTO public.planet VALUES (935, 'Planet name435', 4, 'Climate is pleasant at planet 435', false, 683);
INSERT INTO public.planet VALUES (936, 'Planet name436', 6, 'Climate is pleasant at planet 436', true, 586);
INSERT INTO public.planet VALUES (937, 'Planet name437', 5, 'Climate is pleasant at planet 437', true, 804);
INSERT INTO public.planet VALUES (938, 'Planet name438', 3, 'Climate is pleasant at planet 438', true, 985);
INSERT INTO public.planet VALUES (939, 'Planet name439', 1, 'Climate is pleasant at planet 439', false, 847);
INSERT INTO public.planet VALUES (940, 'Planet name440', 9, 'Climate is pleasant at planet 440', true, 542);
INSERT INTO public.planet VALUES (941, 'Planet name441', 4, 'Climate is pleasant at planet 441', false, 656);
INSERT INTO public.planet VALUES (942, 'Planet name442', 3, 'Climate is pleasant at planet 442', false, 515);
INSERT INTO public.planet VALUES (943, 'Planet name443', 4, 'Climate is pleasant at planet 443', true, 706);
INSERT INTO public.planet VALUES (944, 'Planet name444', 9, 'Climate is pleasant at planet 444', false, 889);
INSERT INTO public.planet VALUES (945, 'Planet name445', 10, 'Climate is pleasant at planet 445', true, 605);
INSERT INTO public.planet VALUES (946, 'Planet name446', 8, 'Climate is pleasant at planet 446', false, 932);
INSERT INTO public.planet VALUES (947, 'Planet name447', 7, 'Climate is pleasant at planet 447', true, 919);
INSERT INTO public.planet VALUES (948, 'Planet name448', 6, 'Climate is pleasant at planet 448', false, 712);
INSERT INTO public.planet VALUES (949, 'Planet name449', 1, 'Climate is pleasant at planet 449', false, 676);
INSERT INTO public.planet VALUES (950, 'Planet name450', 10, 'Climate is pleasant at planet 450', false, 946);
INSERT INTO public.planet VALUES (951, 'Planet name451', 0, 'Climate is pleasant at planet 451', false, 531);
INSERT INTO public.planet VALUES (952, 'Planet name452', 6, 'Climate is pleasant at planet 452', true, 661);
INSERT INTO public.planet VALUES (953, 'Planet name453', 1, 'Climate is pleasant at planet 453', true, 556);
INSERT INTO public.planet VALUES (954, 'Planet name454', 7, 'Climate is pleasant at planet 454', true, 554);
INSERT INTO public.planet VALUES (955, 'Planet name455', 8, 'Climate is pleasant at planet 455', false, 886);
INSERT INTO public.planet VALUES (956, 'Planet name456', 1, 'Climate is pleasant at planet 456', true, 802);
INSERT INTO public.planet VALUES (957, 'Planet name457', 4, 'Climate is pleasant at planet 457', true, 969);
INSERT INTO public.planet VALUES (958, 'Planet name458', 2, 'Climate is pleasant at planet 458', false, 973);
INSERT INTO public.planet VALUES (959, 'Planet name459', 8, 'Climate is pleasant at planet 459', false, 778);
INSERT INTO public.planet VALUES (960, 'Planet name460', 1, 'Climate is pleasant at planet 460', true, 772);
INSERT INTO public.planet VALUES (961, 'Planet name461', 4, 'Climate is pleasant at planet 461', false, 955);
INSERT INTO public.planet VALUES (962, 'Planet name462', 7, 'Climate is pleasant at planet 462', true, 976);
INSERT INTO public.planet VALUES (963, 'Planet name463', 9, 'Climate is pleasant at planet 463', false, 923);
INSERT INTO public.planet VALUES (964, 'Planet name464', 5, 'Climate is pleasant at planet 464', false, 899);
INSERT INTO public.planet VALUES (965, 'Planet name465', 8, 'Climate is pleasant at planet 465', true, 539);
INSERT INTO public.planet VALUES (966, 'Planet name466', 8, 'Climate is pleasant at planet 466', true, 633);
INSERT INTO public.planet VALUES (967, 'Planet name467', 6, 'Climate is pleasant at planet 467', false, 505);
INSERT INTO public.planet VALUES (968, 'Planet name468', 4, 'Climate is pleasant at planet 468', true, 798);
INSERT INTO public.planet VALUES (969, 'Planet name469', 5, 'Climate is pleasant at planet 469', true, 781);
INSERT INTO public.planet VALUES (970, 'Planet name470', 9, 'Climate is pleasant at planet 470', false, 984);
INSERT INTO public.planet VALUES (971, 'Planet name471', 0, 'Climate is pleasant at planet 471', false, 804);
INSERT INTO public.planet VALUES (972, 'Planet name472', 6, 'Climate is pleasant at planet 472', false, 846);
INSERT INTO public.planet VALUES (973, 'Planet name473', 5, 'Climate is pleasant at planet 473', true, 562);
INSERT INTO public.planet VALUES (974, 'Planet name474', 7, 'Climate is pleasant at planet 474', false, 545);
INSERT INTO public.planet VALUES (975, 'Planet name475', 7, 'Climate is pleasant at planet 475', true, 964);
INSERT INTO public.planet VALUES (976, 'Planet name476', 1, 'Climate is pleasant at planet 476', false, 751);
INSERT INTO public.planet VALUES (977, 'Planet name477', 6, 'Climate is pleasant at planet 477', false, 621);
INSERT INTO public.planet VALUES (978, 'Planet name478', 7, 'Climate is pleasant at planet 478', false, 543);
INSERT INTO public.planet VALUES (979, 'Planet name479', 1, 'Climate is pleasant at planet 479', false, 949);
INSERT INTO public.planet VALUES (980, 'Planet name480', 8, 'Climate is pleasant at planet 480', false, 690);
INSERT INTO public.planet VALUES (981, 'Planet name481', 5, 'Climate is pleasant at planet 481', true, 654);
INSERT INTO public.planet VALUES (982, 'Planet name482', 7, 'Climate is pleasant at planet 482', true, 537);
INSERT INTO public.planet VALUES (983, 'Planet name483', 8, 'Climate is pleasant at planet 483', true, 832);
INSERT INTO public.planet VALUES (984, 'Planet name484', 3, 'Climate is pleasant at planet 484', true, 802);
INSERT INTO public.planet VALUES (985, 'Planet name485', 5, 'Climate is pleasant at planet 485', false, 520);
INSERT INTO public.planet VALUES (986, 'Planet name486', 6, 'Climate is pleasant at planet 486', false, 590);
INSERT INTO public.planet VALUES (987, 'Planet name487', 6, 'Climate is pleasant at planet 487', true, 690);
INSERT INTO public.planet VALUES (988, 'Planet name488', 7, 'Climate is pleasant at planet 488', true, 614);
INSERT INTO public.planet VALUES (989, 'Planet name489', 9, 'Climate is pleasant at planet 489', true, 864);
INSERT INTO public.planet VALUES (990, 'Planet name490', 0, 'Climate is pleasant at planet 490', true, 775);
INSERT INTO public.planet VALUES (991, 'Planet name491', 4, 'Climate is pleasant at planet 491', true, 730);
INSERT INTO public.planet VALUES (992, 'Planet name492', 5, 'Climate is pleasant at planet 492', false, 727);
INSERT INTO public.planet VALUES (993, 'Planet name493', 4, 'Climate is pleasant at planet 493', true, 913);
INSERT INTO public.planet VALUES (994, 'Planet name494', 9, 'Climate is pleasant at planet 494', true, 850);
INSERT INTO public.planet VALUES (995, 'Planet name495', 1, 'Climate is pleasant at planet 495', true, 734);
INSERT INTO public.planet VALUES (996, 'Planet name496', 7, 'Climate is pleasant at planet 496', true, 596);
INSERT INTO public.planet VALUES (997, 'Planet name497', 3, 'Climate is pleasant at planet 497', true, 637);
INSERT INTO public.planet VALUES (998, 'Planet name498', 6, 'Climate is pleasant at planet 498', false, 811);
INSERT INTO public.planet VALUES (999, 'Planet name499', 9, 'Climate is pleasant at planet 499', false, 927);
INSERT INTO public.planet VALUES (1000, 'Planet name500', 6, 'Climate is pleasant at planet 500', true, 781);


--
-- Data for Name: sattelite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sattelite VALUES (1, false, 4646, 'moon');
INSERT INTO public.sattelite VALUES (2, true, 74987, 'gargin');
INSERT INTO public.sattelite VALUES (3, true, 65498, 'PSLV-7871');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (501, 'Star 1', 5, false, 4);
INSERT INTO public.star VALUES (502, 'Star 2', 7, true, 50);
INSERT INTO public.star VALUES (503, 'Star 3', 19, true, 35);
INSERT INTO public.star VALUES (504, 'Star 4', 0, true, 38);
INSERT INTO public.star VALUES (505, 'Star 5', 6, true, 48);
INSERT INTO public.star VALUES (506, 'Star 6', 17, false, 101);
INSERT INTO public.star VALUES (507, 'Star 7', 1, false, 24);
INSERT INTO public.star VALUES (508, 'Star 8', 5, false, 81);
INSERT INTO public.star VALUES (509, 'Star 9', 4, true, 34);
INSERT INTO public.star VALUES (510, 'Star 10', 0, true, 101);
INSERT INTO public.star VALUES (511, 'Star 11', 7, true, 44);
INSERT INTO public.star VALUES (512, 'Star 12', 11, false, 76);
INSERT INTO public.star VALUES (513, 'Star 13', 0, false, 39);
INSERT INTO public.star VALUES (514, 'Star 14', 17, true, 14);
INSERT INTO public.star VALUES (515, 'Star 15', 5, true, 34);
INSERT INTO public.star VALUES (516, 'Star 16', 14, true, 94);
INSERT INTO public.star VALUES (517, 'Star 17', 8, true, 80);
INSERT INTO public.star VALUES (518, 'Star 18', 6, false, 10);
INSERT INTO public.star VALUES (519, 'Star 19', 7, false, 14);
INSERT INTO public.star VALUES (520, 'Star 20', 19, false, 85);
INSERT INTO public.star VALUES (521, 'Star 21', 19, true, 59);
INSERT INTO public.star VALUES (522, 'Star 22', 6, false, 43);
INSERT INTO public.star VALUES (523, 'Star 23', 17, false, 72);
INSERT INTO public.star VALUES (524, 'Star 24', 16, false, 40);
INSERT INTO public.star VALUES (525, 'Star 25', 18, false, 41);
INSERT INTO public.star VALUES (526, 'Star 26', 19, false, 30);
INSERT INTO public.star VALUES (527, 'Star 27', 0, false, 34);
INSERT INTO public.star VALUES (528, 'Star 28', 9, true, 71);
INSERT INTO public.star VALUES (529, 'Star 29', 16, false, 46);
INSERT INTO public.star VALUES (530, 'Star 30', 13, true, 2);
INSERT INTO public.star VALUES (531, 'Star 31', 19, true, 16);
INSERT INTO public.star VALUES (532, 'Star 32', 2, true, 68);
INSERT INTO public.star VALUES (533, 'Star 33', 14, true, 30);
INSERT INTO public.star VALUES (534, 'Star 34', 11, false, 42);
INSERT INTO public.star VALUES (535, 'Star 35', 5, false, 70);
INSERT INTO public.star VALUES (536, 'Star 36', 1, false, 102);
INSERT INTO public.star VALUES (537, 'Star 37', 2, false, 79);
INSERT INTO public.star VALUES (538, 'Star 38', 5, false, 89);
INSERT INTO public.star VALUES (539, 'Star 39', 5, true, 31);
INSERT INTO public.star VALUES (540, 'Star 40', 14, true, 95);
INSERT INTO public.star VALUES (541, 'Star 41', 8, false, 106);
INSERT INTO public.star VALUES (542, 'Star 42', 4, true, 18);
INSERT INTO public.star VALUES (543, 'Star 43', 12, true, 21);
INSERT INTO public.star VALUES (544, 'Star 44', 13, false, 64);
INSERT INTO public.star VALUES (545, 'Star 45', 0, false, 39);
INSERT INTO public.star VALUES (546, 'Star 46', 2, false, 43);
INSERT INTO public.star VALUES (547, 'Star 47', 11, true, 33);
INSERT INTO public.star VALUES (548, 'Star 48', 18, false, 72);
INSERT INTO public.star VALUES (549, 'Star 49', 16, true, 87);
INSERT INTO public.star VALUES (550, 'Star 50', 0, false, 33);
INSERT INTO public.star VALUES (551, 'Star 51', 8, false, 15);
INSERT INTO public.star VALUES (552, 'Star 52', 5, false, 57);
INSERT INTO public.star VALUES (553, 'Star 53', 15, false, 72);
INSERT INTO public.star VALUES (554, 'Star 54', 2, true, 97);
INSERT INTO public.star VALUES (555, 'Star 55', 5, true, 16);
INSERT INTO public.star VALUES (556, 'Star 56', 2, false, 25);
INSERT INTO public.star VALUES (557, 'Star 57', 9, false, 75);
INSERT INTO public.star VALUES (558, 'Star 58', 3, false, 47);
INSERT INTO public.star VALUES (559, 'Star 59', 17, false, 22);
INSERT INTO public.star VALUES (560, 'Star 60', 2, false, 59);
INSERT INTO public.star VALUES (561, 'Star 61', 6, true, 30);
INSERT INTO public.star VALUES (562, 'Star 62', 11, true, 55);
INSERT INTO public.star VALUES (563, 'Star 63', 16, false, 23);
INSERT INTO public.star VALUES (564, 'Star 64', 14, false, 101);
INSERT INTO public.star VALUES (565, 'Star 65', 15, true, 12);
INSERT INTO public.star VALUES (566, 'Star 66', 13, false, 53);
INSERT INTO public.star VALUES (567, 'Star 67', 4, true, 23);
INSERT INTO public.star VALUES (568, 'Star 68', 9, false, 55);
INSERT INTO public.star VALUES (569, 'Star 69', 12, false, 17);
INSERT INTO public.star VALUES (570, 'Star 70', 10, false, 60);
INSERT INTO public.star VALUES (571, 'Star 71', 14, false, 20);
INSERT INTO public.star VALUES (572, 'Star 72', 16, true, 4);
INSERT INTO public.star VALUES (573, 'Star 73', 2, true, 92);
INSERT INTO public.star VALUES (574, 'Star 74', 10, false, 74);
INSERT INTO public.star VALUES (575, 'Star 75', 20, true, 33);
INSERT INTO public.star VALUES (576, 'Star 76', 0, false, 64);
INSERT INTO public.star VALUES (577, 'Star 77', 7, false, 98);
INSERT INTO public.star VALUES (578, 'Star 78', 7, false, 47);
INSERT INTO public.star VALUES (579, 'Star 79', 9, false, 44);
INSERT INTO public.star VALUES (580, 'Star 80', 7, true, 105);
INSERT INTO public.star VALUES (581, 'Star 81', 12, false, 43);
INSERT INTO public.star VALUES (582, 'Star 82', 1, false, 14);
INSERT INTO public.star VALUES (583, 'Star 83', 14, false, 99);
INSERT INTO public.star VALUES (584, 'Star 84', 6, true, 13);
INSERT INTO public.star VALUES (585, 'Star 85', 3, false, 19);
INSERT INTO public.star VALUES (586, 'Star 86', 15, false, 61);
INSERT INTO public.star VALUES (587, 'Star 87', 13, true, 54);
INSERT INTO public.star VALUES (588, 'Star 88', 5, false, 100);
INSERT INTO public.star VALUES (589, 'Star 89', 17, true, 34);
INSERT INTO public.star VALUES (590, 'Star 90', 1, true, 74);
INSERT INTO public.star VALUES (591, 'Star 91', 15, true, 48);
INSERT INTO public.star VALUES (592, 'Star 92', 18, true, 78);
INSERT INTO public.star VALUES (593, 'Star 93', 1, false, 84);
INSERT INTO public.star VALUES (594, 'Star 94', 15, true, 38);
INSERT INTO public.star VALUES (595, 'Star 95', 3, true, 87);
INSERT INTO public.star VALUES (596, 'Star 96', 20, false, 38);
INSERT INTO public.star VALUES (597, 'Star 97', 20, false, 103);
INSERT INTO public.star VALUES (598, 'Star 98', 11, false, 73);
INSERT INTO public.star VALUES (599, 'Star 99', 1, false, 25);
INSERT INTO public.star VALUES (600, 'Star 100', 10, true, 49);
INSERT INTO public.star VALUES (601, 'Star 101', 19, false, 35);
INSERT INTO public.star VALUES (602, 'Star 102', 4, true, 33);
INSERT INTO public.star VALUES (603, 'Star 103', 18, true, 29);
INSERT INTO public.star VALUES (604, 'Star 104', 5, false, 69);
INSERT INTO public.star VALUES (605, 'Star 105', 11, true, 53);
INSERT INTO public.star VALUES (606, 'Star 106', 6, true, 40);
INSERT INTO public.star VALUES (607, 'Star 107', 4, true, 99);
INSERT INTO public.star VALUES (608, 'Star 108', 18, false, 94);
INSERT INTO public.star VALUES (609, 'Star 109', 15, true, 9);
INSERT INTO public.star VALUES (610, 'Star 110', 16, false, 30);
INSERT INTO public.star VALUES (611, 'Star 111', 2, false, 82);
INSERT INTO public.star VALUES (612, 'Star 112', 0, false, 86);
INSERT INTO public.star VALUES (613, 'Star 113', 18, true, 40);
INSERT INTO public.star VALUES (614, 'Star 114', 0, true, 101);
INSERT INTO public.star VALUES (615, 'Star 115', 10, false, 99);
INSERT INTO public.star VALUES (616, 'Star 116', 14, false, 42);
INSERT INTO public.star VALUES (617, 'Star 117', 2, false, 47);
INSERT INTO public.star VALUES (618, 'Star 118', 18, true, 59);
INSERT INTO public.star VALUES (619, 'Star 119', 19, true, 62);
INSERT INTO public.star VALUES (620, 'Star 120', 11, false, 34);
INSERT INTO public.star VALUES (621, 'Star 121', 20, false, 79);
INSERT INTO public.star VALUES (622, 'Star 122', 17, false, 88);
INSERT INTO public.star VALUES (623, 'Star 123', 11, false, 94);
INSERT INTO public.star VALUES (624, 'Star 124', 7, true, 24);
INSERT INTO public.star VALUES (625, 'Star 125', 17, false, 29);
INSERT INTO public.star VALUES (626, 'Star 126', 2, true, 79);
INSERT INTO public.star VALUES (627, 'Star 127', 15, false, 6);
INSERT INTO public.star VALUES (628, 'Star 128', 11, true, 84);
INSERT INTO public.star VALUES (629, 'Star 129', 2, false, 97);
INSERT INTO public.star VALUES (630, 'Star 130', 9, false, 37);
INSERT INTO public.star VALUES (631, 'Star 131', 15, true, 91);
INSERT INTO public.star VALUES (632, 'Star 132', 20, true, 65);
INSERT INTO public.star VALUES (633, 'Star 133', 15, false, 55);
INSERT INTO public.star VALUES (634, 'Star 134', 13, true, 58);
INSERT INTO public.star VALUES (635, 'Star 135', 4, true, 45);
INSERT INTO public.star VALUES (636, 'Star 136', 3, false, 95);
INSERT INTO public.star VALUES (637, 'Star 137', 20, false, 94);
INSERT INTO public.star VALUES (638, 'Star 138', 2, true, 49);
INSERT INTO public.star VALUES (639, 'Star 139', 11, false, 64);
INSERT INTO public.star VALUES (640, 'Star 140', 15, false, 21);
INSERT INTO public.star VALUES (641, 'Star 141', 5, false, 68);
INSERT INTO public.star VALUES (642, 'Star 142', 10, false, 29);
INSERT INTO public.star VALUES (643, 'Star 143', 12, false, 57);
INSERT INTO public.star VALUES (644, 'Star 144', 3, true, 83);
INSERT INTO public.star VALUES (645, 'Star 145', 3, false, 8);
INSERT INTO public.star VALUES (646, 'Star 146', 1, true, 32);
INSERT INTO public.star VALUES (647, 'Star 147', 11, true, 30);
INSERT INTO public.star VALUES (648, 'Star 148', 3, false, 97);
INSERT INTO public.star VALUES (649, 'Star 149', 1, false, 5);
INSERT INTO public.star VALUES (650, 'Star 150', 2, true, 57);
INSERT INTO public.star VALUES (651, 'Star 151', 16, true, 82);
INSERT INTO public.star VALUES (652, 'Star 152', 6, true, 55);
INSERT INTO public.star VALUES (653, 'Star 153', 3, true, 38);
INSERT INTO public.star VALUES (654, 'Star 154', 1, false, 28);
INSERT INTO public.star VALUES (655, 'Star 155', 13, false, 19);
INSERT INTO public.star VALUES (656, 'Star 156', 11, false, 13);
INSERT INTO public.star VALUES (657, 'Star 157', 14, false, 94);
INSERT INTO public.star VALUES (658, 'Star 158', 14, false, 56);
INSERT INTO public.star VALUES (659, 'Star 159', 15, true, 12);
INSERT INTO public.star VALUES (660, 'Star 160', 15, false, 92);
INSERT INTO public.star VALUES (661, 'Star 161', 1, true, 69);
INSERT INTO public.star VALUES (662, 'Star 162', 11, false, 43);
INSERT INTO public.star VALUES (663, 'Star 163', 8, true, 2);
INSERT INTO public.star VALUES (664, 'Star 164', 10, false, 105);
INSERT INTO public.star VALUES (665, 'Star 165', 1, false, 40);
INSERT INTO public.star VALUES (666, 'Star 166', 2, false, 67);
INSERT INTO public.star VALUES (667, 'Star 167', 4, true, 39);
INSERT INTO public.star VALUES (668, 'Star 168', 8, false, 66);
INSERT INTO public.star VALUES (669, 'Star 169', 6, true, 65);
INSERT INTO public.star VALUES (670, 'Star 170', 3, false, 87);
INSERT INTO public.star VALUES (671, 'Star 171', 8, true, 76);
INSERT INTO public.star VALUES (672, 'Star 172', 11, false, 17);
INSERT INTO public.star VALUES (673, 'Star 173', 7, false, 72);
INSERT INTO public.star VALUES (674, 'Star 174', 19, true, 44);
INSERT INTO public.star VALUES (675, 'Star 175', 6, false, 16);
INSERT INTO public.star VALUES (676, 'Star 176', 13, true, 54);
INSERT INTO public.star VALUES (677, 'Star 177', 18, true, 15);
INSERT INTO public.star VALUES (678, 'Star 178', 10, false, 45);
INSERT INTO public.star VALUES (679, 'Star 179', 12, false, 85);
INSERT INTO public.star VALUES (680, 'Star 180', 2, false, 51);
INSERT INTO public.star VALUES (681, 'Star 181', 9, false, 98);
INSERT INTO public.star VALUES (682, 'Star 182', 12, false, 64);
INSERT INTO public.star VALUES (683, 'Star 183', 2, true, 66);
INSERT INTO public.star VALUES (684, 'Star 184', 3, false, 87);
INSERT INTO public.star VALUES (685, 'Star 185', 16, false, 38);
INSERT INTO public.star VALUES (686, 'Star 186', 17, false, 74);
INSERT INTO public.star VALUES (687, 'Star 187', 18, false, 9);
INSERT INTO public.star VALUES (688, 'Star 188', 17, true, 2);
INSERT INTO public.star VALUES (689, 'Star 189', 15, false, 94);
INSERT INTO public.star VALUES (690, 'Star 190', 4, true, 78);
INSERT INTO public.star VALUES (691, 'Star 191', 1, false, 48);
INSERT INTO public.star VALUES (692, 'Star 192', 10, false, 24);
INSERT INTO public.star VALUES (693, 'Star 193', 12, true, 44);
INSERT INTO public.star VALUES (694, 'Star 194', 11, true, 50);
INSERT INTO public.star VALUES (695, 'Star 195', 18, false, 83);
INSERT INTO public.star VALUES (696, 'Star 196', 1, true, 93);
INSERT INTO public.star VALUES (697, 'Star 197', 17, false, 5);
INSERT INTO public.star VALUES (698, 'Star 198', 17, true, 101);
INSERT INTO public.star VALUES (699, 'Star 199', 18, false, 89);
INSERT INTO public.star VALUES (700, 'Star 200', 19, false, 62);
INSERT INTO public.star VALUES (701, 'Star 201', 4, true, 10);
INSERT INTO public.star VALUES (702, 'Star 202', 20, true, 2);
INSERT INTO public.star VALUES (703, 'Star 203', 1, false, 97);
INSERT INTO public.star VALUES (704, 'Star 204', 7, true, 79);
INSERT INTO public.star VALUES (705, 'Star 205', 0, true, 82);
INSERT INTO public.star VALUES (706, 'Star 206', 9, true, 103);
INSERT INTO public.star VALUES (707, 'Star 207', 14, true, 79);
INSERT INTO public.star VALUES (708, 'Star 208', 13, false, 92);
INSERT INTO public.star VALUES (709, 'Star 209', 17, false, 84);
INSERT INTO public.star VALUES (710, 'Star 210', 18, false, 93);
INSERT INTO public.star VALUES (711, 'Star 211', 19, false, 26);
INSERT INTO public.star VALUES (712, 'Star 212', 15, false, 68);
INSERT INTO public.star VALUES (713, 'Star 213', 12, true, 103);
INSERT INTO public.star VALUES (714, 'Star 214', 9, false, 53);
INSERT INTO public.star VALUES (715, 'Star 215', 10, false, 80);
INSERT INTO public.star VALUES (716, 'Star 216', 11, false, 19);
INSERT INTO public.star VALUES (717, 'Star 217', 18, false, 78);
INSERT INTO public.star VALUES (718, 'Star 218', 9, true, 61);
INSERT INTO public.star VALUES (719, 'Star 219', 15, true, 38);
INSERT INTO public.star VALUES (720, 'Star 220', 11, false, 37);
INSERT INTO public.star VALUES (721, 'Star 221', 16, false, 36);
INSERT INTO public.star VALUES (722, 'Star 222', 18, false, 35);
INSERT INTO public.star VALUES (723, 'Star 223', 20, true, 86);
INSERT INTO public.star VALUES (724, 'Star 224', 16, true, 66);
INSERT INTO public.star VALUES (725, 'Star 225', 18, false, 14);
INSERT INTO public.star VALUES (726, 'Star 226', 19, false, 68);
INSERT INTO public.star VALUES (727, 'Star 227', 17, true, 90);
INSERT INTO public.star VALUES (728, 'Star 228', 13, true, 67);
INSERT INTO public.star VALUES (729, 'Star 229', 13, false, 42);
INSERT INTO public.star VALUES (730, 'Star 230', 18, true, 14);
INSERT INTO public.star VALUES (731, 'Star 231', 15, false, 85);
INSERT INTO public.star VALUES (732, 'Star 232', 3, false, 42);
INSERT INTO public.star VALUES (733, 'Star 233', 15, true, 60);
INSERT INTO public.star VALUES (734, 'Star 234', 12, true, 93);
INSERT INTO public.star VALUES (735, 'Star 235', 15, true, 90);
INSERT INTO public.star VALUES (736, 'Star 236', 12, false, 30);
INSERT INTO public.star VALUES (737, 'Star 237', 2, false, 71);
INSERT INTO public.star VALUES (738, 'Star 238', 17, false, 19);
INSERT INTO public.star VALUES (739, 'Star 239', 1, true, 12);
INSERT INTO public.star VALUES (740, 'Star 240', 4, true, 89);
INSERT INTO public.star VALUES (741, 'Star 241', 1, true, 27);
INSERT INTO public.star VALUES (742, 'Star 242', 15, true, 42);
INSERT INTO public.star VALUES (743, 'Star 243', 16, true, 22);
INSERT INTO public.star VALUES (744, 'Star 244', 9, false, 67);
INSERT INTO public.star VALUES (745, 'Star 245', 9, false, 21);
INSERT INTO public.star VALUES (746, 'Star 246', 4, true, 66);
INSERT INTO public.star VALUES (747, 'Star 247', 12, false, 94);
INSERT INTO public.star VALUES (748, 'Star 248', 13, true, 27);
INSERT INTO public.star VALUES (749, 'Star 249', 17, false, 65);
INSERT INTO public.star VALUES (750, 'Star 250', 3, false, 72);
INSERT INTO public.star VALUES (751, 'Star 251', 14, false, 79);
INSERT INTO public.star VALUES (752, 'Star 252', 4, false, 97);
INSERT INTO public.star VALUES (753, 'Star 253', 2, false, 1);
INSERT INTO public.star VALUES (754, 'Star 254', 8, true, 57);
INSERT INTO public.star VALUES (755, 'Star 255', 9, false, 44);
INSERT INTO public.star VALUES (756, 'Star 256', 17, false, 43);
INSERT INTO public.star VALUES (757, 'Star 257', 5, false, 35);
INSERT INTO public.star VALUES (758, 'Star 258', 8, false, 37);
INSERT INTO public.star VALUES (759, 'Star 259', 13, false, 35);
INSERT INTO public.star VALUES (760, 'Star 260', 5, false, 70);
INSERT INTO public.star VALUES (761, 'Star 261', 14, false, 69);
INSERT INTO public.star VALUES (762, 'Star 262', 3, false, 72);
INSERT INTO public.star VALUES (763, 'Star 263', 6, false, 50);
INSERT INTO public.star VALUES (764, 'Star 264', 4, false, 48);
INSERT INTO public.star VALUES (765, 'Star 265', 16, true, 23);
INSERT INTO public.star VALUES (766, 'Star 266', 4, true, 15);
INSERT INTO public.star VALUES (767, 'Star 267', 13, true, 85);
INSERT INTO public.star VALUES (768, 'Star 268', 13, false, 56);
INSERT INTO public.star VALUES (769, 'Star 269', 17, false, 81);
INSERT INTO public.star VALUES (770, 'Star 270', 6, false, 20);
INSERT INTO public.star VALUES (771, 'Star 271', 11, false, 68);
INSERT INTO public.star VALUES (772, 'Star 272', 11, false, 36);
INSERT INTO public.star VALUES (773, 'Star 273', 15, true, 58);
INSERT INTO public.star VALUES (774, 'Star 274', 19, true, 66);
INSERT INTO public.star VALUES (775, 'Star 275', 5, false, 39);
INSERT INTO public.star VALUES (776, 'Star 276', 16, false, 31);
INSERT INTO public.star VALUES (777, 'Star 277', 9, false, 15);
INSERT INTO public.star VALUES (778, 'Star 278', 2, false, 40);
INSERT INTO public.star VALUES (779, 'Star 279', 4, true, 20);
INSERT INTO public.star VALUES (780, 'Star 280', 12, true, 34);
INSERT INTO public.star VALUES (781, 'Star 281', 9, true, 54);
INSERT INTO public.star VALUES (782, 'Star 282', 12, true, 60);
INSERT INTO public.star VALUES (783, 'Star 283', 0, false, 65);
INSERT INTO public.star VALUES (784, 'Star 284', 18, true, 45);
INSERT INTO public.star VALUES (785, 'Star 285', 14, false, 92);
INSERT INTO public.star VALUES (786, 'Star 286', 16, false, 52);
INSERT INTO public.star VALUES (787, 'Star 287', 4, true, 15);
INSERT INTO public.star VALUES (788, 'Star 288', 2, false, 66);
INSERT INTO public.star VALUES (789, 'Star 289', 15, false, 41);
INSERT INTO public.star VALUES (790, 'Star 290', 8, false, 93);
INSERT INTO public.star VALUES (791, 'Star 291', 1, true, 78);
INSERT INTO public.star VALUES (792, 'Star 292', 16, false, 16);
INSERT INTO public.star VALUES (793, 'Star 293', 0, false, 102);
INSERT INTO public.star VALUES (794, 'Star 294', 2, false, 96);
INSERT INTO public.star VALUES (795, 'Star 295', 16, false, 47);
INSERT INTO public.star VALUES (796, 'Star 296', 17, false, 70);
INSERT INTO public.star VALUES (797, 'Star 297', 9, true, 96);
INSERT INTO public.star VALUES (798, 'Star 298', 19, false, 48);
INSERT INTO public.star VALUES (799, 'Star 299', 18, false, 74);
INSERT INTO public.star VALUES (800, 'Star 300', 11, true, 37);
INSERT INTO public.star VALUES (801, 'Star 301', 13, false, 105);
INSERT INTO public.star VALUES (802, 'Star 302', 7, false, 17);
INSERT INTO public.star VALUES (803, 'Star 303', 8, false, 100);
INSERT INTO public.star VALUES (804, 'Star 304', 16, false, 64);
INSERT INTO public.star VALUES (805, 'Star 305', 6, false, 50);
INSERT INTO public.star VALUES (806, 'Star 306', 5, false, 29);
INSERT INTO public.star VALUES (807, 'Star 307', 9, false, 48);
INSERT INTO public.star VALUES (808, 'Star 308', 12, true, 43);
INSERT INTO public.star VALUES (809, 'Star 309', 8, true, 8);
INSERT INTO public.star VALUES (810, 'Star 310', 14, true, 31);
INSERT INTO public.star VALUES (811, 'Star 311', 4, false, 61);
INSERT INTO public.star VALUES (812, 'Star 312', 2, true, 58);
INSERT INTO public.star VALUES (813, 'Star 313', 14, false, 103);
INSERT INTO public.star VALUES (814, 'Star 314', 18, false, 18);
INSERT INTO public.star VALUES (815, 'Star 315', 13, true, 75);
INSERT INTO public.star VALUES (816, 'Star 316', 9, false, 19);
INSERT INTO public.star VALUES (817, 'Star 317', 4, false, 71);
INSERT INTO public.star VALUES (818, 'Star 318', 1, true, 48);
INSERT INTO public.star VALUES (819, 'Star 319', 6, true, 96);
INSERT INTO public.star VALUES (820, 'Star 320', 15, false, 51);
INSERT INTO public.star VALUES (821, 'Star 321', 12, false, 54);
INSERT INTO public.star VALUES (822, 'Star 322', 13, false, 105);
INSERT INTO public.star VALUES (823, 'Star 323', 15, false, 37);
INSERT INTO public.star VALUES (824, 'Star 324', 8, false, 96);
INSERT INTO public.star VALUES (825, 'Star 325', 9, false, 58);
INSERT INTO public.star VALUES (826, 'Star 326', 10, true, 22);
INSERT INTO public.star VALUES (827, 'Star 327', 11, false, 61);
INSERT INTO public.star VALUES (828, 'Star 328', 2, false, 19);
INSERT INTO public.star VALUES (829, 'Star 329', 4, false, 15);
INSERT INTO public.star VALUES (830, 'Star 330', 4, true, 54);
INSERT INTO public.star VALUES (831, 'Star 331', 8, false, 2);
INSERT INTO public.star VALUES (832, 'Star 332', 8, true, 51);
INSERT INTO public.star VALUES (833, 'Star 333', 16, true, 44);
INSERT INTO public.star VALUES (834, 'Star 334', 15, false, 61);
INSERT INTO public.star VALUES (835, 'Star 335', 2, true, 53);
INSERT INTO public.star VALUES (836, 'Star 336', 8, false, 62);
INSERT INTO public.star VALUES (837, 'Star 337', 18, true, 8);
INSERT INTO public.star VALUES (838, 'Star 338', 7, false, 8);
INSERT INTO public.star VALUES (839, 'Star 339', 7, true, 47);
INSERT INTO public.star VALUES (840, 'Star 340', 1, true, 10);
INSERT INTO public.star VALUES (841, 'Star 341', 15, false, 39);
INSERT INTO public.star VALUES (842, 'Star 342', 9, false, 46);
INSERT INTO public.star VALUES (843, 'Star 343', 16, true, 55);
INSERT INTO public.star VALUES (844, 'Star 344', 7, true, 19);
INSERT INTO public.star VALUES (845, 'Star 345', 15, true, 23);
INSERT INTO public.star VALUES (846, 'Star 346', 14, false, 18);
INSERT INTO public.star VALUES (847, 'Star 347', 4, false, 63);
INSERT INTO public.star VALUES (848, 'Star 348', 20, true, 75);
INSERT INTO public.star VALUES (849, 'Star 349', 16, true, 9);
INSERT INTO public.star VALUES (850, 'Star 350', 16, false, 24);
INSERT INTO public.star VALUES (851, 'Star 351', 15, true, 99);
INSERT INTO public.star VALUES (852, 'Star 352', 10, false, 61);
INSERT INTO public.star VALUES (853, 'Star 353', 17, true, 4);
INSERT INTO public.star VALUES (854, 'Star 354', 4, true, 13);
INSERT INTO public.star VALUES (855, 'Star 355', 6, true, 69);
INSERT INTO public.star VALUES (856, 'Star 356', 14, true, 8);
INSERT INTO public.star VALUES (857, 'Star 357', 6, false, 73);
INSERT INTO public.star VALUES (858, 'Star 358', 1, false, 41);
INSERT INTO public.star VALUES (859, 'Star 359', 17, true, 6);
INSERT INTO public.star VALUES (860, 'Star 360', 3, false, 99);
INSERT INTO public.star VALUES (861, 'Star 361', 18, false, 70);
INSERT INTO public.star VALUES (862, 'Star 362', 10, false, 58);
INSERT INTO public.star VALUES (863, 'Star 363', 17, false, 5);
INSERT INTO public.star VALUES (864, 'Star 364', 4, true, 89);
INSERT INTO public.star VALUES (865, 'Star 365', 17, true, 36);
INSERT INTO public.star VALUES (866, 'Star 366', 2, true, 63);
INSERT INTO public.star VALUES (867, 'Star 367', 18, false, 86);
INSERT INTO public.star VALUES (868, 'Star 368', 11, true, 85);
INSERT INTO public.star VALUES (869, 'Star 369', 4, false, 10);
INSERT INTO public.star VALUES (870, 'Star 370', 6, false, 14);
INSERT INTO public.star VALUES (871, 'Star 371', 8, false, 62);
INSERT INTO public.star VALUES (872, 'Star 372', 10, false, 52);
INSERT INTO public.star VALUES (873, 'Star 373', 4, true, 64);
INSERT INTO public.star VALUES (874, 'Star 374', 1, false, 70);
INSERT INTO public.star VALUES (875, 'Star 375', 18, false, 78);
INSERT INTO public.star VALUES (876, 'Star 376', 9, true, 13);
INSERT INTO public.star VALUES (877, 'Star 377', 9, false, 5);
INSERT INTO public.star VALUES (878, 'Star 378', 4, true, 67);
INSERT INTO public.star VALUES (879, 'Star 379', 9, true, 12);
INSERT INTO public.star VALUES (880, 'Star 380', 14, true, 83);
INSERT INTO public.star VALUES (881, 'Star 381', 7, false, 102);
INSERT INTO public.star VALUES (882, 'Star 382', 15, false, 29);
INSERT INTO public.star VALUES (883, 'Star 383', 17, true, 30);
INSERT INTO public.star VALUES (884, 'Star 384', 7, false, 34);
INSERT INTO public.star VALUES (885, 'Star 385', 19, false, 52);
INSERT INTO public.star VALUES (886, 'Star 386', 9, false, 75);
INSERT INTO public.star VALUES (887, 'Star 387', 12, true, 24);
INSERT INTO public.star VALUES (888, 'Star 388', 9, true, 90);
INSERT INTO public.star VALUES (889, 'Star 389', 16, false, 33);
INSERT INTO public.star VALUES (890, 'Star 390', 9, true, 77);
INSERT INTO public.star VALUES (891, 'Star 391', 3, false, 7);
INSERT INTO public.star VALUES (892, 'Star 392', 3, false, 18);
INSERT INTO public.star VALUES (893, 'Star 393', 12, false, 20);
INSERT INTO public.star VALUES (894, 'Star 394', 7, true, 96);
INSERT INTO public.star VALUES (895, 'Star 395', 11, false, 4);
INSERT INTO public.star VALUES (896, 'Star 396', 8, false, 2);
INSERT INTO public.star VALUES (897, 'Star 397', 13, false, 17);
INSERT INTO public.star VALUES (898, 'Star 398', 16, false, 86);
INSERT INTO public.star VALUES (899, 'Star 399', 14, true, 76);
INSERT INTO public.star VALUES (900, 'Star 400', 17, false, 37);
INSERT INTO public.star VALUES (901, 'Star 401', 15, false, 5);
INSERT INTO public.star VALUES (902, 'Star 402', 11, false, 15);
INSERT INTO public.star VALUES (903, 'Star 403', 2, true, 60);
INSERT INTO public.star VALUES (904, 'Star 404', 6, false, 62);
INSERT INTO public.star VALUES (905, 'Star 405', 6, false, 94);
INSERT INTO public.star VALUES (906, 'Star 406', 18, false, 16);
INSERT INTO public.star VALUES (907, 'Star 407', 19, false, 35);
INSERT INTO public.star VALUES (908, 'Star 408', 4, false, 48);
INSERT INTO public.star VALUES (909, 'Star 409', 0, true, 86);
INSERT INTO public.star VALUES (910, 'Star 410', 5, false, 35);
INSERT INTO public.star VALUES (911, 'Star 411', 13, false, 63);
INSERT INTO public.star VALUES (912, 'Star 412', 8, false, 11);
INSERT INTO public.star VALUES (913, 'Star 413', 16, false, 30);
INSERT INTO public.star VALUES (914, 'Star 414', 4, false, 104);
INSERT INTO public.star VALUES (915, 'Star 415', 19, false, 20);
INSERT INTO public.star VALUES (916, 'Star 416', 18, false, 27);
INSERT INTO public.star VALUES (917, 'Star 417', 17, true, 104);
INSERT INTO public.star VALUES (918, 'Star 418', 20, true, 23);
INSERT INTO public.star VALUES (919, 'Star 419', 1, false, 71);
INSERT INTO public.star VALUES (920, 'Star 420', 9, true, 10);
INSERT INTO public.star VALUES (921, 'Star 421', 14, true, 46);
INSERT INTO public.star VALUES (922, 'Star 422', 6, false, 95);
INSERT INTO public.star VALUES (923, 'Star 423', 10, false, 86);
INSERT INTO public.star VALUES (924, 'Star 424', 10, false, 71);
INSERT INTO public.star VALUES (925, 'Star 425', 9, false, 91);
INSERT INTO public.star VALUES (926, 'Star 426', 10, false, 6);
INSERT INTO public.star VALUES (927, 'Star 427', 6, false, 78);
INSERT INTO public.star VALUES (928, 'Star 428', 18, false, 17);
INSERT INTO public.star VALUES (929, 'Star 429', 1, true, 64);
INSERT INTO public.star VALUES (930, 'Star 430', 19, false, 97);
INSERT INTO public.star VALUES (931, 'Star 431', 8, true, 25);
INSERT INTO public.star VALUES (932, 'Star 432', 10, true, 28);
INSERT INTO public.star VALUES (933, 'Star 433', 8, true, 26);
INSERT INTO public.star VALUES (934, 'Star 434', 19, true, 97);
INSERT INTO public.star VALUES (935, 'Star 435', 13, false, 60);
INSERT INTO public.star VALUES (936, 'Star 436', 15, true, 36);
INSERT INTO public.star VALUES (937, 'Star 437', 8, true, 96);
INSERT INTO public.star VALUES (938, 'Star 438', 2, false, 74);
INSERT INTO public.star VALUES (939, 'Star 439', 12, false, 94);
INSERT INTO public.star VALUES (940, 'Star 440', 19, false, 27);
INSERT INTO public.star VALUES (941, 'Star 441', 13, false, 73);
INSERT INTO public.star VALUES (942, 'Star 442', 3, false, 33);
INSERT INTO public.star VALUES (943, 'Star 443', 12, true, 12);
INSERT INTO public.star VALUES (944, 'Star 444', 8, true, 41);
INSERT INTO public.star VALUES (945, 'Star 445', 9, false, 2);
INSERT INTO public.star VALUES (946, 'Star 446', 4, false, 69);
INSERT INTO public.star VALUES (947, 'Star 447', 6, false, 85);
INSERT INTO public.star VALUES (948, 'Star 448', 12, true, 53);
INSERT INTO public.star VALUES (949, 'Star 449', 14, false, 32);
INSERT INTO public.star VALUES (950, 'Star 450', 7, false, 12);
INSERT INTO public.star VALUES (951, 'Star 451', 8, true, 7);
INSERT INTO public.star VALUES (952, 'Star 452', 1, false, 104);
INSERT INTO public.star VALUES (953, 'Star 453', 3, false, 20);
INSERT INTO public.star VALUES (954, 'Star 454', 19, true, 54);
INSERT INTO public.star VALUES (955, 'Star 455', 2, false, 9);
INSERT INTO public.star VALUES (956, 'Star 456', 18, false, 21);
INSERT INTO public.star VALUES (957, 'Star 457', 19, true, 83);
INSERT INTO public.star VALUES (958, 'Star 458', 2, true, 63);
INSERT INTO public.star VALUES (959, 'Star 459', 5, true, 86);
INSERT INTO public.star VALUES (960, 'Star 460', 13, false, 18);
INSERT INTO public.star VALUES (961, 'Star 461', 8, true, 83);
INSERT INTO public.star VALUES (962, 'Star 462', 17, false, 87);
INSERT INTO public.star VALUES (963, 'Star 463', 6, false, 45);
INSERT INTO public.star VALUES (964, 'Star 464', 1, true, 6);
INSERT INTO public.star VALUES (965, 'Star 465', 9, true, 48);
INSERT INTO public.star VALUES (966, 'Star 466', 11, true, 95);
INSERT INTO public.star VALUES (967, 'Star 467', 11, false, 46);
INSERT INTO public.star VALUES (968, 'Star 468', 12, false, 92);
INSERT INTO public.star VALUES (969, 'Star 469', 19, false, 20);
INSERT INTO public.star VALUES (970, 'Star 470', 7, false, 44);
INSERT INTO public.star VALUES (971, 'Star 471', 11, false, 3);
INSERT INTO public.star VALUES (972, 'Star 472', 4, true, 41);
INSERT INTO public.star VALUES (973, 'Star 473', 18, false, 91);
INSERT INTO public.star VALUES (974, 'Star 474', 17, true, 25);
INSERT INTO public.star VALUES (975, 'Star 475', 7, false, 41);
INSERT INTO public.star VALUES (976, 'Star 476', 2, false, 45);
INSERT INTO public.star VALUES (977, 'Star 477', 1, false, 80);
INSERT INTO public.star VALUES (978, 'Star 478', 16, true, 59);
INSERT INTO public.star VALUES (979, 'Star 479', 14, false, 72);
INSERT INTO public.star VALUES (980, 'Star 480', 7, true, 13);
INSERT INTO public.star VALUES (981, 'Star 481', 6, false, 42);
INSERT INTO public.star VALUES (982, 'Star 482', 10, false, 61);
INSERT INTO public.star VALUES (983, 'Star 483', 1, true, 37);
INSERT INTO public.star VALUES (984, 'Star 484', 15, false, 57);
INSERT INTO public.star VALUES (985, 'Star 485', 19, true, 80);
INSERT INTO public.star VALUES (986, 'Star 486', 1, false, 78);
INSERT INTO public.star VALUES (987, 'Star 487', 13, false, 8);
INSERT INTO public.star VALUES (988, 'Star 488', 13, false, 48);
INSERT INTO public.star VALUES (989, 'Star 489', 9, true, 30);
INSERT INTO public.star VALUES (990, 'Star 490', 15, false, 83);
INSERT INTO public.star VALUES (991, 'Star 491', 11, true, 65);
INSERT INTO public.star VALUES (992, 'Star 492', 13, true, 32);
INSERT INTO public.star VALUES (993, 'Star 493', 10, false, 69);
INSERT INTO public.star VALUES (994, 'Star 494', 17, false, 71);
INSERT INTO public.star VALUES (995, 'Star 495', 17, true, 97);
INSERT INTO public.star VALUES (996, 'Star 496', 9, false, 66);
INSERT INTO public.star VALUES (997, 'Star 497', 20, true, 47);
INSERT INTO public.star VALUES (998, 'Star 498', 2, false, 94);
INSERT INTO public.star VALUES (999, 'Star 499', 9, false, 75);
INSERT INTO public.star VALUES (1000, 'Star 500', 13, false, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 106, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 500, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1000, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: sattelite_sattelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sattelite_sattelite_id_seq', 3, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1000, true);


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
-- Name: sattelite sattelite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sattelite
    ADD CONSTRAINT sattelite_name_key UNIQUE (name);


--
-- Name: sattelite sattelite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sattelite
    ADD CONSTRAINT sattelite_pkey PRIMARY KEY (sattelite_id);


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

