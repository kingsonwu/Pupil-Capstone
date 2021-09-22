--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

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
-- Name: Mentors; Type: TABLE; Schema: public; Owner: KO
--

CREATE TABLE public."Mentors" (
    id integer NOT NULL,
    "firstName" character varying(255),
    "lastName" character varying(255),
    email character varying(255),
    type character varying(255),
    skills character varying(255),
    about text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Mentors" OWNER TO "KO";

--
-- Name: Mentors_id_seq; Type: SEQUENCE; Schema: public; Owner: KO
--

CREATE SEQUENCE public."Mentors_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Mentors_id_seq" OWNER TO "KO";

--
-- Name: Mentors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: KO
--

ALTER SEQUENCE public."Mentors_id_seq" OWNED BY public."Mentors".id;


--
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: KO
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO "KO";

--
-- Name: Mentors id; Type: DEFAULT; Schema: public; Owner: KO
--

ALTER TABLE ONLY public."Mentors" ALTER COLUMN id SET DEFAULT nextval('public."Mentors_id_seq"'::regclass);


--
-- Data for Name: Mentors; Type: TABLE DATA; Schema: public; Owner: KO
--

COPY public."Mentors" (id, "firstName", "lastName", email, type, skills, about, "createdAt", "updatedAt") FROM stdin;
6	Jellene	Evans	evansjellene@gmail.com	hard_skills	Cybersecurity, Penetration Testing, Ethical Hacking, Software Development	dignissim convallis aenean et tortor at risus viverra adipiscing at in tellus integer feugiat scelerisque varius morbi enim nunc faucibus	2021-08-24 18:21:28.977-05	2021-08-24 18:21:28.977-05
1	Annie	Easley	ajeasley@nasa.gov	hard_skills	Software Development	Hello my name is Annie, and i've been a developer for more than 10 years.  On about my 7th year, I became a senior developer for a very reputable tech company, and I realized if theres one thing I love more than developing, it's leading those under me and giving these little disciples the opportunity to flourish and take off.  This is why I chose to volunteer my services at Pupil. I hope to leave a lasting impression and make developing as fun as can be. Please email me if you have any questions.	2021-08-24 18:01:25.514-05	2021-08-24 18:01:25.514-05
2	Conner	Miller	millerconner@yahoo.com.com	soft_skills	Public Speaking, Communication	"Gooday Mate" I'm Conner Miller! I'm the guy they call to make speeches at graduation ceremonies and other extra important events.  Some people are born to dance, some are born to sing, me on the other hand, without a shadow of a doubt, I was born to speak loud and clear.  Public speaking is by far the number 1 fear that people have, and I'm here to help you overcome those jitters.  Communication is a skill that can give you more opportunities than you can count, and for you to be effective, it'll take hard work. Thats where I come in. I'll help speaking public and your communication all together become second nature.  "Love what you do and do what you love"	2021-08-24 18:01:25.514-05	2021-08-24 18:01:25.514-05
3	Walter	White	w.white@unlv.edu	hard_skills	Chemical Sciences	I'm Walter White, Director of the Chemistry Dept at UNLV.  20 years ago if you would have told me that I would be a chemistry nerd then I'd probably laugh in your face.  The truth is, chemistry gives you a better understanding of the world around us, and not just from a scientific stand point, but it helps you understand connection and relationship.  When I received the epiphany that everything is connected, my life changed instantly and all I could do is delve deeper in this exciting realm of mystery.  I've received many accolades and awards in my 30 years of research but I think the most reward is giving back to the next generation. Thank you for reading my ramble. 	2021-08-24 18:21:28.977-05	2021-08-24 18:21:28.977-05
9	Shaneil	Bayle	Bayles@gmail.com	soft_skills	Counseling, People Skills,	dignissim convallis aenean et tortor at risus viverra adipiscing at in tellus integer feugiat scelerisque varius morbi enim nunc faucibus	2021-08-24 18:21:28.977-05	2021-08-24 18:21:28.977-05
10	Sally	Mae	iamsally@gmail.com	hard_skills	Software Development	dignissim convallis aenean et tortor at risus viverra adipiscing at in tellus integer feugiat scelerisque varius morbi enim nunc faucibus	2021-08-24 18:26:37.297-05	2021-08-24 18:26:37.297-05
11	Wesley	Tanner	westhebest@yahoo.com	soft_skills	Empathy, Collaboration, Leadership	dignissim convallis aenean et tortor at risus viverra adipiscing at in tellus integer feugiat scelerisque varius morbi enim nunc faucibus	2021-08-24 18:26:37.297-05	2021-08-24 18:26:37.297-05
4	Patrick	Morrison	morrisonp@protonmail.com	soft_skills	Public Speaking, Communication, Interpersonal Relationships	Howdy!  I hope my intro gives you a clear picture of the kind of man that's going to be mentoring you.  Most people in my arena of influence are shocked that I'm even sharing the same room with them.  They look at me and they do not see a man who got some fancy degree, but I know one thing they can't deny is my insatiable work ethic and hunger.  I learned a long time ago that success is a 4 letter word. WORK. You put in the work, and you are always going to get something back.  It's called the law of reciprocity.  Even if you don't get what you wanted, you still got you some experience.  That's what I want to give to you.  The only time I've ever stepped foot in a college campus was to give a public address during the graduation ceremony.  Work is the only thing you need. My email is there if you want to reach out. 	2021-08-24 18:21:28.977-05	2021-08-24 18:21:28.977-05
5	Ashley	Johnson	ashleyjohnsonMD@gmail.com	life_skills	Time Management, Leadership, Parenting	As a psychiatrist, and mother, I can 	2021-08-24 18:21:28.977-05	2021-08-24 18:21:28.977-05
8	Peter	Baker	bakerofficial@gmail.com	hard_skills	Photography, Adobe Photoshop	dignissim convallis aenean et tortor at risus viverra adipiscing at in tellus integer feugiat scelerisque varius morbi enim nunc faucibus	2021-08-24 18:21:28.977-05	2021-08-24 18:21:28.977-05
7	Rodney	West	westr@gmail.com	life_skills	Leadership, Parenting	dignissim convallis aenean et tortor at risus viverra adipiscing at in tellus integer feugiat scelerisque varius morbi enim nunc faucibus	2021-08-24 18:21:28.977-05	2021-08-24 18:21:28.977-05
12	Ned	Stark	kingofnorth@gmail.com	life_skills	Leadership	Hello future leader. I'm Ned Stark and I love to lead, but I wasn't always this way. I was once too afraid to lead until I realized everything rises and falls on leadership.  I came to a point of decision and wrestled with myself to take charge of my life and exhaust every opportunity given to me.  Leadership starts with leading yourself and being all you can be to yourself before you can be anything to others.  Leadership is probably one of the most important skills you can have in your arsenal.  It can't be faked, because it can be felt.  I'm here to help you become the best leader you can be.  It starts with you.  A little bit about me: Ive traveled the world teaching leadership to executives, school administration, football players, and even govt officials.  Thank you for reading. Have a blessed day.	2021-08-28 11:42:35.293-05	2021-08-28 11:42:35.293-05
\.


--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: KO
--

COPY public."SequelizeMeta" (name) FROM stdin;
20210824225828-create-mentor.js
\.


--
-- Name: Mentors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: KO
--

SELECT pg_catalog.setval('public."Mentors_id_seq"', 26, true);


--
-- Name: Mentors Mentors_pkey; Type: CONSTRAINT; Schema: public; Owner: KO
--

ALTER TABLE ONLY public."Mentors"
    ADD CONSTRAINT "Mentors_pkey" PRIMARY KEY (id);


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: KO
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- PostgreSQL database dump complete
--

