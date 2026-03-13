--
-- PostgreSQL database dump
--

\restrict CqaUaaAWX7gE2Tg2nfqMQqTqgsUmUUFuTdxyqEuvFlGx0u202OBH0daOGtPIVtg

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-03-13 12:20:24

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 16462)
-- Name: Schmied; Type: SCHEMA; Schema: -; Owner: Janx
--

CREATE SCHEMA "Schmied";


ALTER SCHEMA "Schmied" OWNER TO "Janx";

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16463)
-- Name: CoderaRegionen; Type: TABLE; Schema: Schmied; Owner: Janx
--

CREATE TABLE "Schmied"."CoderaRegionen" (
    "Name" character varying(50) NOT NULL,
    "Kontinent" character varying(50) NOT NULL
);


ALTER TABLE "Schmied"."CoderaRegionen" OWNER TO "Janx";

--
-- TOC entry 222 (class 1259 OID 16483)
-- Name: Runenschmiede; Type: TABLE; Schema: Schmied; Owner: Janx
--

CREATE TABLE "Schmied"."Runenschmiede" (
    "Name" character varying(50) NOT NULL,
    "Alter" smallint NOT NULL,
    "Herkunft" character varying(50) NOT NULL,
    "ZunftMitglied" character varying(50)
);


ALTER TABLE "Schmied"."Runenschmiede" OWNER TO "Janx";

--
-- TOC entry 224 (class 1259 OID 16508)
-- Name: WerkzeugBesitz; Type: TABLE; Schema: Schmied; Owner: Janx
--

CREATE TABLE "Schmied"."WerkzeugBesitz" (
    "Besitzer" character varying(50) NOT NULL,
    "Werkzeug" character varying(50) NOT NULL
);


ALTER TABLE "Schmied"."WerkzeugBesitz" OWNER TO "Janx";

--
-- TOC entry 223 (class 1259 OID 16501)
-- Name: Werkzeuge; Type: TABLE; Schema: Schmied; Owner: Janx
--

CREATE TABLE "Schmied"."Werkzeuge" (
    "Werkzeugname" character varying(50) NOT NULL,
    "Material" character varying(50) NOT NULL
);


ALTER TABLE "Schmied"."Werkzeuge" OWNER TO "Janx";

--
-- TOC entry 221 (class 1259 OID 16470)
-- Name: Zuenfte; Type: TABLE; Schema: Schmied; Owner: Janx
--

CREATE TABLE "Schmied"."Zuenfte" (
    "Name" character varying(50) NOT NULL,
    "Region" character varying(50) NOT NULL,
    "AnzahlMitglieder" integer NOT NULL
);


ALTER TABLE "Schmied"."Zuenfte" OWNER TO "Janx";

--
-- TOC entry 3404 (class 0 OID 16463)
-- Dependencies: 220
-- Data for Name: CoderaRegionen; Type: TABLE DATA; Schema: Schmied; Owner: Janx
--

COPY "Schmied"."CoderaRegionen" ("Name", "Kontinent") FROM stdin;
Tiefebene der Logik	Plains of Logic
Bytestream	Syntax Desert
\.


--
-- TOC entry 3406 (class 0 OID 16483)
-- Dependencies: 222
-- Data for Name: Runenschmiede; Type: TABLE DATA; Schema: Schmied; Owner: Janx
--

COPY "Schmied"."Runenschmiede" ("Name", "Alter", "Herkunft", "ZunftMitglied") FROM stdin;
Jan Belik	21	Tiefebene der Logik	Feuerzunft
Thorgar Eisenhand	45	Bytestream	Steinzunft
\.


--
-- TOC entry 3408 (class 0 OID 16508)
-- Dependencies: 224
-- Data for Name: WerkzeugBesitz; Type: TABLE DATA; Schema: Schmied; Owner: Janx
--

COPY "Schmied"."WerkzeugBesitz" ("Besitzer", "Werkzeug") FROM stdin;
Jan Belik	Runenhammer
Thorgar Eisenhand	Seelenschneider
Jan Belik	Seelenschneider
\.


--
-- TOC entry 3407 (class 0 OID 16501)
-- Dependencies: 223
-- Data for Name: Werkzeuge; Type: TABLE DATA; Schema: Schmied; Owner: Janx
--

COPY "Schmied"."Werkzeuge" ("Werkzeugname", "Material") FROM stdin;
Runenhammer	Mithril
Seelenschneider	Drachenerz
\.


--
-- TOC entry 3405 (class 0 OID 16470)
-- Dependencies: 221
-- Data for Name: Zuenfte; Type: TABLE DATA; Schema: Schmied; Owner: Janx
--

COPY "Schmied"."Zuenfte" ("Name", "Region", "AnzahlMitglieder") FROM stdin;
Feuerzunft	Tiefebene der Logik	25
Steinzunft	Bytestream	18
\.


--
-- TOC entry 3243 (class 2606 OID 16469)
-- Name: CoderaRegionen CoderaRegionen_pkey; Type: CONSTRAINT; Schema: Schmied; Owner: Janx
--

ALTER TABLE ONLY "Schmied"."CoderaRegionen"
    ADD CONSTRAINT "CoderaRegionen_pkey" PRIMARY KEY ("Name");


--
-- TOC entry 3247 (class 2606 OID 16490)
-- Name: Runenschmiede Runenschmiede_pkey; Type: CONSTRAINT; Schema: Schmied; Owner: Janx
--

ALTER TABLE ONLY "Schmied"."Runenschmiede"
    ADD CONSTRAINT "Runenschmiede_pkey" PRIMARY KEY ("Name");


--
-- TOC entry 3251 (class 2606 OID 16514)
-- Name: WerkzeugBesitz WerkzeugBesitz_pkey; Type: CONSTRAINT; Schema: Schmied; Owner: Janx
--

ALTER TABLE ONLY "Schmied"."WerkzeugBesitz"
    ADD CONSTRAINT "WerkzeugBesitz_pkey" PRIMARY KEY ("Besitzer", "Werkzeug");


--
-- TOC entry 3249 (class 2606 OID 16507)
-- Name: Werkzeuge Werkzeuge_pkey; Type: CONSTRAINT; Schema: Schmied; Owner: Janx
--

ALTER TABLE ONLY "Schmied"."Werkzeuge"
    ADD CONSTRAINT "Werkzeuge_pkey" PRIMARY KEY ("Werkzeugname");


--
-- TOC entry 3245 (class 2606 OID 16477)
-- Name: Zuenfte Zuenfte_pkey; Type: CONSTRAINT; Schema: Schmied; Owner: Janx
--

ALTER TABLE ONLY "Schmied"."Zuenfte"
    ADD CONSTRAINT "Zuenfte_pkey" PRIMARY KEY ("Name");


--
-- TOC entry 3255 (class 2606 OID 16515)
-- Name: WerkzeugBesitz FK_Besitz_Runenschmied; Type: FK CONSTRAINT; Schema: Schmied; Owner: Janx
--

ALTER TABLE ONLY "Schmied"."WerkzeugBesitz"
    ADD CONSTRAINT "FK_Besitz_Runenschmied" FOREIGN KEY ("Besitzer") REFERENCES "Schmied"."Runenschmiede"("Name");


--
-- TOC entry 3256 (class 2606 OID 16520)
-- Name: WerkzeugBesitz FK_Besitz_Werkzeug; Type: FK CONSTRAINT; Schema: Schmied; Owner: Janx
--

ALTER TABLE ONLY "Schmied"."WerkzeugBesitz"
    ADD CONSTRAINT "FK_Besitz_Werkzeug" FOREIGN KEY ("Werkzeug") REFERENCES "Schmied"."Werkzeuge"("Werkzeugname");


--
-- TOC entry 3253 (class 2606 OID 16491)
-- Name: Runenschmiede FK_Runenschmiede_Herkunft; Type: FK CONSTRAINT; Schema: Schmied; Owner: Janx
--

ALTER TABLE ONLY "Schmied"."Runenschmiede"
    ADD CONSTRAINT "FK_Runenschmiede_Herkunft" FOREIGN KEY ("Herkunft") REFERENCES "Schmied"."CoderaRegionen"("Name");


--
-- TOC entry 3254 (class 2606 OID 16496)
-- Name: Runenschmiede FK_Runenschmiede_Zunft; Type: FK CONSTRAINT; Schema: Schmied; Owner: Janx
--

ALTER TABLE ONLY "Schmied"."Runenschmiede"
    ADD CONSTRAINT "FK_Runenschmiede_Zunft" FOREIGN KEY ("ZunftMitglied") REFERENCES "Schmied"."Zuenfte"("Name");


--
-- TOC entry 3252 (class 2606 OID 16478)
-- Name: Zuenfte FK_Zuenfte_Region; Type: FK CONSTRAINT; Schema: Schmied; Owner: Janx
--

ALTER TABLE ONLY "Schmied"."Zuenfte"
    ADD CONSTRAINT "FK_Zuenfte_Region" FOREIGN KEY ("Region") REFERENCES "Schmied"."CoderaRegionen"("Name");


-- Completed on 2026-03-13 12:20:24

--
-- PostgreSQL database dump complete
--

\unrestrict CqaUaaAWX7gE2Tg2nfqMQqTqgsUmUUFuTdxyqEuvFlGx0u202OBH0daOGtPIVtg

