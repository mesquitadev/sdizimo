--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.10
-- Dumped by pg_dump version 9.5.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY auth_group (id, name) FROM stdin;
1	Administrador Usuários
2	Administrador Dízimos
3	Supervisor Dízimos
4	Operador Dízimos
5	Autenticacao Administrador
6	Dizimo Administrador
\.


--
-- Data for Name: autenticacao_gerenciamentogrupo; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY autenticacao_gerenciamentogrupo (id, eh_local, grupo_gerenciador_id) FROM stdin;
1	f	5
2	f	6
\.


--
-- Data for Name: autenticacao_gerenciamentogrupo_grupos_gerenciados; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY autenticacao_gerenciamentogrupo_grupos_gerenciados (id, gerenciamentogrupo_id, group_id) FROM stdin;
19	1	1
20	1	5
21	2	2
22	2	3
23	2	4
24	2	6
\.


--
-- Name: autenticacao_gerenciamentogrupo_grupos_gerenciados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('autenticacao_gerenciamentogrupo_grupos_gerenciados_id_seq', 24, true);


--
-- Name: autenticacao_gerenciamentogrupo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('autenticacao_gerenciamentogrupo_id_seq', 2, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$I89g2SZQHN6b$X3jw609fnETT56vDW5iWJTcTkt/U4r8+U3LjRUJutF4=	2019-07-25 21:42:32.431621-03	t	daniel	Daniel	Lima	danielslz@gmail.com	t	t	2018-10-17 21:28:01.005899-03
8	pbkdf2_sha256$36000$WD2rF4WTBRbL$p/+o/otdChMS+vUtwZQcf7C33aQTji3W6cBJjqYIn3M=	2019-04-02 19:31:11.03703-03	f	Ana	Ana	Pinheiro	edmilton8@hotmail.com	f	t	2019-04-02 19:29:25.514854-03
9	pbkdf2_sha256$36000$xcxDzq0HkSKt$jYOH5UQFU67V41BsRqa6IFqP4zeKLNJcDvVZdrSSIHY=	2019-05-26 08:19:48.179096-03	f	valdiane	Valdiane	Alves	valdianed.alves@hotmail.com	f	t	2019-05-26 07:33:05.585556-03
11	pbkdf2_sha256$36000$df29rXChkEav$hX5oOQ7bpVZes3VgjROqFt+n5Or9Joys1p7oPE2vq+c=	\N	f	suzete	Suzete	Gomes	edmilton8@hotmail.com	f	t	2019-06-05 13:56:39.287074-03
16	pbkdf2_sha256$36000$Mfq88SC2IBH5$t9m8Gt+Hh+iYs6xi63v+bYuZ5oizQK/5k9mZSWG1qkE=	2019-07-24 08:53:42.325108-03	t	mesquitadev	Victor	Mesquita	mesquitadev@gmail.com	f	t	2019-07-24 08:39:05.208931-03
15	pbkdf2_sha256$36000$JM4GldqrxgM7$UPHAGx0laXq8GQcEpXlKNhcQR2pH8DjrtXlktwlT9T4=	\N	f	jaquilda	Jaquilda	Fatima	edmilton8@hotmail.com	f	t	2019-06-05 14:06:48.335423-03
5	pbkdf2_sha256$36000$wlKfjGCKnvQR$i2KjT61DgmVw4E5HAB5rMnkScBi0kFNJ1ImftWp/D9Q=	2020-02-01 15:15:21.335021-03	f	kerlyjane	Kerlyjane	Ferreira	kerlyjanemelody@yahoo.com.br	f	t	2019-01-03 11:23:33.73706-03
3	pbkdf2_sha256$36000$CoGkexH2veW7$LBp6wOSZ8y5uO502a8TqoN1HZziz6x9JzRhnQjbXw7g=	2020-03-15 08:22:59.968393-03	f	gorete	Gorete	Dominice	goretedominice@hotmail.com	f	t	2018-11-18 06:52:49.920918-03
18	pbkdf2_sha256$36000$hEQTC7OmGSLU$Vno5S0ppMPUs+RgwGA8CGQ5LV1zUQVyWsQzrI4ACjx4=	2020-03-15 19:38:41.093316-03	f	marcia	Marcia	Costa	marciafac39@hotmail.com	f	t	2020-02-23 07:03:19.736968-03
12	pbkdf2_sha256$36000$NXIZ7zpTdq6I$x881ywwOXmb/AgIVLdeJjvwJZJCh5H9CY7+wt7T0zeQ=	2020-03-15 20:04:57.267078-03	f	teresa	Teresa	Mouzinho	edmilton8@hotmail.com	f	t	2019-06-05 13:57:20.650858-03
2	pbkdf2_sha256$36000$OTui8Q6NZsQw$z/aFFiiCMyaLg7p0Noj7QYRcj2sAAv7Gubs4DzzuHlo=	2020-03-09 11:43:14.042705-03	t	edmilton	Edmilton	Mesquita	edmilton.mesquita@infobits.net.br	f	t	2018-10-19 08:16:18.1258-03
19	pbkdf2_sha256$36000$xKXA3T44oGau$qE1uM4a85dIQblMi+/Ko9FKc9khcyl6eO5WJoLFsn3U=	2020-03-18 19:43:28.123591-03	f	claudete	Claudete	C	edmilton8@hotmail.com	f	t	2020-03-09 11:46:04.417832-03
10	pbkdf2_sha256$36000$1fG3FKvRV221$uQlTuabMTposhC71Pq+vliLghOJit90SQOOIQC35wFI=	2020-03-01 18:54:15.445764-03	f	geraldo	Geraldo	Gomes	edmilton8@hotmail.com	f	t	2019-06-05 13:55:42.782976-03
6	pbkdf2_sha256$36000$cxP3WcFO9OjG$N+HW+K8VnPoO5SGpX6Gxf+vXcGGOI4hZ0qFI1hhluQY=	2020-03-01 20:46:28.333925-03	f	DIVINA	MARIA DIVINA	PEREIRA	edmilton8@hotmail.com	f	t	2019-01-11 18:52:56.292589-03
7	pbkdf2_sha256$36000$4Nxh37YZxOIz$vfAOLWzKuijo4Cq23XBso4cj53lLQs6LPk6CTGR4f0I=	2020-03-19 19:04:42.062567-03	t	livia	LIVIA	REGINA	liviareginafroes@hotmail.com	f	t	2019-02-05 20:18:46.073755-03
13	pbkdf2_sha256$36000$g7y95sFfndr8$PrFopbhuXERSMeAInrIosMcKvAjpa+kAIdUualKeXyk=	2019-09-03 19:22:07.642838-03	t	leo	Leo	Livia	edmilton8@hotmail.com	f	t	2019-06-05 13:58:09.421317-03
4	pbkdf2_sha256$36000$PgMxTr4xHXKG$SyzVtf4qtb5Jdfroe2vW4rIBaKIyKLBExqh5qhW2+sg=	2020-03-08 08:41:05.503296-03	f	lisieux	CECILIA	TEREZA	edmilton8@hotmail.com	f	t	2018-12-23 19:46:10.570079-03
17	pbkdf2_sha256$36000$FMm80jDmiFt5$VFfqhpGcTkxRIVO/Hj+58csMD1wIZQJ6cNHH9vLIC3M=	2020-03-12 19:52:11.913565-03	f	gilvania	Gilvania	Portela	gilportella23@hotmail.com	f	t	2019-10-30 20:08:59.954405-03
14	pbkdf2_sha256$36000$p5ACxyYItxi0$PIt+9R2mrbbRyhNE9BqIro5cy/gILhBRvcq3gaZxtUw=	2020-03-17 19:27:39.234762-03	f	poliana	Poliana	Andre	edmilton8@hotmail.com	f	t	2019-06-05 13:59:15.647504-03
\.


--
-- Data for Name: dizimo_paroquia; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY dizimo_paroquia (id, nome, endereco, telefone, cidade, estado) FROM stdin;
1	Paróquia Nossa Senhora de Fátima	Rua Newton Bello, N 155, Bairro de Fátima	(98) 3271-6830	São Luís	MA
\.


--
-- Data for Name: autenticacao_perfil; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY autenticacao_perfil (id, papel, foto, usuario_id, paroquia_id) FROM stdin;
1	1	usuarios/fotos/eu-2014.jpg	1	1
2	1		2	1
3	2		3	1
5	2		5	1
6	2		6	1
8	2		8	1
16	1		16	1
4	3		4	1
9	2		9	1
10	2		10	1
11	2		11	1
12	2		12	1
14	2		14	1
15	2		15	1
17	2		17	1
18	2		18	1
13	1		13	1
7	1	usuarios/fotos/download.jpg	7	1
19	2		19	1
\.


--
-- Name: autenticacao_perfil_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('autenticacao_perfil_id_seq', 19, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('auth_group_id_seq', 6, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	thumbnail	kvstore
8	autenticacao	perfil
9	autenticacao	gerenciamentogrupo
10	dizimo	dizimista
11	dizimo	telefone
12	dizimo	dizimo
13	dizimo	oferta
14	dizimo	batismo
15	dizimo	doacao
16	dizimo	paroquia
17	dizimo	pagamento
18	dizimo	tipopagamento
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add kv store	7	add_kvstore
20	Can change kv store	7	change_kvstore
21	Can delete kv store	7	delete_kvstore
22	Can add perfil	8	add_perfil
23	Can change perfil	8	change_perfil
24	Can delete perfil	8	delete_perfil
25	Can view perfil	8	view_perfil
26	Can list perfil	8	list_perfil
27	Can add Gerenciamento de Grupo	9	add_gerenciamentogrupo
28	Can change Gerenciamento de Grupo	9	change_gerenciamentogrupo
29	Can delete Gerenciamento de Grupo	9	delete_gerenciamentogrupo
30	Can add dizimista	10	add_dizimista
31	Can change dizimista	10	change_dizimista
32	Can delete dizimista	10	delete_dizimista
33	Can view dizimista	10	view_dizimista
34	Can list dizimista	10	list_dizimista
35	Can add telefone	11	add_telefone
36	Can change telefone	11	change_telefone
37	Can delete telefone	11	delete_telefone
38	Can add dizimo	12	add_dizimo
39	Can change dizimo	12	change_dizimo
40	Can delete dizimo	12	delete_dizimo
41	Can view dizimo	12	view_dizimo
42	Can list dizimo	12	list_dizimo
43	Can add oferta	13	add_oferta
44	Can change oferta	13	change_oferta
45	Can delete oferta	13	delete_oferta
46	Can view oferta	13	view_oferta
47	Can list oferta	13	list_oferta
48	Can add batismo	14	add_batismo
49	Can change batismo	14	change_batismo
50	Can delete batismo	14	delete_batismo
51	Can view batismo	14	view_batismo
52	Can list batismo	14	list_batismo
53	Can add doacao	15	add_doacao
54	Can change doacao	15	change_doacao
55	Can delete doacao	15	delete_doacao
56	Can view doacao	15	view_doacao
57	Can list doacao	15	list_doacao
58	Can add paroquia	16	add_paroquia
59	Can change paroquia	16	change_paroquia
60	Can delete paroquia	16	delete_paroquia
61	Can view paroquia	16	view_paroquia
62	Can list paroquia	16	list_paroquia
63	Can add pagamento	17	add_pagamento
64	Can change pagamento	17	change_pagamento
65	Can delete pagamento	17	delete_pagamento
66	Can view pagamento	17	view_pagamento
67	Can list pagamento	17	list_pagamento
68	Can add tipo pagamento	18	add_tipopagamento
69	Can change tipo pagamento	18	change_tipopagamento
70	Can delete tipo pagamento	18	delete_tipopagamento
71	Can view tipopagamento	18	view_tipopagamento
72	Can list tipopagamento	18	list_tipopagamento
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
307	1	22
308	1	23
309	1	24
310	1	25
311	1	26
312	2	58
313	2	59
314	2	60
315	2	61
316	2	62
317	2	30
318	2	31
319	2	32
320	2	33
321	2	34
322	2	43
323	2	44
324	2	45
325	2	46
326	2	47
327	2	38
328	2	39
329	2	40
330	2	41
331	2	42
332	2	48
333	2	49
334	2	50
335	2	51
336	2	52
337	2	53
338	2	54
339	2	55
340	2	56
341	2	57
342	2	68
343	2	69
344	2	70
345	2	71
346	2	72
347	2	63
348	2	64
349	2	65
350	2	66
351	2	67
352	3	30
353	3	31
354	3	32
355	3	33
356	3	34
357	3	43
358	3	44
359	3	45
360	3	46
361	3	47
362	3	38
363	3	39
364	3	40
365	3	41
366	3	42
367	3	48
368	3	49
369	3	50
370	3	51
371	3	52
372	3	53
373	3	54
374	3	55
375	3	56
376	3	57
377	3	68
378	3	69
379	3	70
380	3	71
381	3	72
382	3	63
383	3	64
384	3	65
385	3	66
386	3	67
387	4	30
388	4	31
389	4	33
390	4	34
391	4	43
392	4	46
393	4	47
394	4	38
395	4	41
396	4	42
397	4	48
398	4	51
399	4	52
400	4	53
401	4	56
402	4	57
403	4	68
404	4	71
405	4	72
406	4	63
407	4	66
408	4	67
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 408, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('auth_permission_id_seq', 72, true);


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
1	1	1
2	1	2
7	3	4
17	9	4
5	2	1
6	2	2
11	6	4
10	5	4
15	8	4
16	4	3
26	16	1
27	16	2
19	10	4
20	11	4
21	12	4
23	14	4
25	15	4
28	17	4
29	18	4
30	13	1
31	13	2
32	7	1
33	7	2
34	19	4
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 34, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('auth_user_id_seq', 19, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: dizimo_batismo; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY dizimo_batismo (id, valor, nome_batizando, nome_solicitante, usuario_id, data_batismo, cadastrado_em, hora_batismo, paroquia_id) FROM stdin;
\.


--
-- Name: dizimo_batismo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('dizimo_batismo_id_seq', 1, false);


--
-- Data for Name: dizimo_dizimista; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY dizimo_dizimista (id, nome, endereco, bairro, cidade, comunidade, sexo, estado_civil, data_nascimento, estado, foto, paroquia_id) FROM stdin;
198	TEREZA CRISTINA FERREIRA ANDRADE	AV EDSON BRANDAO BL 10 ap 304	ANIL	São Luis	FÁTIMA	F	C	1965-10-03	MA		1
2	Adriana Sousa Costa	Rua Dom Pedro I, N 217	Fátima	São Luis	\N	F	S	1988-06-26	MA		1
3	Aldenizea Sousa Furtado	\N	Fátima	São Luis	\N	F	\N	1975-11-26	MA		1
4	Aldenora Barbosa Cruz	Rua Peria, N 162	Fátima	São Luis	\N	F	S	1939-10-18	MA		1
5	Alexssandra de Jesus Brito	Rua G, QD G, N 3	Fátima	São Luis	\N	F	S	1979-08-30	MA		1
6	Alvaro Alves da Silva	\N	Fátima	São Luis	\N	M	S	2016-12-07	MA		1
7	Ambrozina Bayma (IN MEMORIA)	Rua professor Mata Roma, N 142	Fátima	São Luis	\N	F	\N	1925-12-06	MA		1
8	Maria Hugulina S. Costa	Rua Newton Bello, N 155, Bairro de Fátima	Fátima	São Luis	\N	F	C	2015-05-05	MA		1
9	Ana Cristina Andrade Silva	Rua Ademar de Barros, N 350	Fátima	São Luis	\N	F	C	1967-10-15	MA		1
10	Ana Cristina Reis Gouveia	Rua Professor Mata Roma, N 129	Fátima	São Luis	\N	F	C	1989-03-10	MA		1
11	Ana Dandara Neves Diniz	1 \\travessa Djarde Ramos Martins, N 3	Fátima	São Luis	\N	F	C	1991-07-28	MA		1
12	Ana Karine  Madeira Penha	Rua Nossa Senhora Aparecida, Q J, N 20	Areinha	São Luis	\N	F	S	1983-12-06	MA		1
13	Ana Lea Aranha de Carvalho	\N	Fátima	São Luis	\N	F	S	1957-11-22	MA		1
14	Ana Lourdes Duarte de Souza Pinheiro	2 º Travessa Presidente Medice, N 94	Fátima	São Luis	\N	F	C	1967-06-05	MA		1
15	Ana Maria Soares Martins	Rua Dagmar Desterro, N 143	Fátima	São Luis	\N	F	S	1956-07-04	MA		1
16	Ana Maria Sousa Silveira	Rua Inacio Raposo, N 14	Fátima	São Luis	\N	F	C	1952-05-08	MA		1
199	MARIA DA PENHA PEREIRA CASTRO	RUA MACEIO ,106	FATIMA	SÃO LUIS	Nossa Senhora de Fátima	F	V	1942-05-28	MA		1
19	Etelvina de Fatima Fonseca Mendes	Rua Paulo Frontim, N 21	Fátima	São Luis	\N	F	\N	1954-08-16	MA		1
20	Ana Paula Nogueira Kreuzer	\N	\N	São Luis	\N	F	\N	1980-02-05	MA		1
21	Ana Rosa Campos Freitas Costa	Travessa do Mercado 108	Fátima	São Luis	\N	F	C	1964-07-26	MA		1
22	Analice Gomes Silva	Rua Santo Antonio 514	Santo Antonio	São Luis	\N	F	D	1975-10-26	MA		1
23	Anderlina Cantanhede Braga Costa	Rua D. Pedro 1 , 217	Fátima	São Luis	\N	F	C	1929-04-19	MA		1
24	Angela Ferreira Filha	Primeira Travessa Presidente Médici , 34	Fátima	São Luis	\N	F	S	1999-07-23	MA		1
25	Angela Maria Diniz	Rua Newton Bello, 214	Fátima	São Luis	\N	F	\N	1963-03-07	MA		1
27	Annalya Sousa Coimbra	Rua Da Liberdade , 235	Fátima	São Luis	\N	F	S	1991-09-01	MA		1
28	Antonia Araujo Ferreira	Rua Newton Bello, 132	Fátima	São Luis	\N	F	S	1971-03-22	MA		1
288	JOAQUIM AMERICO MARTINS BRINGEL	RUA 10 265	FÁTIMA	SÃO LUIS	FÁTIMA	M	C	1966-10-12	MA		1
289	CARLA FERREIRA DE JESUS	RESIDENCIAL NOVO ANGELIN, BLOCO 04 APT 305	ANGELIN	SÃO LUIS	FÁTIMA	F	S	1971-11-25	MA		1
31	Antonia Serrao Silva	Travessa Professora Zila Paz, 02	Fátima	São Luis	\N	F	S	1960-02-20	MA		1
32	Antonio Alexandre Da Silva	\N	\N	\N	\N	M	\N	1957-05-04	MA		1
33	Antonio Alves Do Nascimento	Terceira Travessa Manoel Ribeiro, 16	Fátima	São Luis	\N	M	C	1945-01-30	MA		1
34	Antonio Ambrozio Correia	Rua Neiva Moreira, 71	Fátima	São Luis	\N	M	\N	1925-03-20	MA		1
35	Antonio Cesar Penha Nascimento	Rua Dom Pedro II, 337	Fátima	São Luis	\N	M	C	1971-06-17	MA		1
36	Edmilton Mesquita Pinto	Rua Mirador, QD 06, N 14	Parque Pindorama	São Luis	\N	M	C	1980-03-01	MA		1
37	Milene Aroucha Furtado Viana	Travessa Dagmar Desterro, 87	Fátima	São Luis	\N	F	C	1977-08-05	MA		1
38	Raimunda Suzete Ferreira Leal	Rua Ademar de Barros, 318 A	Fátima	São Luis	\N	F	C	1969-09-19	MA		1
39	Geraldo Gomes Leal	Rua Ademar de Barros ,318 A	Fátima	São Luis	\N	M	C	1958-02-19	MA		1
122	BENEDITA DOS ANJOS PINTO MEIRELES	Segunda TRAVESSA JOÃO VIERA FILHO, 5	Fátima	São Luis	Nossa Senhora de Fátima	F	V	1948-04-02	MA		1
307	JAQUILDA FROES DINIZ	Rua Hugo da Cunha Machado 139	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	\N	1965-10-31	MA		1
42	Maria das Dores Madeira Maranhão	Rua Inacio Raposo, N 20	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1958-05-04	MA		1
43	Valdiane Danilde dos Santos Alves	Rua Paulo Frontin nº154	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1985-05-19	MA		1
44	Shirlley De Jesus Santos Barros	Rua Dep. João Henrique nº411	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1973-08-12	MA		1
45	Cecilia Tereza Lisieux De Jesus Costa Pinto	Rua Mirador, QD 06, N 14	Parque Pindorama	São Luis	Nossa Senhora de Fátima	F	C	1983-02-10	MA		1
46	Maria Jose Pinto Rosa	Rua Paulo Afonso, QD A, N 12	Fátima	São Luis	Nossa Senhora de Fátima	F	D	1960-09-02	MA		1
47	Maria Elenice de Sousa Costa	Rua Professor Mata Roma, N 111	Fátima	São Luis	Nossa Senhora de Fátima	F	\N	1951-08-13	MA		1
48	Stenilda de Jesus Pinto Salazar	Rua Paulo Afonso, QD B, N 12	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1965-03-02	MA		1
49	Maria Jose do Nascimento	Rua Maceio, N 520	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1942-04-20	MA		1
50	Silma Cristina Lima Mendes	Rua Professor Mata Roma, N 220	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1969-10-07	MA		1
51	Silvia Cristina Silva Diniz	1 Travessa Presidente Medice, N 15	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1967-08-21	MA		1
52	Terezinha de Jesus Rodrigues Pereira	Rua Nossa Senhora Aparecida, N 15	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1945-10-12	MA		1
53	Conceicao de Maria Silva Ribeiro	Rua Professor Zilar Paz, N 20	Fátima	São Luis	Nossa Senhora de Fátima	F	\N	1950-09-25	MA		1
54	Antonia Pereira de Almeida	Rua deputado Joao Henrique, N 19	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1948-05-01	MA		1
55	Dilma de Assuncao Pereira Garcez	Rua Deputado Joao Henrique, N 19	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1948-05-01	MA		1
56	Filomena Maria Jose Goncalves	Rua Newton Bello, N 110	Fátima	São Luis	Nossa Senhora de Fátima	F	C	2015-05-09	MA		1
57	Raimundo Nonato Birino	Avenida, QD01, N 24	Parque Pindorama	São Luis	Nossa Senhora de Fátima	M	C	1952-11-03	MA		1
58	Iranilde Paixao Soares	2 º Travessa do Chafaris, N 28	Fátima	São Luis	Nossa Senhora de Fátima	F	D	1961-01-11	MA		1
59	Lucius Clay Marques Veloso	Rua Neiva Moreira, N 33	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1977-04-18	MA		1
60	Silvio da Silva de Fatima	Rua Professor Zilar Paz, N 73	Fátima	São Luis	Nossa Senhora de Fátima	M	S	1976-07-30	MA		1
61	Maria do Socorro Moreira de Sousa	Rua Professor Zilar Paz, N 77	Fátima	São Luis	Nossa Senhora de Fátima	F	S	2015-01-01	MA		1
62	Rosete dos Anjos Sousa Algarves	Rua Professor Zilar Paz, N 61	Fátima	São Luis	Nossa Senhora de Fátima	F	\N	1946-08-02	MA		1
195	ELRISMAR MOREIRA DE ROSÁRIO	rua 19 quadra 34 casa 12	vila embratel	São Luis	Nossa Senhora de Fátima	M	C	1967-03-26	MA		1
64	Joao Rabelo Filho	Praca Almirante Tamadare, N 15	Fátima	São Luis	Nossa Senhora de Fátima	M	C	1959-04-27	MA		1
140	MARCOLINA SOARES	RUA DA IGREJA n3	Fátima	São Luis	Nossa Senhora de Fátima	F	C	2017-03-05	MA		1
67	Luciene Maria Braga Costa Fonseca	Rua Dom Pedro I, 196	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1964-01-21	MA		1
68	Deivison Dions Costa	Rua Paulo Frontin, N 17	Fátima	São Luis	Nossa Senhora de Fátima	M	C	1981-07-29	MA		1
69	Marciane Freitas Abreu Costa	Rua Paulo Frontin, N 17	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1980-01-12	MA		1
70	Maria Aurea Furtado	Rua Nossa Senhora de Fatima, N 101	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1945-01-15	MA		1
71	Clerice Castro	Rua Deputado Henrique Laroque, N 35	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1965-09-05	MA		1
72	SILVANA BARBOSA COSTA	Rua Peria, N 162	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1963-11-22	MA		1
73	Erliton Menezes Frois	Segunda Travessa Joâo Vieira Filho, 46	Fátima	São Luis	Nossa Senhora de Fátima	M	C	1979-07-07	MA		1
74	Sonia Regina Santos de Castro	Segunda Travessa Joao Vieira Filho, 46	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1957-08-01	MA		1
148	MARIA DIVINA PEREIRA	RUA DEP JOSE RIOS 253	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1960-03-02	MA		1
76	WALDENER AGUIDA NOGUEIRA	RUA PROFESSORA ZILAR PAZ, Nº87	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1954-02-05	MA		1
77	Luiza Fernandes Cabral	Rua Nossa Senhora de Fatima, N 65	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1960-06-13	MA		1
78	Joao Damasceno Costa Diniz	Rua Hugo da Cunha Machado, N 139	Fátima	São Luis	Nossa Senhora de Fátima	M	C	1964-05-06	MA		1
79	FRANCISCA BALDEZ DOS SANTOS	RUA MACEIO 332	Fátima	São Luis	Nossa Senhora de Fátima	F	V	1935-10-10	MA		1
80	MARIA GORETE COSTA DOMINICE	2 TV JOAO VIEIRA FILHO 12	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1967-08-17	MA		1
141	MARIA DE LOURDES DUARTE	RUA JOSÉ SANEY N39	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1935-04-09	MA		1
82	MARGARETE MARIA GOMES SILVA	RUA JOSE SARNEY 10	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1972-07-18	MA		1
83	EDELIZ SOARES COSTA	RUA DAGMAR DESTERRO 139	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1964-01-15	MA		1
84	JOANA AMORIM NASCIMENTO	Rua Newton Bello SN	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1953-02-08	MA		1
85	JONAS DOS SANTOS	RUA PROFESSOR MATA ROMA 246	Fátima	São Luis	Nossa Senhora de Fátima	M	S	1959-07-15	MA		1
86	WISLAN DA HORA DOS SANTOS	RUA PROFESSORA MATA ROMA SN	Fátima	São Luis	Nossa Senhora de Fátima	M	S	2015-08-09	MA		1
87	MILENE AROUCHA FURTADO VIANA	RUA DAGMAR DESTERRO 227	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1977-08-05	MA		1
88	NELIO SERRA CUTRIM	TRAVESSA DA UNIAO 56	Fátima	São Luis	Nossa Senhora de Fátima	M	C	1952-08-06	MA		1
89	MARIA ELINE SANTOS PONTES	RUA NOSSA SENHORA DE FATIMA 48	FATIMA	SAO LUIS	Nossa Senhora de Fátima	F	C	1942-02-19	MA		1
90	MARIA DE NAZARE RODRIGUES FONSECA	Rua Newton Bello 110	Fátima	São Luis	Nossa Senhora de Fátima	F	C	2015-07-19	MA		1
91	DAS DORES MADEIRA MARANHAO	RUA INACIO RAPOSO 20	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1958-05-04	MA		1
92	JOSE MANOEL LIMA E ALMADA	RUA DAGMAR DESTERRO N62	Fátima	São Luis	Nossa Senhora de Fátima	M	C	1935-01-19	MA		1
93	MARIA DAS GRACAS FREITAS ABREU	RUA PAULO FROTIN, 17	FATIMA	São Luis	Nossa Senhora de Fátima	F	C	1957-05-30	MA		1
94	MARIA DO ROSARIO MARANHAO	RUA TIRADENTES, 465	FATIMA	SAO LUIS	Nossa Senhora de Fátima	F	C	1956-09-11	MA		1
95	LUCIVANIA KELLE CABRAL DA SILVEIRA	\N	Fátima	São Luis	Nossa Senhora de Fátima	F	\N	1982-08-29	MA		1
98	MARIA MIGUELINA DUTRA NASCIMENTO	RUA DOM PEDRO I, 201	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1953-09-29	MA		1
97	SILVIA HELENA PEREIRA FARIAS	RUA D. PEDRO  I, 136	Fátima	São Luis	Nossa Senhora de Fátima	F	D	1962-11-26	MA		1
99	SANDRO ROBERTO VIEIRA BATISTA	RUA DEPUTADO JAO HENRIQUE. 422	Fátima	São Luis	Nossa Senhora de Fátima	M	S	1979-12-04	MA		1
100	MARCELO AMARAL AMORIM	RUA DEPUTADO JOSE RIOS	Fátima	São Luis	Nossa Senhora de Fátima	M	S	1970-02-02	MA		1
101	EDMILSON ALVES CAMPOS	RUA DAGMAR DO DESTERRO 32	Fátima	São Luis	Nossa Senhora de Fátima	M	C	1944-03-01	MA		1
200	ANTONIO ALVES DO NASCIMENTO	3 TRAVESSA MANOEL RIBEIRO 16	FÁTIMA	SÃO LUIS	FÁTIMA	M	C	1945-01-30	MA		1
103	TERESA CRISTINA MOUZINHO	2 TVR BOA ESPERANCA 8A	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1961-12-05	MA		1
104	EUGENIA SANTOS PINTO	RUA DJAR RAMOS MARTIINS QD A N 2	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1943-12-20	MA		1
306	MARIA DA CONCEICAO PIEDADE PEREIRA	SEGUNDA TRAVESSA MERCADO 183	FÁTIMA	SÃO LUÍS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	S	1943-05-22	MA		1
106	MARIA APARECIDA BARROS DA SILVA	RUA HUGO DA CUNHA MACHADO N 111	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1945-12-31	MA		1
107	FELICIA DE JESUS SOUSA	2 TRV DJAR RAMOS MARTINS QD A N 3	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1957-03-23	MA		1
108	CARLOS EDUARDO FERREIRA CARDOSO	RUA PAULO FRONTIM 180	Fátima	São Luis	Nossa Senhora de Fátima	M	C	1980-12-23	MA		1
110	JOSE FERREIRA BARROS FILHO	RUA DEPUTADO JOAO HENRIQUE 408	Fátima	São Luis	Nossa Senhora de Fátima	M	C	1975-04-07	MA		1
111	DEVANIR DE SOUZA LEITE	RUA DO CORREIO 17	Fátima	São Luis	Nossa Senhora de Fátima	M	C	1967-08-16	MA		1
112	Nadia Karine Mendes Araujo	Rua Dep Jose Rios 267	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1985-05-26	MA		1
113	TEREZINHA DE MARIA DE JESUS SOUSA FERNANDES	RUA HUMAITA n 03 QUADRA G	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1955-11-18	MA		1
114	MARIA DE FATIMA SILVIA BRITO	RUA D PEDRO II 492	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1956-10-13	MA		1
115	MARIA JOSE CARVALHO DUTRA CUTRIM	RUA ADEMAR DE BARROS 248	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1953-02-02	MA		1
40	Dulcinea Menezes da Fonseca	Rua Dagmar Desterro, N 21	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1933-11-16	MA		1
116	DULCINEIA DA SILVA TRINDADE	RUA INACIO RAPOSO 20	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1999-04-17	MA		1
117	ZOLEA FERREIRA DE JESUS	RUA ADEMAR DE BARROS 472	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1944-05-22	MA		1
118	DENIRA FERREIRA DE JESUS	RUA ADEMAR DE BARROS 472	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1970-06-25	MA		1
119	MARIA DA CONCEICAO PEREIRA FONSECA	RUA DA IGREJA, 110	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1962-08-01	MA		1
120	MARIA VALENTINA DA SILVA PINHO	RUA DEP JOSE MARIO, 45	Fátima	São Luis	Nossa Senhora de Fátima	F	\N	1949-01-14	MA		1
121	LEONILDES SOUSA PEREIRA	RUA 1º DE JANEIRO	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1931-12-26	MA		1
123	AUZENIRA PEREIRA DA CUNHA COSTA	RUA NOSSA SENHORA DE FATIMA, 125	Fátima	São Luis	\N	F	C	1961-02-20	MA		1
124	MARIA DAS DORES DOS REIS SILVA	TRAVESSA DO MERCADO	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1956-04-26	MA		1
125	MARIA DE FATIMA DE JESUS NASCIMENTO	Rua Newton Bello	Fátima	São Luis	Nossa Senhora de Fátima	F	C	2015-05-10	MA		1
126	ANTONIO OLIVEIRA MARQUES	RUA HURBANO PINHEIRO	Fátima	São Luis	Nossa Senhora de Fátima	M	C	1941-08-12	MA		1
127	LACIVENE TAVARES RABELO	2º TRAVESSA DO MERCADO	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1944-09-26	MA		1
81	MARIA GORETTE GOMES	TV NEIVA MOREIRA 16	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1966-04-26	MA		1
128	MARIA DE LOURDES SOUSA	RUA NEWTON BELLO 109	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1968-01-11	MA		1
129	JUSTINA MARIA PEREIRA LEITE	RUA DOM PEDRO II 108	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1940-01-21	MA		1
130	RAYMUNDA LIMA GOMES	RUA PAULO FRONTIM	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1943-08-30	MA		1
131	JOAQUINA MARIA DA CONCEICAO LUSTOSA	2º TRAVESSA D PEDRO II	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1941-01-15	MA		1
132	HILDA DA CONCEICAO LUSTOSA	TRAVESSA DOM PEDRO II	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1981-06-07	MA		1
133	CLARICE RIBEIRO CAMPOS	RUA DAGMAR DESTERRO	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1951-10-13	MA		1
134	ELISABETH MAURILIA PAIXAO	RUA 1º DE JANEIRO 35	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1939-09-13	MA		1
135	JOANA AMORIM SOUSA TELES	RUA PAULO FRONTIN, 140	Fátima	São Luis	Nossa Senhora de Fátima	F	V	1941-09-28	MA		1
136	DENISE DO NASCIMENTO SILVA	RUA NOVA REPUBLICA QD 01 N 20A	BOM JESUS	São Luis	Nossa Senhora de Fátima	F	S	1980-10-04	MA		1
137	MARIA DE JESUS PEREIRA DE CASTRO	TRAV HUGO DA CUNHA MACHADO	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1944-01-09	MA		1
138	MARIA DO CARMO PENA NINA	RUA PROJETADA 22	AREINHA	SAO LUIS	Nossa Senhora de Fátima	F	C	1959-04-12	MA		1
139	MARIA RUTH TORRES PIMENTA	1 TRV MANOEL RIBEIRO	FATIMA	SAO LUIS	Nossa Senhora de Fátima	F	S	1956-01-28	MA		1
142	ERIVALDO SOUSA TELES	RUA PAULO FRONTIM N140	Fátima	São Luis	Nossa Senhora de Fátima	F	\N	1964-11-13	MA		1
144	LIVIA REGINA SANTOS DE CASTRO	II TRAVESSA JOAO VIEIRA FILHO N46	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1981-11-16	MA		1
145	MARINEIDE GOUVEIA COSTA	RUA 07 DE SETEMBRO	Fátima	São Luis	Nossa Senhora de Fátima	F	V	1952-03-14	MA		1
146	FLORACI DE JESUS COSTA FERREIRA	RUA JOSE SARNEY 30A	Fátima	São Luis	Nossa Senhora de Fátima	F	V	1951-05-02	MA		1
147	NADJA DE LOURDES COSTA CANTANHEDE	RUA D PEDRO I 183	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1993-07-06	MA		1
149	EREMITA PEREIRA MENDES	RUA DEP JOSE RIOS 253	Fátima	São Luis	Nossa Senhora de Fátima	F	V	1929-10-19	MA		1
150	DEUZUITA DA SILVA NASCIMENTO	RUA DEPUTADO JOSE RIOS N44	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1939-12-25	MA		1
151	MARIA DA CONCEIÇÃO ARAUJO COELHO	RUA JOSE SARNEY 50	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1952-09-03	MA		1
152	MARIA ROCRINDA AMORIM OLIVEIRA	RUA MARLEY SARNEY ,9	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1939-08-16	MA		1
153	LOURDIMAR CARDOSO BALDEZ	RUA DOM PEDRO II,204	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1950-05-13	MA		1
154	TORQUATRO BRAGA AMORIM OLIVEIRA	RUA MARLEY SARNEY,9	Fátima	São Luis	Nossa Senhora de Fátima	M	S	1974-08-05	MA		1
155	GILDILENE CARDOSO BALDEZ NASCIMENTO	RUA DOM PEDRO II  337	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1972-10-19	MA		1
156	LYS FATIMA BOTELHO PEREIRA LEMOS	RUA 13 Q-021 ,25	ANGELIM	São Luis	Nossa Senhora de Fátima	F	C	1982-05-19	MA		1
165	EDNA CRISTINA GARCIA AQUINO	RUA DAGMAR DESTERRO 33	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1960-07-19	MA		1
158	JOSE BENEDITO ARANHA LEMOS JUNIOR	RUA 13,QD.21,25	ANGELIM	São Luis	Nossa Senhora de Fátima	M	C	1983-02-09	MA		1
159	Dailene dos Santos Rego	Rua General Tarssio Fragoso 46	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1992-06-19	MA		1
160	Marcelo Amaral Amorim	RUA DEP JOSE RIOS 232	Fátima	São Luis	Nossa Senhora de Fátima	M	S	1970-02-02	MA		1
161	MARIA EDNEUDA PEREIRA DIAS	TRAVESSA DO MERCADO 10	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1971-06-26	MA		1
162	CARLOS EDUARDO PEREIRA CONCEIÇÃO	RUA DEPUTADO JOSE RIOS,196	Fátima	São Luis	Nossa Senhora de Fátima	M	C	1981-03-06	MA		1
163	FLAVIA DE SOUSA COSTA	RUA PROFESSORA MATA ROMA,111	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1978-11-05	MA		1
164	PAULA FRANCINE TE DE OLIVEIRA	RUA NELTON BELO,200	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1985-05-09	MA		1
166	GERTRUDES FERREIRA SILVA	RUA MARANHAO SOBRINHO 119	Fátima	São Luis	Nossa Senhora de Fátima	M	C	1953-11-15	MA		1
167	MARIA DA PIEDADE BARBOSA	RUA DA UNIAO 141	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1962-06-09	MA		1
168	MARIA DE JESUS DA SILVA	RUA PROFESSOR MATA ROMA	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1953-03-01	MA		1
169	MAYANA GREICE ANDRADE DE AGUIAR	RUA INACIO RAPOSO 185	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1989-01-26	MA		1
170	HERCULES ANTONIO MALHEIROS NUNES	Rua Dom Pedro I, 134	Fátima	São Luis	Nossa Senhora de Fátima	M	C	1966-10-06	MA		1
171	MARIA APARECIDA PEREIRA SANTOS	RUA DEP. JOAO HENRIQUE 411	Fátima	São Luis	Nossa Senhora de Fátima	F	V	1945-12-24	MA		1
172	DEILSON DE SA LEITE	RUA PROFESSOR MATA ROMA 122	Fátima	São Luis	Nossa Senhora de Fátima	M	C	1990-03-01	MA		1
173	MAGDA OLINDA MALHEIROS NUNES	Rua Ademar de Barros numero 231/A	fÁTIMA	SÃO LUIS	fÁTIMA	F	C	1965-11-21	MA		1
174	Maria das Dores da Silva Soares	Rua Nossa Senhora Aparecida Nº 06	fÁTIMA	São Luis	Nossa Senhora de Fátima	F	C	1954-02-11	MA		1
175	IRANILDE PENHA LINDOSO	RUA NOSSA SENHORA APARECIDA QD.L 32	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1952-12-17	MA		1
176	CARLOS ALBERTO MOUZINHO	RUA NEWTON BELO 132	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1960-07-14	MA		1
177	VERA LUCIA ARAUJO	RUA NEWTON BELO 132	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1966-10-06	MA		1
178	MARIS AUREA FURTADO	RUA NOSSO SENHORA DE FÁTIMA Nº 105 A	FÁTIMA	SÃO LUIS	FÁTIMA	F	C	1942-01-15	MA		1
291	MARIA JOSE SOUZA	RUA INÁCIO RAPOSO QUADRA C, 2	FÁTIMA	SÃO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1933-11-11	MA		1
180	GRACIMAR DURANS DINIZ	PRIMEIRA TRAVESSA JOSÉ SARNEY Nº 03A	FÁTIMA	SÃO LUIS	FÁTIMA	F	C	1957-12-05	MA		1
181	TAMASIA ALVES PEREIRA	RUA PAULO FRONTIM Nº 20	FÁTIMA	SÃO LUIS	FÁTIMA	F	C	1959-12-31	MT		1
182	FRANCISCA MARTINS DOS SNTOS	\N	FÁTIMA	SÃO LUIS	FÁTIMA	F	S	1930-11-28	MA		1
183	Alessandra Soraya Cunha Ferreira	Rua Ademar de Barros 482	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	S	1978-06-25	MA		1
18	Domingas do Espirito Santo Silva	Rua Professor Mata Roma, N 77	Fátima	São Luis	\N	M	\N	1955-05-29	MA		1
185	MARISE MESQUITA FERREIRA	RUA PROFESSORA ZILA PAZ	FÁTIMA	São Luis	Nossa Senhora de Fátima	F	C	1944-11-06	MA		1
186	ZALEA FERREIRA DE JESUS	R ADEMAR DE BARROS	FÁTIMA	São Luis	Nossa Senhora de Fátima	F	S	1944-05-22	MA		1
187	IZABEL CUTRIM DA SILVA	RUA  MACEIO	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	C	1950-07-07	MA		1
188	MARIANE MARTINS SILVA	RUA MACEIO	FÁTIMA	São Luis	Nossa Senhora de Fátima	F	S	2001-09-10	MA		1
189	CAISSA JULIANA SILVA SOUSA	RUA 1º DE JANEIRO	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	S	1992-10-24	MA		1
190	MARIA DO ROSARIO PINHEIRO LEMOS	RUA JOSIAS CUNHA , Nº 23	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1999-10-29	MA		1
191	MARIA IRENE DA SILVA COSTA	RUA ADEMAR DE BARROS ,392	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	C	1952-01-04	MA		1
192	MARIA JOSE DOS SANTOS	RUA NEUTOW BELO, 287	FÁTIMA	São Luis	Nossa Senhora de Fátima	F	S	1939-08-27	MA		1
315	SALUTIANA PERREIRA	RUA PAULO FRONTIM 28B	FÁTIMA	SÃO LUIS	FATIMA	M	C	1963-07-18	MA		1
194	MARIA DA CONCEICAO DE SOUZA MELO	RUA ADEMAR DE BARROS 160	FÁTIMA	São Luis	Nossa Senhora de Fátima	F	C	1937-08-17	MA		1
184	MARIA DA CONCEICAO LOIOLA DOS SANTOS	RUA PAULO FRONTIN 139 A	FÁTIMA	São Luis	Nossa Senhora de Fátima	F	V	1946-11-13	MA		1
63	Terezinha de Jesus Bezerra	Rua Dom Pedro II, 203	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1948-02-15	MA		1
102	DEUSEDINA MARCELO COSTA	RUA PROFESSOR ZILA PAZ 63	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1954-12-31	MA		1
196	ELENILDES DOS SANTOS FIGUEIREDO	AVENIDA EDSON BRANDAO	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1976-09-27	MA		1
197	GRUPO DE ORAÇÃO DEUS SEJA LOUVADO	RUA NEWTON BELLO	Fátima	São Luis	Nossa Senhora de Fátima	F	S	2016-04-06	MA		1
201	VERONICA DE SOUSA PEREIRA	RUA DG RAMOS MARTINS	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	C	1912-12-11	MA		1
202	MARIA DA CONCEICAO ARAUJO COELHO	RUA JOSE SARNEY 50	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	V	1952-09-03	MA		1
203	ANTONIO PAULO ROCHA	RUA NEUTOW BELO 118	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	M	S	1939-09-05	MA		1
204	SEBASTIANA CANTANHEDE SANTOS	RUA HUGO DA CUNHA MACHADO CASA 01	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	S	1962-01-20	MA		1
205	ODILA VIEIRA SALLES	RUA 06 DE JANEIRO 10	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	V	1939-11-02	MA		1
206	FRANCIELMA OLIVEIRA VITORINO DE ASSUNÇÃO	RUA ADEMAR DE BARROS 420	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	S	1976-01-09	MA		1
207	Raimunda Martins Araujo	RUA PROFESSOR ZILA PAES Nº12	fatima	SÃO LUIS	FÁTIMA	F	C	1944-10-30	MA		1
208	RAIMUNDA NONATA SOUSA	RUA 1º DE JANEIRO,N5	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	C	1951-03-16	MA		1
209	EREMITA PRUDENCIA PEREIRA	RUA DEPUTADO JOSE RIOS N 253	fatima	São Luis	Nossa Senhora de Fátima	F	C	1929-10-18	MA		1
210	JOSE DE JESUS LIMA CAMPOS	RUA NEIVA MOREIRA,N97	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	C	1952-06-15	MA		1
211	MARIA MADALENA BARBOSA BARROS	RUA DA UNIÃO ,N159	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	C	1959-07-19	MA		1
212	LUCIANA DE JESUS MORAES	RUA DA UNIÃO,N 125	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	C	1959-07-19	MA		1
213	SONIA MARIA MOUZINHO	2 TV BOA ESPERANCA 8B	FÁTIMA	São Luis	Nossa Senhora de Fátima	F	S	1962-12-04	MA		1
214	FRANCISCO CHAVES DOS SANTOS	\N	FÁTIMA	SÃO LUÍS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	M	\N	1957-03-16	MA		1
215	MARIA DA CONCEIÇÃO PINHEIRO GARCIA	\N	FÁTIMA	SÃO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1956-05-05	MA		1
216	MARIA DOMINGAS MENDONÇA MENDES	QUINTA TRAVESSA MACEIÓ, 49	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	C	1955-06-05	MA		1
217	SANDRA REGINA RODRIGUES PEREIRA	RUA PAULO FRONTIM	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	S	1969-02-24	MA		1
218	RENILDE TRINDADE FRAZAO	\N	FÁTIMA	SÃO LUIS	FÁTIMA	F	C	1972-02-21	MA		1
219	LASARO NASCIMENTO PENHA	\N	FÁTIMA	SÃO LUIS	FÁTIMA	M	C	1959-12-17	MA		1
220	IRACEMA AMORIM MELO DINIZ	RUA JOSE SARNEY, Nº 42	FÁTIMA	SÃO LUÍS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	C	1974-08-27	MA		1
221	MARIA LINA CONCEIÇÃO DE SOUSA	RUA HUGO DA CUNHA MACHADO, 210	FÁTIMA	SÃO LUÍS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1939-09-23	MA		1
222	JULIO CESAR DE SOUZA ARAUJO	1 TRAVESSA PRESIDENTE MÉDICI, 22	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	M	C	1969-06-10	MA		1
223	MAURINA MARTINS	RUA MACEIO, 332B	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	C	1962-11-09	MA		1
224	MARIA ASSENÇÃO CARDOSO MUNIZ	RUA PRIMEIRO DE JANEIRO, 25	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1959-05-12	MA		1
308	Fracema Amorim Melo Diniz	Rua José Sarney	FÁTIMA	São Luís	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	C	1974-07-28	MA		1
309	MARIA DA CONCEICAO PINHEIRO GARCIA	rua 7 de setembro, n° 129	FÁTIMA	São Luís	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1942-05-05	MA		1
227	BENEDITA ALVES DOS SANTOS	RUA INÁCIO RAPOSO, 69A	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1944-07-10	MA		1
228	ROSEMARY DE JESUS RIBEIRO AMORIM	RUA DO CORREIO Nº 17	Fátima	SÃO LUIS	FÁTIMA	F	S	1977-09-05	MA		1
229	RAIMUNDA CAMPOS NUNES	TERCEIRA TRAVESSA JOÃO VIERA FILHO, 49	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	S	1953-08-16	MA		1
230	MARIA DE JESUS SILVA DAMASCENO	RUA PROFESSOR MATA ROMA, 98	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	S	1973-04-20	MA		1
231	DEUSELINA PASCOAL PEREIRA	RUA NEIVA MOREIRA, 87	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	C	1947-07-06	MA		1
232	MARIA DA CONCEIÇÃO SERRA DOS PASSOS	RUA DO CORREIO, 20	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	S	1950-07-23	MA		1
233	EDINA COSTA DUARTE	RUA DOM PEDRO II, 256	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	S	1943-02-01	MA		1
234	AUGUSTINHO GONÇALVES DE FREITAS	RUA 6 DE JANEIRO, 8A	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	M	V	1926-10-11	MA		1
310	MARTINHA DE SOCORRO SOARES	\N	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	S	1960-04-10	MA		1
290	LURBEVALTO DOS SANTOS CUNHA	RUA HUGO CUNHA MACHADO N 66	FATIMA	SÃO LUIS	FATIMA	M	C	1977-11-14	MA		1
237	ROSA MARIA SILVA FONSECA	RUA INÁCIO RAPOSO, 123	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	D	1947-04-19	MA		1
238	SANDRA MARIA MENDES CARNEIRO	RUA DO UNIÃO	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	\N	1958-02-23	MA		1
239	ISABEL COSTA SILVA	RUA 42 QUADRA 68, CASA 3	AREINHA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1939-09-01	MA		1
240	DULCE CORDEIRO CASTRO	RUA NOSSA SENHORA APARECIDA	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	S	1956-02-01	MA		1
241	KESIA OLINDA MORAIS OLIVEIRA	RUA DA UNIÃO, 75A	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	S	1977-12-16	MA		1
242	NATALIA ESTER CUNHA	RUA N SRA DE FATIMA 125	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	S	1990-05-06	MA		1
243	ALFREDO DUVAL SANTOS DA ROCHA	RUA INCIO RAPOSO	FÁTIMA	SÃO LUIS	FÁTIMA	M	C	1978-10-16	MA		1
245	VERA LUCIA FONSECA RIBEIRO	RUA JOSÉ RIOS	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	C	1955-06-29	MA		1
246	ZOZIMA DE FÁTIMA SANTANA OLIVEIRA	RUA NOSSA SENHORA APARECIDA, 17	AREINHA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	D	1954-03-30	MA		1
247	MARIA EVA SERRA MADEIRA	RUA NOSSA SENHORA APARECIDA, QUADRA J, 20	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	C	1957-04-06	MA		1
248	MARIA DE LOURDES COSTA GOMES	TV N SRA DAS GRACAS 09	AREINHA	SAO LUIS	Nossa Senhora de Fátima	F	S	1961-03-24	MA		1
249	TEREZINHA DA CRUZ RIBEIRO	RUA DAGMAR DESTERRO, 8	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1942-05-22	MA		1
250	JORGE ANTONIO NOGUEIRA	RUA DAGMAR DESTERRO, 8	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	M	S	1969-08-11	MA		1
251	MIRIAM SERRA FREITAS	RUA DO CORREIO, 20	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	S	1956-02-20	MA		1
252	WASHINGTON LUIS MOUZINHO DE JESUS	SEGUNDA TRAVESSA BOA ESPERANÇA N 08 A	FÁTIMA	São Luis	Nossa Senhora de Fátima	M	C	1985-06-01	MA		1
253	MARIA CECILIA FERREIRA PINHEIRO	RUA HUGO DA CUNHA MACHADO, 51	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	C	1966-12-20	MA		1
254	MARINALVA RODRIGUES BATISTA	RUA DEPUTADO JOÃO HENRIQUE 422	FATIMA	SÃO LUIS	Nossa Senhora de Fátima	F	C	2012-12-10	MA		1
255	MARINALVA RODRIGUES BATISTA	RUA DEPUTADO JOÃO HENRIQUE 422	FATIMA	SÃO LUIS	Nossa Senhora de Fátima	F	C	2019-10-12	MA		1
292	RAIMUNDA CONCEICAO BIRINO	RUA 6 DE JANEIRO 4	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1957-09-22	MA		1
257	SILVANA MARIA COELHO GALDEZ	Rua Newton Bello, N 155, Bairro de Fátima	FÁTIMA	São Luis	Nossa Senhora de Fátima	F	S	1944-09-26	MA		1
258	MARIA ISABEL CAMARA SANTOS	TRAVESSA DO MERCADO 105	FÁTIMA	São Luis	Nossa Senhora de Fátima	F	C	1966-07-02	MA		1
259	MARCIELMA DO CARMO MARCELO COSTA	RUA PROFESSORA ZILA PAZ 63	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	S	1979-07-16	MA		1
260	FRANCISCO CARLOS MELO	RUA DA GUIMAR DESTERRO 56	FÁTIMA	São Luis	Nossa Senhora de Fátima	M	C	1968-08-01	MA		1
261	JORGENILSON FERREIRA RODRIGUES	RUA NEWTON BELLO, 100	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	M	C	1976-04-21	MA		1
311	FLAVIA REGINA SOUSA MARTINS TAVARES	RUA 1 DE JANEIRO, 05	FÁTIMA	SÃO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	C	1972-09-23	MA		1
312	MARIA DO LIVRAMENTO FERREIRA	RUA NOSSA SENHORA DE FATIMA 109	FÁTIMA	São Luís	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1942-05-23	MA		1
264	PETRONILIO LUIS DAMASCENO	RUA PROFESSOR MATA ROMA, 98	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	M	C	1941-03-10	MA		1
265	MARIA DA GRAÇA SILVA DAMASCENO	RUA PROFESSOR MATA ROMA, 98	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	\N	1937-12-09	MA		1
293	FRANCIMARY BALDES DOS SANTOS	R MACEIO 280 B	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1969-09-13	MA		1
313	JOANA RAMALHO	RUA URBANO PINHEIRO 71	FÁTIMA	São Luís	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	C	1958-06-20	MA		1
268	MARINALVA SILVA SUATHE	1ª TRAV. NOSSA SENHORA DE FÁTIMA, 66	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	C	1957-02-06	MA		1
269	MARIA DA CONCEIÇÃO PIEDADE PEREIRA	2 TRAV. DO MERCADO, 183	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	S	1943-05-22	MA		1
270	TEREZINHA DE JESUS COSTA REIS	RUA ADEMAR DE BARROS	FÁTIMA	SÃO LUIS	FÁTIMA	F	V	1935-01-22	MA		1
271	RAIMUNDA SEBASTIANA LIMA	\N	FÁTIMA	SÃO LUIS	FÁTIMA	F	\N	1944-10-30	MA		1
272	DOMINGOS KETSON SANTOS LEITE	RUA 6 DE JANEIRO, 9A	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	M	S	1982-06-17	MA		1
273	ANTONIO JOSE DA ROCHA SILVA	RUA ADEMAR  DE BARROS, 350	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	M	C	1965-03-18	MA		1
274	ROSINEIA RODDRIGUES ALVES	\N	FÁTIMA	SÃO LUIS	FÁTIMA	F	C	1975-11-26	MA		1
275	ANA DELIZIA SOARES MARTINS	RUA PROFESSORA ZILA PAZ, 46	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	C	1972-09-20	MA		1
314	JANAYA DO ROSÁRIO RAMOS	RUA D"GUIMAE DESTERRO N150	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	S	1991-10-23	MA		1
277	IRENE DA SILVA	RUA BOA ESPERANÇA, 50	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	S	1966-09-02	MA		1
278	EMANUELLE DIAS MATOS	RUA 4 QUADRA 2A, CASA 5	RESIDENCIAL COPENHAGUE	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	C	1982-09-02	MA		1
279	SILVIMAR VIEIRA FERREIRA	RUA DEP. JOSE RIOS, 36	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1949-02-02	MA		1
355	Vanusa Alves	Rua Maceio, N 68	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	S	1974-02-16	MA		1
280	TANIA MARIA MENDES ARAUJO	RUA DEP. JOSE RIOS, 267	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	D	1961-11-10	MA		1
281	MARIA CELESTE SANTOS CARDOSO	RUA APOLÔNIA PINTO, 50	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1936-02-15	MA		1
282	ELIZABETH ROSA COSTA LEITE	Rua Tiradentes, 06	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	C	1952-11-05	MA		1
283	MARIA VITORIA SOUSA LIMA	\N	FÁTIMA	SÃO LUIS	FÁTIMA	F	\N	1948-06-12	MA		1
284	TOMASIA ALVES PEREIRA	tTRAV PAULO FRONTIN, 20	FÁTIMA	São Luis	Nossa Senhora de Fátima	F	C	1959-12-31	MA		1
285	MARIA DO SOCORRO PINTO PINHEIRO	RUA APOLONIO PINTO	FÁTIMA	SÃO LUIS	FÁTIMA	M	C	1952-12-19	MA		1
286	VERONICA CARVALHO PACHECO	RUA AGOSTINHO TORRES, 399	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1948-12-24	MA		1
287	MARIA CATARINA BOGEA GOMES	\N	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	S	1955-04-30	MA		1
294	LUCIANO BOAS RODRIGUES	R HUGO DA CUNHA MACHADO 08	FÁTIMA	São Luis	Nossa Senhora de Fátima	M	S	1995-01-24	MA		1
295	Kesio Dickson F. Estrela	Travessa Hugo da Cunha Machado, 06	Fátima	São Luis	Nossa Senhora de Fátima	M	C	1985-10-21	MA		1
296	Josenilde Lopes Sousa Estrela	Rua Hugo da Cunha Machado, 06	Fátima	São Luis	Nossa Senhora de Fátima	F	C	1979-04-08	MA		1
297	Adriana Alves Ferreira	Trav. Neiva Moreira , 14	Fatima	SÃO LUIS	Nossa Senhora de Fátima	F	S	1970-03-01	MA		1
298	MARIA JOSE SOARES FIGUEREDO	RUA DAGMAR DO DESTERRO, 266	FÁTIMA	SÃO LUIS	FÁTIMA	M	C	1974-01-19	MA		1
299	GIZELLE BARROS NASCIMENTO DOS SANTOS	RUA DUQUE BACELAR Q 57	TURU	SÃO LUIS	Nossa Senhora de Fátima	F	S	1975-04-21	\N		1
300	MARIA RAIMUNDA PINHEIRO PALAVRA	RUA O6 DE JANEIRO 01	FATIMA	SÃO LUIS	Nossa Senhora de Fátima	F	S	1964-06-05	MA		1
301	RAIMUNDA DE JESUS PINTO MEIRELLES	dr newton belo	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1935-01-01	MA		1
303	JAYNARA CRISTINA CABRAL LOPES	RUA DA CERÂMICA, 491,	JOÃO PAULO	SÃO LUIS	Nossa Senhora de Fátima	F	C	1988-08-21	MA		1
304	WISLON DA HORA DOS SANTOS	RUA PROJETADA, 29	AREINHA	SÃO LUIS	Nossa Senhora de Fátima	M	C	1981-10-30	MA		1
305	CONCEICAO DE MARIA SANTOS RIBEIRO	RUA HUGO DA CUNHA MACHADO, N 30	FATIMA	SÃO LUIS	FATIMA	F	C	1978-09-07	MA		1
267	MARIA DE FATIMA CUTRIM COSTA	4ª TRAVESSA DAGMAR DO DESTERRO, 20 A	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	S	1955-02-17	MA		1
316	Elvira de Jesus Reis Costa	Rua dos Lampiões, 73	FATIMA	São Luis	Nossa Senhora de Fátima	F	D	1966-09-28	MA		1
276	JOSE MARIA E TEREZINHA AMORIM	RUA DEP JOSE RIOS, 232	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	M	C	1932-05-05	MA		1
342	Rayane Trindade Amorim	RUA INACIO RAPOSO 20	FÁTIMA	São Luis	Nossa Senhora de Fátima	F	S	1991-09-03	MA		1
235	Francielma Oliveira Assunao	Rua Newton Bello, N 155, Bairro de Fátima	FÁTIMA	São Luis	Nossa Senhora de Fátima	F	S	1975-11-26	MA		1
225	Katia Cilene Nogueira	RUA PROFESSORA ZILA PAZ, n 84	fatima	São Luis	Nossa Senhora de Fátima	F	D	1969-01-27	MA		1
262	Maria Dos Anjos Oliveira	1 travessa neiva moreira 18	FÁTIMA	SÃO LUIS	\N	F	C	2050-10-02	MA		1
226	Sidney Eder Silva Teles	rua maceio n 81	fatima	São Luis	Nossa Senhora de Fátima	M	C	1985-01-04	MA		1
302	GERSON CIRIO PINTO MEIRELLES	dr newton belo	FÁTIMA	SAO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	M	S	1980-01-01	MA		1
317	IVALDO SILVA SANTOS	RUA V9, BLOCO 1 AP 102	PARQUE SHALOM	SÃO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	M	C	1969-10-17	MA		1
318	MARIA OLIVA LEITE BRANDÃO	RUA PROFESSOR MATA ROMA, 229	FÁTIMA	SÃO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1945-11-14	MA		1
319	MARIA EMILIA PEREIRA RODRIGUES	RUA JOSÉ  SARNEY, 10	FÁTIMA	SÃO LUÍS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1943-05-06	MA		1
320	MARIA CELESTE DOS SANTOS SILVA	QUARTA TRAVESSA DAGMAR DESTERRO , 135	FÁTIMA	SÃO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1946-05-19	MA		1
321	POLIANA ANDREIA BOGEA GOMES LEITE	2 TV MANOEL RIBEIRO 10 A	FÁTIMA	SÃO LUIS	FÁTIMA	F	C	1981-05-17	MA		1
322	MARCOS AURÉLIO MARANHÃO ALVES	RUA DE JADES MARTINS N 20	FATIMA	SÃO LUIS	Nossa Senhora de Fátima	M	\N	1983-11-11	MA		1
323	MARIA DA CONCEIÇÃO FERNANDES ALVES	RUA BERREDO LISBOA, 130	FÁTIMA	SÃO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1947-02-16	MA		1
324	REGINALDO NASCIMENTO COSTA	1 TV DAGMAR DESTERRO 21	Fátima	São Luis	Nossa Senhora de Fátima	M	S	1988-07-21	MA		1
325	RAIMUNDA RODRIGUES	RUA HUGO DA CUNHA MACHADO, 144	FÁTIMA	SÃO LUÍS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	S	1941-03-16	MA		1
326	ROGERIO SANTOS SOUSA	RUA TRANCREDO NEVES N5	AREINHA	São Luis	Nossa Senhora de Fátima	M	S	1976-10-23	MA		1
327	HERCULANA DEBORA COSTA LEITE	2 TRAVESSA DEJARDE RAMOS MARTINS, 03	FÁTIMA	SÃO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1936-08-12	MA		1
328	ESMERALDINA CASTRO	2 TRAVESSA DJAIR MARTINS, QUADRA H, 3	FÁTIMA	SÃO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	V	1950-07-09	MA		1
329	MARIA DA GRAÇA DE JESUS DIAS	RUA PROFESSOR MATA ROMA, 225	FÁTIMA	SÃO LUIS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	S	1945-12-23	MA		1
330	KATIA REGINA DE JESUS SILVA MACHADO	VILA JACKSON	FATIMA	SÃO LUIS	FÁTIMA	F	C	1975-01-01	MA		1
331	ESTER RAPOSO SILVA	Rua Newton Bello, N 155, Bairro de Fátima	FATIMA	SÃO LUIS	FÁTIMA	F	C	1975-11-26	MA		1
332	MARILDA ABREU RODRIGUES	TRAVESSA DO MERCADO, 95	FÁTIMA	SÃO LUÍS	Paróquia Nossa Senhora de Fátima	F	S	1963-07-14	MA		1
333	DEUS SEJA LOUVADO	Rua Newton Bello, N 155, Bairro de Fátima	FATIMA	SÃO LUIS	Nossa Senhora de Fátima	M	\N	1997-05-20	MA		1
334	JOSEILTON DA SILVA	RUA BOA ESPERANÇA, 50	FÁTIMA	SÃO LUÍS	Paróquia Nossa Senhora de Fátima	M	S	1992-03-01	MA		1
335	JOSIRENE BRASIL SILVA	RUA BOA ESPERANÇA, 50	FÁTIMA	SÃO LUIS	Paróquia Nossa Senhora de Fátima	F	S	1986-08-01	MA		1
338	FABIANA MORAES LIMA	5ª TRAVESSA JOÃO VIEIRA FILHO, 53	FÁTIMA	SÃO LUÍS	Paróquia Nossa Senhora de Fátima	F	C	1982-05-10	MA		1
339	REGINA COELHO JARDIM	5ª TRAVESSA DAGMAR	FÁTIMA	SÃO LUÍS	Paróquia Nossa Senhora de Fátima	F	S	1974-10-13	MA		1
340	MARINETE SANTOS	RUA APOLÔNIA PINTO, 136	FÁTIMA	São Luís	Paróquia Nossa Senhora de Fátima	F	S	2010-11-12	MA		1
341	MARIA DOS ANJOS OLIVEIRA	XXXXXXXXXXXX	FÁTIMA	SÃO LUÍS	Paróquia Nossa Senhora de Fátima	F	V	1954-12-21	MA		1
343	GEOVANE BATISTA LIMA DE ALMEIDA	\N	\N	São Luis	\N	M	C	1970-07-05	MA		1
344	EVANDO DE CARVALHO E SALES	AVENIDA EDSON BRANDÃO - ECO PARQUE 3 BLOCO 6 104	CUTIM ANIL	SÃO LUÍS	PARÓQUIA NOSSA SENHORA DE FÁTIMA	M	C	1978-09-20	MA		1
345	MARIA DO SOCORRO BIRINO PINHEIRO	RUA 6 DE JANEIRO, 13	FÁTIMA	São Luís	PARÓQUIA NOSSA SENHORA DE FÁTIMA	F	C	1945-10-19	MA		1
346	Kassiana Ribeiro Meireles	SÃO LUIS	FATIMA	São Luis	Nossa Senhora de Fátima	F	S	1984-11-22	MA		1
347	CARLA ANDREA AZEVEDO DOS SANTOS	AV DR CARLOS MACIEIRA QD 33 CASA 26	COROADO	São Luis	\N	F	S	1984-10-06	MA		1
348	MARIA LUZIA P FONSECA	XXXXXXXXXXXXXXXX	FÁTIMA	São Luís	Paróquia Nossa Senhora de Fátima	F	C	1969-02-08	MA		1
349	Maria José Freitas Abreu	Rua Paulo Frontin 17-A	FATIMA	SÃO LUIS	Nossa Senhora de Fátima	F	S	1980-02-24	MA		1
350	Rafael Barros Nascimento	Rua Hugo da cunha machado 111	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1981-07-14	MA		1
351	Rafael Barros Nascimento	Rua Hugo da cunha machado 111	Fátima	São Luis	Nossa Senhora de Fátima	F	S	1981-07-14	MA		1
352	FLOR DE LIZ FARIAS FRAZÃO	1ª TRAVESSA NEIVA MOREIRA, 05	FÁTIMA	SÃOL UÍS	Paróquia Nossa Senhora de Fátima	F	V	1947-01-26	MA		1
353	Nycia Karoline Mendes Araujo	RUA DEP JOSE RIOS 267	FÁTIMA	São Luis	Nossa Senhora de Fátima	F	S	1983-08-03	MA		1
354	NOEMIA MARIA SOUSA DE LIMA	RUA NOSSA SENHORA DE FÁTIMA Nº129	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	S	1961-04-29	MA		1
356	sebastiana gomes	Rua Newton Bello, N 158, Bairro de Fátima	fatima	São Luis	Nossa Senhora de Fátima	F	C	1959-04-27	MA		1
357	Iracilda Mota Botelho	RUA DAGMAR DESTERRO 156	FATIMA	SÃO LUIS	FATIMA	F	C	1971-10-21	MA		1
358	Ana Luiza de Oliveira Ribeiro	Rua dos Lampioes 143	FÁTIMA	SÃO LUIS	Nossa Senhora de Fátima	F	S	1987-04-20	MA		1
17	Gilvania Helena Silva Portela Borges	Rua Deputado Jose Mario, N 62	Fátima	São Luis	\N	F	C	1981-03-20	MA		1
\.


--
-- Name: dizimo_dizimista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('dizimo_dizimista_id_seq', 358, true);


--
-- Data for Name: dizimo_dizimo; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY dizimo_dizimo (id, valor, referencia, dizimista_id, usuario_id, cadastrado_em, paroquia_id, data) FROM stdin;
72	100.00	2018-12-01	98	2	2018-12-23 07:54:53.178702-03	1	2018-12-23
73	150.00	2018-12-01	70	2	2018-12-23 07:55:32.665534-03	1	2018-12-23
74	50.00	2018-11-01	100	2	2018-12-23 08:07:37.495103-03	1	2018-12-23
75	10.00	2018-06-01	99	2	2018-12-23 08:09:09.362688-03	1	2018-12-23
64	5.00	2019-01-01	93	2	2018-12-20 19:17:26.950032-03	1	2018-12-20
964	150.00	2019-06-01	53	2	2019-06-02 07:24:42.495975-03	1	2019-06-02
76	10.00	2018-07-01	99	2	2018-12-23 08:09:26.256098-03	1	2018-12-23
77	10.00	2018-08-01	99	2	2018-12-23 08:09:33.411669-03	1	2018-12-23
78	10.00	2018-09-01	99	2	2018-12-23 08:09:41.583929-03	1	2018-12-23
79	10.00	2018-10-01	99	2	2018-12-23 08:09:47.95781-03	1	2018-12-23
80	10.00	2018-11-01	99	2	2018-12-23 08:09:54.480455-03	1	2018-12-23
81	10.00	2018-12-01	99	2	2018-12-23 08:10:05.070569-03	1	2018-12-23
82	30.00	2018-12-01	8	2	2018-12-23 08:11:00.910982-03	1	2018-12-23
965	150.00	2019-06-01	70	2	2019-06-02 07:31:06.776871-03	1	2019-06-02
84	50.00	2018-11-01	102	2	2018-12-23 19:33:05.017532-03	1	2018-12-23
85	50.00	2018-12-01	102	2	2018-12-23 19:33:16.90106-03	1	2018-12-23
86	170.00	2018-12-01	111	2	2018-12-23 20:36:33.869665-03	1	2018-12-23
87	200.00	2018-12-01	112	3	2018-12-26 19:35:58.545863-03	1	2018-12-26
88	30.00	2018-11-01	39	2	2018-12-27 19:14:06.137194-03	1	2018-12-27
104	100.00	2019-01-01	98	2	2019-01-06 07:16:50.985532-03	1	2019-01-06
89	30.00	2018-12-01	39	2	2018-12-27 19:14:26.11598-03	1	2018-12-27
105	20.00	2019-01-01	81	2	2019-01-06 07:26:01.565806-03	1	2019-01-06
106	150.00	2019-01-01	53	2	2019-01-06 07:27:05.513483-03	1	2019-01-06
39	50.00	2018-11-01	79	2	2018-12-16 07:45:36.98624-03	1	2018-12-16
90	50.00	2018-12-01	79	2	2018-12-30 07:02:07.618941-03	1	2018-12-30
65	30.00	2018-12-01	94	2	2018-12-20 19:17:56.751586-03	1	2018-12-20
46	40.00	2018-12-01	84	2	2018-12-16 07:47:32.609466-03	1	2018-12-16
53	50.00	2018-12-01	37	2	2018-12-16 08:11:58.967546-03	1	2018-12-16
48	100.00	2018-12-01	85	2	2018-12-16 07:48:04.796172-03	1	2018-12-16
51	20.00	2018-12-01	81	2	2018-12-16 07:49:00.652818-03	1	2018-12-16
52	150.00	2018-12-01	88	2	2018-12-16 08:11:20.985468-03	1	2018-12-16
55	10.00	2018-12-01	89	2	2018-12-16 18:35:37.15578-03	1	2018-12-16
63	5.00	2018-12-01	93	2	2018-12-20 19:17:15.738761-03	1	2018-12-20
62	30.00	2018-12-01	92	2	2018-12-18 19:09:32.808463-03	1	2018-12-18
67	20.00	2018-12-01	35	2	2018-12-20 19:56:03.805032-03	1	2018-12-20
59	20.00	2018-12-01	74	2	2018-12-18 18:56:57.352047-03	1	2018-12-18
58	50.00	2018-12-01	57	2	2018-12-16 19:18:05.048245-03	1	2018-12-16
57	50.00	2018-12-01	90	2	2018-12-16 19:17:25.909289-03	1	2018-12-16
36	20.00	2018-12-01	78	2	2018-12-06 19:18:40.788026-03	1	2018-12-06
37	20.00	2018-12-01	77	2	2018-12-06 19:19:02.537824-03	1	2018-12-06
38	50.00	2018-12-01	51	2	2018-12-16 07:23:40.071766-03	1	2018-12-16
107	200.00	2019-01-01	123	2	2019-01-06 07:28:04.279134-03	1	2019-01-06
40	50.00	2018-12-01	80	2	2018-12-16 07:45:55.330064-03	1	2018-12-16
41	20.00	2018-12-01	82	2	2018-12-16 07:46:13.217876-03	1	2018-12-16
68	60.00	2018-11-01	19	2	2018-12-20 19:58:51.2645-03	1	2018-12-20
35	25.00	2018-11-01	76	2	2018-11-27 20:02:22.150263-03	1	2018-11-27
25	10.00	2018-11-01	68	2	2018-11-18 07:52:14.221111-03	1	2018-11-18
56	95.00	2018-11-01	42	2	2018-12-16 19:17:02.901861-03	1	2018-12-16
47	40.00	2018-11-01	84	2	2018-12-16 07:47:38.366839-03	1	2018-12-16
27	150.00	2018-11-01	70	2	2018-11-18 07:57:04.666677-03	1	2018-11-18
45	30.00	2018-11-01	83	2	2018-12-16 07:47:07.78861-03	1	2018-12-16
50	30.00	2018-11-01	86	2	2018-12-16 07:48:36.981315-03	1	2018-12-16
66	15.00	2018-11-01	95	2	2018-12-20 19:20:34.717813-03	1	2018-12-20
29	50.00	2018-11-01	4	2	2018-11-23 18:57:44.561631-03	1	2018-11-23
30	20.00	2018-11-01	72	2	2018-11-23 19:04:27.215437-03	1	2018-11-23
54	10.00	2018-11-01	89	2	2018-12-16 18:35:26.50431-03	1	2018-12-16
6	20.00	2018-11-01	18	2	2018-11-02 18:23:47.774524-03	1	2018-11-02
15	10.00	2018-11-01	48	2	2018-11-15 19:15:34.453595-03	1	2018-11-15
31	50.00	2018-11-01	51	3	2018-11-25 07:12:57.148536-03	1	2018-11-25
32	50.00	2018-11-01	73	3	2018-11-25 07:44:34.654975-03	1	2018-11-25
61	30.00	2018-11-01	92	2	2018-12-18 19:09:08.620303-03	1	2018-12-18
33	20.00	2018-11-01	74	3	2018-11-25 07:45:17.084068-03	1	2018-11-25
21	10.00	2018-11-01	69	2	2018-11-18 07:51:35.228815-03	1	2018-11-18
44	30.00	2018-10-01	83	2	2018-12-16 07:47:00.768626-03	1	2018-12-16
5	20.00	2018-10-01	18	2	2018-11-02 18:23:37.855687-03	1	2018-11-02
8	50.00	2018-10-01	36	2	2018-11-09 18:55:41.974792-03	1	2018-11-09
10	95.00	2018-10-01	42	2	2018-11-11 19:27:39.693532-03	1	2018-11-11
11	15.00	2018-10-01	43	2	2018-11-11 19:47:11.645648-03	1	2018-11-11
91	30.00	2019-01-01	52	2	2018-12-30 07:08:00.849617-03	1	2018-12-30
92	45.00	2019-01-01	113	2	2018-12-30 07:14:51.303328-03	1	2018-12-30
93	20.00	2019-01-01	114	2	2018-12-30 07:17:50.617514-03	1	2018-12-30
94	100.00	2018-08-01	115	2	2018-12-30 07:22:51.039994-03	1	2018-12-30
95	50.00	2019-01-01	116	2	2018-12-30 07:28:29.58803-03	1	2018-12-30
96	80.00	2018-11-01	71	2	2018-12-30 07:52:28.298958-03	1	2018-12-30
97	10.00	2018-12-01	117	2	2018-12-30 08:23:41.606405-03	1	2018-12-30
98	15.00	2018-12-01	118	2	2018-12-30 08:24:10.544989-03	1	2018-12-30
99	20.00	2018-11-01	120	2	2018-12-30 08:51:39.913682-03	1	2018-12-30
100	10.00	2018-12-01	121	2	2018-12-30 08:53:19.573659-03	1	2018-12-30
101	200.00	2018-12-01	119	2	2018-12-30 08:55:17.801966-03	1	2018-12-30
108	100.00	2019-01-01	67	2	2019-01-06 07:28:57.381772-03	1	2019-01-06
109	20.00	2019-01-01	78	2	2019-01-06 07:29:56.425619-03	1	2019-01-06
110	40.00	2018-12-01	127	2	2019-01-06 07:30:57.419284-03	1	2019-01-06
111	50.00	2019-01-01	126	2	2019-01-06 07:31:49.226078-03	1	2019-01-06
112	30.00	2019-01-01	125	2	2019-01-06 07:33:02.464589-03	1	2019-01-06
113	25.00	2018-12-01	124	2	2019-01-06 07:33:59.551745-03	1	2019-01-06
114	30.00	2019-01-01	129	2	2019-01-06 07:38:38.040897-03	1	2019-01-06
115	2.50	2018-07-01	128	2	2019-01-06 07:39:54.527998-03	1	2019-01-06
116	2.50	2018-08-01	128	2	2019-01-06 07:40:06.194423-03	1	2019-01-06
117	2.50	2018-09-01	128	2	2019-01-06 07:40:14.776877-03	1	2019-01-06
118	2.50	2018-10-01	128	2	2019-01-06 07:40:24.281118-03	1	2019-01-06
119	2.50	2018-11-01	128	2	2019-01-06 07:40:35.371373-03	1	2019-01-06
120	2.50	2018-12-01	128	2	2019-01-06 07:40:44.758991-03	1	2019-01-06
121	20.00	2018-12-01	130	2	2019-01-06 07:49:14.141277-03	1	2019-01-06
122	25.00	2018-10-01	131	2	2019-01-06 07:50:10.787446-03	1	2019-01-06
123	25.00	2018-11-01	131	2	2019-01-06 07:50:53.157544-03	1	2019-01-06
124	25.00	2018-12-01	131	2	2019-01-06 07:51:20.908107-03	1	2019-01-06
125	10.00	2018-10-01	132	2	2019-01-06 07:53:29.774197-03	1	2019-01-06
126	10.00	2018-11-01	132	2	2019-01-06 07:54:30.925843-03	1	2019-01-06
127	10.00	2018-12-01	132	2	2019-01-06 07:55:28.597303-03	1	2019-01-06
128	10.00	2018-12-01	69	2	2019-01-06 08:37:08.722803-03	1	2019-01-06
129	10.00	2018-12-01	68	2	2019-01-06 08:38:35.928601-03	1	2019-01-06
130	10.00	2019-01-01	68	2	2019-01-06 08:39:25.665221-03	1	2019-01-06
131	10.00	2019-01-01	69	2	2019-01-06 08:40:15.963601-03	1	2019-01-06
132	10.00	2018-12-01	136	2	2019-01-06 08:42:23.422667-03	1	2019-01-06
14	10.00	2018-10-01	47	2	2018-11-15 19:11:43.966319-03	1	2018-11-15
20	10.00	2018-10-01	69	2	2018-11-18 07:51:28.053132-03	1	2018-11-18
24	10.00	2018-10-01	68	2	2018-11-18 07:52:07.121714-03	1	2018-11-18
28	80.00	2018-10-01	71	2	2018-11-18 08:01:25.511186-03	1	2018-11-18
34	25.00	2018-10-01	76	2	2018-11-27 20:01:17.610535-03	1	2018-11-27
1	30.00	2018-10-01	8	2	2018-10-28 08:02:42.060064-03	1	2018-10-28
49	30.00	2018-10-01	86	2	2018-12-16 07:48:31.300188-03	1	2018-12-16
60	30.00	2018-10-01	92	2	2018-12-18 19:08:40.487833-03	1	2018-12-18
7	60.00	2018-10-01	19	2	2018-11-02 18:27:42.124151-03	1	2018-11-02
43	30.00	2018-09-01	83	2	2018-12-16 07:46:54.711401-03	1	2018-12-16
19	10.00	2018-09-01	69	2	2018-11-18 07:51:19.810831-03	1	2018-11-18
26	10.00	2018-09-01	68	2	2018-11-18 07:54:15.287275-03	1	2018-11-18
42	30.00	2018-08-01	83	2	2018-12-16 07:46:46.337424-03	1	2018-12-16
23	10.00	2018-08-01	68	2	2018-11-18 07:51:55.915285-03	1	2018-11-18
18	10.00	2018-08-01	69	2	2018-11-18 07:51:11.181685-03	1	2018-11-18
13	25.00	2018-08-01	46	2	2018-11-15 19:08:32.801232-03	1	2018-11-15
22	10.00	2018-07-01	68	2	2018-11-18 07:51:50.111625-03	1	2018-11-18
12	25.00	2018-07-01	46	2	2018-11-15 19:08:12.271885-03	1	2018-11-15
4	35.00	2018-07-01	17	2	2018-11-02 18:13:33.309961-03	1	2018-11-02
17	10.00	2018-07-01	69	2	2018-11-18 07:51:02.076822-03	1	2018-11-18
3	35.00	2018-06-01	17	2	2018-11-02 18:13:16.60101-03	1	2018-11-02
2	35.00	2018-05-01	17	2	2018-11-02 18:12:42.874667-03	1	2018-11-02
133	25.00	2019-01-01	130	2	2019-01-06 08:45:14.906042-03	1	2019-01-06
134	35.00	2018-12-01	137	2	2019-01-06 08:57:47.831121-03	1	2019-01-06
135	10.00	2018-02-01	140	2	2019-01-08 19:14:35.143935-03	1	2019-01-08
136	10.00	2018-03-01	140	2	2019-01-08 19:15:35.638725-03	1	2019-01-08
137	10.00	2019-01-01	141	2	2019-01-08 19:20:50.276134-03	1	2019-01-08
138	20.00	2019-01-01	77	2	2019-01-08 19:22:55.05513-03	1	2019-01-08
139	30.00	2019-01-01	134	2	2019-01-08 19:26:03.809986-03	1	2019-01-08
140	30.00	2019-01-01	142	2	2019-01-08 19:30:29.393238-03	1	2019-01-08
141	50.00	2018-12-01	62	2	2019-01-08 19:32:45.277215-03	1	2019-01-08
142	20.00	2019-01-01	74	2	2019-01-08 19:35:44.564075-03	1	2019-01-08
143	50.00	2019-01-01	144	2	2019-01-08 19:40:03.140624-03	1	2019-01-08
144	50.00	2019-01-01	46	2	2019-01-08 19:43:58.105579-03	1	2019-01-08
145	50.00	2019-01-01	48	2	2019-01-08 19:46:16.74051-03	1	2019-01-08
146	20.00	2019-01-01	145	2	2019-01-09 19:00:31.936341-03	1	2019-01-09
147	50.00	2019-01-01	64	2	2019-01-09 19:06:53.478107-03	1	2019-01-09
148	20.00	2019-01-01	147	2	2019-01-09 19:10:49.957034-03	1	2019-01-09
83	50.00	2018-11-01	101	2	2018-12-23 19:32:40.944287-03	1	2018-12-23
149	50.00	2018-12-01	101	2	2019-01-11 19:10:58.049386-03	1	2019-01-11
150	50.00	2019-01-01	80	2	2019-01-13 07:14:56.715938-03	1	2019-01-13
151	150.00	2019-01-01	85	2	2019-01-13 07:17:23.999003-03	1	2019-01-13
152	100.00	2019-01-01	150	2	2019-01-13 07:29:10.980312-03	1	2019-01-13
153	30.00	2019-01-01	7	2	2019-01-13 07:48:25.26107-03	1	2019-01-13
154	10.00	2019-01-01	60	2	2019-01-13 07:49:47.231319-03	1	2019-01-13
155	15.00	2019-01-01	152	2	2019-01-13 07:54:40.445864-03	1	2019-01-13
156	80.00	2019-01-01	153	2	2019-01-13 08:00:35.734549-03	1	2019-01-13
157	15.00	2019-01-01	154	2	2019-01-13 08:04:06.842875-03	1	2019-01-13
158	20.00	2019-01-01	61	2	2019-01-13 08:04:36.346164-03	1	2019-01-13
159	20.00	2019-01-01	151	2	2019-01-13 08:05:11.651509-03	1	2019-01-13
160	10.00	2019-01-01	155	2	2019-01-13 08:15:49.170007-03	1	2019-01-13
161	50.00	2019-01-01	156	2	2019-01-13 08:18:04.557339-03	1	2019-01-13
162	50.00	2019-01-01	158	2	2019-01-13 08:20:53.063355-03	1	2019-01-13
163	150.00	2019-01-01	88	2	2019-01-13 08:21:14.865866-03	1	2019-01-13
164	50.00	2018-12-01	159	2	2019-01-13 19:17:52.939842-03	1	2019-01-13
165	50.00	2018-12-01	160	2	2019-01-13 19:19:58.126943-03	1	2019-01-13
166	20.00	2018-03-01	161	2	2019-01-13 20:03:46.651242-03	1	2019-01-13
167	300.00	2018-12-01	162	2	2019-01-15 18:57:27.520587-03	1	2019-01-15
168	20.00	2019-01-01	163	2	2019-01-15 19:27:33.005715-03	1	2019-01-15
169	50.00	2019-01-01	164	2	2019-01-15 19:41:32.194885-03	1	2019-01-15
170	20.00	2018-11-01	122	2	2019-01-16 19:11:42.163778-03	1	2019-01-16
171	20.00	2018-12-01	122	2	2019-01-16 19:12:00.236268-03	1	2019-01-16
172	20.00	2019-01-01	72	2	2019-01-17 18:43:16.868954-03	1	2019-01-17
173	50.00	2019-01-01	4	2	2019-01-17 18:43:42.668148-03	1	2019-01-17
174	50.00	2019-01-01	51	2	2019-01-20 06:59:09.621571-03	1	2019-01-20
175	90.00	2019-01-01	104	2	2019-01-20 07:01:18.067609-03	1	2019-01-20
193	300.00	2019-01-01	162	2	2019-01-22 19:02:56.664876-03	1	2019-01-22
176	100.00	2018-09-01	115	2	2019-01-20 07:02:45.051738-03	1	2019-01-20
177	10.00	2019-01-01	165	2	2019-01-20 07:12:13.785642-03	1	2019-01-20
178	20.00	2019-01-01	82	2	2019-01-20 07:13:43.061506-03	1	2019-01-20
179	50.00	2019-01-01	166	2	2019-01-20 07:16:41.623125-03	1	2019-01-20
180	50.00	2019-02-01	116	2	2019-01-20 07:38:41.031831-03	1	2019-01-20
181	80.00	2018-12-01	71	2	2019-01-20 07:40:00.035553-03	1	2019-01-20
182	20.00	2019-01-01	167	2	2019-01-20 08:22:45.48528-03	1	2019-01-20
183	20.00	2019-02-01	167	2	2019-01-20 08:24:18.914614-03	1	2019-01-20
184	50.00	2019-01-01	168	2	2019-01-20 18:43:53.036519-03	1	2019-01-20
185	30.00	2019-01-01	94	2	2019-01-20 18:45:18.313491-03	1	2019-01-20
186	20.00	2019-01-01	169	2	2019-01-20 18:54:23.326425-03	1	2019-01-20
187	20.00	2019-01-01	56	2	2019-01-20 18:56:52.267373-03	1	2019-01-20
188	30.00	2019-01-01	170	2	2019-01-20 19:09:37.661731-03	1	2019-01-20
189	30.00	2019-01-01	171	2	2019-01-20 19:17:28.694966-03	1	2019-01-20
190	95.00	2018-12-01	42	2	2019-01-20 19:19:36.716753-03	1	2019-01-20
191	50.00	2019-01-01	90	2	2019-01-20 19:21:07.087751-03	1	2019-01-20
192	50.00	2019-01-01	172	2	2019-01-20 19:31:20.728923-03	1	2019-01-20
194	120.00	2019-01-01	111	2	2019-01-22 19:17:42.316634-03	1	2019-01-22
195	50.00	2019-01-01	73	2	2019-01-22 19:43:33.590265-03	1	2019-01-22
196	150.00	2019-01-01	173	2	2019-01-24 19:01:57.015772-03	1	2019-01-23
197	160.00	2019-01-01	174	2	2019-01-24 19:04:04.675381-03	1	2019-01-23
198	20.00	2019-01-01	175	2	2019-01-25 19:40:10.80671-03	1	2019-01-25
199	20.00	2019-01-01	176	2	2019-01-25 19:47:45.205339-03	1	2019-01-25
200	15.00	2019-01-01	177	2	2019-01-25 19:52:33.180775-03	1	2019-01-25
201	150.00	2019-01-01	70	2	2019-01-27 07:13:06.161596-03	1	2019-01-27
202	30.00	2019-01-01	8	2	2019-01-30 18:48:58.89781-03	1	2019-01-30
203	100.00	2019-01-01	183	2	2019-01-30 18:49:51.758116-03	1	2019-01-30
204	30.00	2019-01-01	107	3	2019-01-30 19:36:44.986564-03	1	2019-01-30
205	25.00	2019-01-01	76	4	2019-02-03 07:03:12.916483-03	1	2019-02-01
206	15.00	2019-01-01	184	4	2019-02-03 07:07:54.00403-03	1	2019-02-01
207	15.00	2018-12-01	184	4	2019-02-03 07:08:16.410492-03	1	2019-02-01
208	20.00	2019-01-01	18	4	2019-02-03 07:09:55.406931-03	1	2019-02-01
209	20.00	2019-02-01	18	4	2019-02-03 07:10:23.728065-03	1	2019-02-01
210	10.00	2019-01-01	135	4	2019-02-03 07:10:58.871137-03	1	2019-02-01
211	10.00	2019-02-01	135	4	2019-02-03 07:14:13.320897-03	1	2019-02-01
212	20.00	2019-01-01	35	4	2019-02-03 07:17:15.854752-03	1	2019-02-01
213	10.00	2019-02-01	155	4	2019-02-03 07:17:41.195573-03	1	2019-02-01
214	15.00	2019-01-01	185	4	2019-02-03 07:19:34.272254-03	1	2019-02-01
215	15.00	2019-02-01	185	4	2019-02-03 07:19:52.345238-03	1	2019-02-01
216	30.00	2019-02-01	170	4	2019-02-03 07:21:21.755956-03	1	2019-02-03
217	50.00	2019-01-01	57	4	2019-02-03 07:22:41.889972-03	1	2019-02-03
218	150.00	2019-02-01	53	4	2019-02-03 07:25:04.224-03	1	2019-02-03
219	10.00	2019-02-01	165	4	2019-02-03 07:26:15.146946-03	1	2019-02-03
220	80.00	2019-02-01	153	4	2019-02-03 07:27:13.127727-03	1	2019-02-03
221	25.00	2019-01-01	124	4	2019-02-03 07:28:31.948044-03	1	2019-02-03
222	200.00	2019-02-01	123	4	2019-02-03 07:29:41.653817-03	1	2019-02-03
223	20.00	2019-02-01	114	4	2019-02-03 07:31:29.508046-03	1	2019-02-03
224	30.00	2019-02-01	52	4	2019-02-03 07:33:26.960088-03	1	2019-02-03
225	100.00	2019-02-01	67	4	2019-02-03 07:35:09.042659-03	1	2019-02-03
226	100.00	2019-02-01	150	4	2019-02-03 07:36:23.531842-03	1	2019-02-03
227	15.00	2019-02-01	152	4	2019-02-03 07:47:55.915403-03	1	2019-02-03
228	15.00	2019-02-01	154	4	2019-02-03 07:49:47.642516-03	1	2019-02-03
229	15.00	2019-01-01	118	4	2019-02-03 07:51:30.971453-03	1	2019-02-03
230	10.00	2019-01-01	186	4	2019-02-03 07:55:28.727741-03	1	2019-02-03
231	35.00	2019-01-01	137	4	2019-02-03 08:12:37.731279-03	1	2019-02-03
232	40.00	2019-02-01	187	4	2019-02-03 08:16:52.677595-03	1	2019-02-03
233	20.00	2019-01-01	188	4	2019-02-03 08:19:09.809861-03	1	2019-02-03
234	20.00	2019-01-01	189	4	2019-02-03 08:21:02.774261-03	1	2019-02-03
235	20.00	2019-02-01	189	4	2019-02-03 08:21:40.809209-03	1	2019-02-03
236	50.00	2019-01-01	160	2	2019-02-03 18:55:31.919108-03	1	2019-02-03
237	20.00	2019-01-01	63	2	2019-02-03 19:01:46.412328-03	1	2019-02-03
238	50.00	2019-02-01	46	2	2019-02-03 19:05:04.43855-03	1	2019-02-03
239	50.00	2019-02-01	48	2	2019-02-03 19:06:12.646734-03	1	2019-02-03
240	100.00	2019-01-01	102	2	2019-02-03 19:30:09.774025-03	1	2019-02-03
241	100.00	2019-01-01	194	2	2019-02-03 19:39:57.944929-03	1	2019-02-03
242	100.00	2019-02-01	194	2	2019-02-03 19:41:14.602356-03	1	2019-02-03
243	50.00	2019-01-01	192	2	2019-02-03 19:43:22.082298-03	1	2019-02-03
244	40.00	2019-01-01	191	2	2019-02-03 19:44:22.049579-03	1	2019-02-03
245	100.00	2019-01-01	190	2	2019-02-03 19:45:26.077084-03	1	2019-02-03
246	200.00	2019-02-01	119	2	2019-02-03 19:47:16.349739-03	1	2019-02-03
247	50.00	2019-02-01	64	2	2019-02-05 18:46:56.73866-03	1	2019-02-05
248	30.00	2019-02-01	94	2	2019-02-05 18:52:23.052334-03	1	2019-02-05
249	50.00	2019-02-01	195	2	2019-02-05 19:12:25.892316-03	1	2019-02-05
250	100.00	2018-12-01	196	2	2019-02-05 20:06:08.442076-03	1	2019-02-05
251	50.00	2019-01-01	14	2	2019-02-05 20:08:02.667583-03	1	2019-02-05
252	20.00	2018-01-01	197	2	2019-02-05 20:10:47.763745-03	1	2019-02-05
253	20.00	2018-06-01	163	2	2019-02-06 19:54:49.625032-03	1	2019-01-06
254	50.00	2019-01-01	38	2	2019-02-08 18:57:31.361146-03	1	2019-02-08
255	30.00	2019-02-01	134	2	2019-02-08 18:59:18.404424-03	1	2019-02-08
256	50.00	2019-02-01	198	2	2019-02-08 19:29:46.08781-03	1	2019-02-08
257	10.00	2019-01-01	199	2	2019-02-10 07:05:13.067685-03	1	2019-02-10
258	10.00	2019-02-01	199	2	2019-02-10 07:06:32.604579-03	1	2019-02-10
259	20.00	2019-02-01	200	2	2019-02-10 07:15:27.480711-03	1	2019-02-10
260	100.00	2019-02-01	98	2	2019-02-10 07:19:37.545046-03	1	2019-02-10
261	20.00	2019-02-01	82	2	2019-02-10 07:22:49.826165-03	1	2019-02-10
262	20.00	2019-02-01	78	2	2019-02-10 07:26:02.46308-03	1	2019-02-10
263	20.00	2019-02-01	145	2	2019-02-10 07:27:09.455041-03	1	2019-02-10
264	10.00	2018-10-01	201	2	2019-02-10 07:37:06.963567-03	1	2019-02-10
265	10.00	2018-11-01	201	2	2019-02-10 07:37:58.716499-03	1	2019-02-10
266	10.00	2018-12-01	201	2	2019-02-10 07:38:39.048119-03	1	2019-02-10
267	15.00	2019-02-01	202	2	2019-02-10 07:45:54.111505-03	1	2019-02-10
268	50.00	2019-02-01	126	2	2019-02-10 07:49:20.00847-03	1	2019-02-10
269	100.00	2018-10-01	115	2	2019-02-10 07:52:10.480679-03	1	2019-02-10
270	25.00	2019-01-01	203	2	2019-02-10 07:57:08.137856-03	1	2019-02-10
271	20.00	2018-12-01	204	2	2019-02-10 08:16:51.42566-03	1	2019-02-10
272	10.00	2018-12-01	205	2	2019-02-10 08:57:33.416537-03	1	2019-02-10
273	10.00	2019-01-01	205	2	2019-02-10 08:58:27.081728-03	1	2019-02-10
274	10.00	2019-02-01	205	2	2019-02-10 08:59:16.603016-03	1	2019-02-10
275	30.00	2019-02-01	142	2	2019-02-10 09:01:53.270432-03	1	2019-02-10
276	40.00	2019-01-01	206	2	2019-02-10 09:08:59.901659-03	1	2019-02-10
277	100.00	2019-03-01	208	2	2019-02-10 19:08:26.646999-03	1	2019-02-10
278	50.00	2019-02-01	159	2	2019-02-10 19:12:01.707602-03	1	2019-02-10
279	70.00	2019-01-01	50	2	2019-02-10 19:14:24.9505-03	1	2019-02-10
280	70.00	2019-02-01	50	2	2019-02-10 19:16:21.205801-03	1	2019-02-10
281	50.00	2019-01-01	101	2	2019-02-10 19:18:38.310294-03	1	2019-02-10
282	50.00	2019-02-01	209	2	2019-02-10 19:26:05.266585-03	1	2019-02-10
283	100.00	2019-02-01	148	2	2019-02-10 19:28:08.698204-03	1	2019-02-10
284	90.00	2019-02-01	104	2	2019-02-10 19:30:19.280201-03	1	2019-02-10
285	50.00	2019-02-01	144	2	2019-02-10 19:32:26.578937-03	1	2019-02-10
286	100.00	2019-01-01	210	2	2019-02-10 20:01:42.904896-03	1	2019-02-10
287	50.00	2019-01-01	62	2	2019-02-12 18:55:49.209732-03	1	2019-02-12
288	20.00	2019-02-01	77	2	2019-02-12 18:58:08.771726-03	1	2019-02-12
289	20.00	2019-02-01	74	2	2019-02-12 18:59:59.38517-03	1	2019-02-12
292	50.00	2019-02-01	212	2	2019-02-12 20:06:42.951292-03	1	2019-02-12
293	100.00	2019-02-01	211	2	2019-02-12 20:08:16.796678-03	1	2019-02-12
291	20.00	2019-04-01	167	2	2019-02-12 19:47:59.424759-03	1	2019-02-12
290	20.00	2019-03-01	167	2	2019-02-12 19:46:39.821933-03	1	2019-02-12
294	20.00	2019-02-01	213	2	2019-02-14 19:11:22.200769-03	1	2019-02-13
295	100.00	2019-02-01	183	2	2019-02-14 19:20:39.5357-03	1	2019-02-13
296	15.00	2019-01-01	214	5	2019-02-15 09:43:22.82404-03	1	2019-02-15
297	15.00	2019-02-01	214	5	2019-02-15 09:45:14.82413-03	1	2019-02-15
298	15.00	2019-03-01	214	5	2019-02-15 10:19:18.611557-03	1	2019-02-15
299	10.00	2019-01-01	47	5	2019-02-15 16:19:09.067735-03	1	2019-02-15
300	25.00	2019-02-01	130	4	2019-02-15 18:59:29.984487-03	1	2019-02-15
301	50.00	2019-02-01	168	4	2019-02-15 19:02:21.509852-03	1	2019-02-15
302	300.00	2019-02-01	215	5	2019-02-16 10:39:59.436582-03	1	2019-02-16
303	100.00	2019-02-01	216	5	2019-02-16 10:43:23.351567-03	1	2019-02-16
304	30.00	2019-02-01	125	2	2019-02-17 07:02:29.99116-03	1	2019-02-17
305	50.00	2019-01-01	217	2	2019-02-17 07:11:52.239723-03	1	2019-02-13
306	50.00	2019-02-01	217	2	2019-02-17 07:12:49.601981-03	1	2019-02-13
307	10.00	2018-11-01	218	2	2019-02-17 07:23:48.250738-03	1	2019-02-13
308	10.00	2018-12-01	218	2	2019-02-17 07:24:07.514462-03	1	2019-02-13
309	30.00	2019-01-01	219	2	2019-02-17 07:28:08.942771-03	1	2019-02-13
310	50.00	2019-02-01	80	2	2019-02-17 07:58:10.316833-03	1	2019-02-17
311	30.00	2019-02-01	40	2	2019-02-17 18:53:36.402312-03	1	2019-02-17
312	25.00	2019-01-01	133	2	2019-02-17 18:56:26.902676-03	1	2019-02-17
313	25.00	2019-02-01	133	2	2019-02-17 18:58:49.195979-03	1	2019-02-17
314	30.00	2019-02-01	106	2	2019-02-17 19:15:24.309776-03	1	2019-02-17
315	50.00	2019-02-01	90	2	2019-02-17 19:22:29.638201-03	1	2019-02-17
316	10.00	2019-02-01	220	5	2019-02-19 09:10:39.513232-03	1	2019-02-19
317	50.00	2019-02-01	164	5	2019-02-19 17:04:32.57446-03	1	2019-02-19
318	10.00	2019-01-01	221	5	2019-02-20 14:52:02.791846-03	1	2019-02-20
319	10.00	2019-02-01	221	5	2019-02-20 14:55:38.960344-03	1	2019-02-20
320	10.00	2019-03-01	221	5	2019-02-20 14:59:41.658015-03	1	2019-02-20
321	100.00	2019-01-01	223	5	2019-02-21 10:55:16.250941-03	1	2019-02-21
322	60.00	2019-02-01	54	5	2019-02-21 15:04:46.408447-03	1	2019-02-21
323	20.00	2019-02-01	72	4	2019-02-21 18:54:19.779667-03	1	2019-02-21
324	50.00	2019-02-01	4	4	2019-02-21 18:57:43.173591-03	1	2019-02-21
325	150.00	2019-02-01	88	4	2019-02-21 19:40:56.123228-03	1	2019-02-21
326	300.00	2019-02-01	162	5	2019-02-22 17:34:03.574004-03	1	2019-02-22
327	20.00	2019-02-01	224	5	2019-02-23 10:15:39.939748-03	1	2019-02-23
328	20.00	2019-02-01	56	7	2019-02-24 06:58:05.918387-03	1	2019-02-24
329	50.00	2019-02-01	51	7	2019-02-24 07:07:56.785816-03	1	2019-02-24
330	150.00	2019-02-01	85	7	2019-02-24 07:13:09.704947-03	1	2019-02-24
331	20.00	2019-02-01	225	7	2019-02-24 07:26:06.885991-03	1	2019-02-24
332	20.00	2019-02-01	69	7	2019-02-24 07:27:45.509072-03	1	2019-02-24
339	50.00	2019-02-01	227	5	2019-02-26 15:38:36.80524-03	1	2019-02-26
333	80.00	2019-01-01	71	7	2019-02-24 07:45:58.645303-03	1	2019-02-24
334	50.00	2019-02-01	226	2	2019-02-24 08:53:16.739276-03	1	2019-02-24
335	15.00	2019-02-01	182	2	2019-02-24 09:00:22.013301-03	1	2019-02-24
336	50.00	2019-02-01	100	2	2019-02-24 19:09:21.680921-03	1	2019-02-24
337	50.00	2019-02-01	107	2	2019-02-24 19:33:23.69568-03	1	2019-02-24
966	100.00	2019-06-01	150	2	2019-06-02 07:33:13.570431-03	1	2019-06-02
340	50.00	2019-02-01	228	2	2019-02-26 18:59:28.229044-03	1	2019-02-25
341	10.00	2019-02-01	141	2	2019-02-26 19:04:26.972273-03	1	2019-02-26
342	10.00	2019-03-01	141	2	2019-02-26 19:08:11.761098-03	1	2019-02-26
343	70.00	2019-02-01	229	5	2019-02-27 08:48:29.31123-03	1	2019-02-27
344	100.00	2019-02-01	230	5	2019-02-27 10:00:34.217883-03	1	2019-02-27
345	50.00	2019-02-01	231	5	2019-02-27 10:08:13.50801-03	1	2019-02-27
346	50.00	2019-01-01	232	5	2019-02-27 14:40:06.77654-03	1	2019-02-27
347	50.00	2019-02-01	232	5	2019-02-27 14:41:54.398525-03	1	2019-02-27
348	20.00	2019-01-01	233	5	2019-02-27 14:49:37.418914-03	1	2019-02-27
349	20.00	2019-02-01	233	5	2019-02-27 14:50:36.80255-03	1	2019-02-27
350	10.00	2019-02-01	234	5	2019-02-27 16:01:37.361758-03	1	2019-02-27
351	10.00	2019-03-01	234	5	2019-02-27 16:02:50.013208-03	1	2019-02-27
352	30.00	2019-02-01	8	2	2019-02-27 19:15:19.680895-03	1	2019-02-27
353	40.00	2019-02-01	206	2	2019-02-27 19:45:48.177681-03	1	2019-02-27
354	40.00	2019-02-01	127	2	2019-02-27 20:08:54.695807-03	1	2019-02-27
355	90.00	2019-03-01	237	5	2019-02-28 08:59:32.322196-03	1	2019-02-28
356	15.00	2019-01-01	222	5	2019-03-01 08:58:00.738547-03	1	2019-03-01
357	15.00	2019-02-01	222	5	2019-03-01 09:00:35.670184-03	1	2019-03-01
358	100.00	2019-02-01	238	5	2019-03-01 09:08:35.280464-03	1	2019-03-01
359	60.00	2019-03-01	239	5	2019-03-01 14:15:07.311389-03	1	2019-03-01
360	50.00	2019-03-01	38	5	2019-03-01 14:37:07.759926-03	1	2019-03-01
361	50.00	2019-02-01	240	5	2019-03-01 14:51:22.510071-03	1	2019-03-01
362	30.00	2019-03-01	142	5	2019-03-02 10:38:36.422842-03	1	2019-03-02
363	50.00	2019-03-01	126	5	2019-03-02 11:27:37.881781-03	1	2019-03-02
364	80.00	2019-03-01	153	2	2019-03-03 06:52:20.740655-03	1	2019-03-03
365	50.00	2019-03-01	159	2	2019-03-03 07:05:05.764468-03	1	2019-03-03
366	30.00	2019-03-01	52	2	2019-03-03 07:06:10.431275-03	1	2019-03-03
367	50.00	2019-03-01	226	2	2019-03-03 07:09:03.648165-03	1	2019-03-03
368	100.00	2019-01-01	242	2	2019-03-03 07:14:59.37785-03	1	2019-03-03
369	100.00	2019-02-01	242	2	2019-03-03 07:15:42.450187-03	1	2019-03-03
370	15.00	2019-03-01	154	2	2019-03-03 07:17:04.29269-03	1	2019-03-03
371	15.00	2019-03-01	152	2	2019-03-03 07:18:26.608129-03	1	2019-03-03
372	50.00	2019-02-01	14	2	2019-03-03 07:20:04.524832-03	1	2019-03-03
373	45.00	2019-03-01	113	2	2019-03-03 07:25:47.986184-03	1	2019-03-03
375	25.00	2019-02-01	124	2	2019-03-03 07:56:35.069788-03	1	2019-03-03
374	20.00	2019-02-01	81	2	2019-03-03 07:55:10.012077-03	1	2019-03-03
376	150.00	2019-03-01	53	2	2019-03-03 08:01:18.707182-03	1	2019-03-03
378	20.00	2019-02-01	63	2	2019-03-06 18:35:59.555988-03	1	2019-03-06
379	50.00	2019-03-01	168	2	2019-03-06 18:38:27.768395-03	1	2019-03-06
380	10.00	2019-03-01	135	2	2019-03-06 18:41:43.086766-03	1	2019-03-06
381	4.00	2019-03-01	243	2	2019-03-06 18:59:32.246002-03	1	2019-03-06
382	130.00	2019-02-01	12	2	2019-03-06 19:10:46.778244-03	1	2019-03-06
383	130.00	2019-03-01	12	2	2019-03-06 19:18:19.315042-03	1	2019-03-06
377	50.00	2019-02-01	172	2	2019-03-06 18:33:06.619929-03	1	2019-03-06
385	100.00	2019-03-01	42	2	2019-03-06 20:50:06.585616-03	1	2019-03-06
386	25.00	2019-01-01	245	2	2019-03-06 21:02:27.06161-03	1	2019-03-06
387	25.00	2019-02-01	245	2	2019-03-06 21:03:26.479717-03	1	2019-03-06
388	50.00	2019-03-01	246	5	2019-03-07 09:18:34.892594-03	1	2019-03-07
389	60.00	2019-03-01	54	5	2019-03-07 15:06:16.074678-03	1	2019-03-07
390	20.00	2019-03-01	200	5	2019-03-07 15:35:49.854311-03	1	2019-03-07
391	160.00	2019-03-01	247	5	2019-03-07 16:34:52.563396-03	1	2019-03-07
392	30.00	2019-03-01	134	2	2019-03-07 18:50:58.177116-03	1	2019-03-07
393	50.00	2019-03-01	195	2	2019-03-07 19:04:55.978702-03	1	2019-03-07
394	20.00	2019-02-01	147	2	2019-03-07 19:21:53.347684-03	1	2019-03-07
395	20.00	2019-03-01	147	2	2019-03-07 19:22:37.996877-03	1	2019-03-07
396	50.00	2019-03-01	46	2	2019-03-07 19:30:22.652402-03	1	2019-03-07
397	50.00	2019-03-01	48	2	2019-03-07 19:32:56.925121-03	1	2019-03-07
398	20.00	2019-02-01	248	2	2019-03-07 19:57:18.951638-03	1	2019-03-07
399	40.00	2019-03-01	249	5	2019-03-08 08:37:24.441786-03	1	2019-03-08
400	50.00	2019-03-01	250	5	2019-03-08 08:38:50.48265-03	1	2019-03-08
401	15.00	2019-03-01	251	5	2019-03-08 14:37:38.256253-03	1	2019-03-08
402	25.00	2019-03-01	130	2	2019-03-08 19:05:37.925201-03	1	2019-03-08
403	50.00	2019-03-01	25	2	2019-03-08 19:08:49.461373-03	1	2019-03-08
404	200.00	2019-03-01	119	2	2019-03-08 19:10:24.95072-03	1	2019-03-08
405	10.00	2019-01-01	103	2	2019-03-08 19:12:05.657595-03	1	2019-03-08
406	10.00	2019-01-01	252	2	2019-03-08 19:17:42.400328-03	1	2019-03-08
407	150.00	2019-02-01	173	2	2019-03-08 19:21:33.314468-03	1	2019-03-08
408	170.00	2019-03-01	253	5	2019-03-09 09:40:05.499979-03	1	2019-03-09
410	20.00	2019-03-01	61	2	2019-03-10 07:04:48.078749-03	1	2019-03-10
409	20.00	2019-02-01	61	2	2019-03-10 07:03:55.006429-03	1	2019-03-10
411	10.00	2019-02-01	60	2	2019-03-10 07:10:44.672193-03	1	2019-03-10
412	10.00	2019-03-01	60	2	2019-03-10 07:11:44.617924-03	1	2019-03-10
426	60.00	2019-02-01	257	2	2019-03-10 07:40:04.725157-03	1	2019-03-10
414	100.00	2019-03-01	98	2	2019-03-10 07:15:38.551223-03	1	2019-03-10
415	200.00	2019-03-01	123	2	2019-03-10 07:16:51.972381-03	1	2019-03-10
416	10.00	2019-02-01	254	2	2019-03-10 07:22:27.989575-03	1	2019-03-10
417	10.00	2019-03-01	254	2	2019-03-10 07:22:53.162735-03	1	2019-03-10
418	25.00	2019-02-01	76	2	2019-03-10 07:24:20.548022-03	1	2019-03-10
419	25.00	2019-03-01	76	2	2019-03-10 07:25:56.055573-03	1	2019-03-10
420	20.00	2019-03-01	120	2	2019-03-10 07:27:59.583462-03	1	2019-03-10
421	20.00	2019-03-01	82	2	2019-03-10 07:29:08.454051-03	1	2019-03-10
422	10.00	2019-03-01	93	2	2019-03-10 07:30:12.304402-03	1	2019-03-10
423	20.00	2019-03-01	114	2	2019-03-10 07:31:57.639971-03	1	2019-03-10
424	20.00	2019-03-01	189	2	2019-03-10 07:33:04.468219-03	1	2019-03-10
425	15.00	2019-03-01	185	2	2019-03-10 07:36:09.789883-03	1	2019-03-10
970	30.00	2019-06-01	52	2	2019-06-02 07:52:25.824539-03	1	2019-06-02
451	40.00	2019-02-01	261	5	2019-03-12 09:24:42.883727-03	1	2019-03-12
428	10.00	2019-02-01	35	2	2019-03-10 07:44:01.226667-03	1	2019-03-10
429	10.00	2019-03-01	35	2	2019-03-10 07:45:12.348911-03	1	2019-03-10
452	40.00	2019-03-01	261	5	2019-03-12 09:26:00.10879-03	1	2019-03-12
427	10.00	2019-03-01	155	2	2019-03-10 07:41:25.827136-03	1	2019-03-10
430	150.00	2019-03-01	70	2	2019-03-10 07:50:47.35755-03	1	2019-03-10
431	150.00	2019-02-01	70	2	2019-03-10 07:52:21.26252-03	1	2019-03-10
432	50.00	2019-01-01	259	2	2019-03-10 08:00:14.313064-03	1	2019-03-10
433	50.00	2019-02-01	259	2	2019-03-10 08:02:33.820278-03	1	2019-03-10
434	20.00	2018-12-01	258	2	2019-03-10 08:03:56.868434-03	1	2019-03-10
435	20.00	2019-01-01	258	2	2019-03-10 08:05:15.829103-03	1	2019-03-10
436	20.00	2019-02-01	258	2	2019-03-10 08:05:53.760381-03	1	2019-03-10
437	20.00	2019-03-01	258	2	2019-03-10 08:06:18.743624-03	1	2019-03-10
438	20.00	2019-04-01	258	2	2019-03-10 08:06:47.957675-03	1	2019-03-10
439	20.00	2019-03-01	78	2	2019-03-10 08:08:21.198436-03	1	2019-03-10
440	100.00	2019-03-01	115	2	2019-03-10 08:09:30.12712-03	1	2019-03-10
441	10.00	2019-01-01	128	2	2019-03-10 08:11:00.938143-03	1	2019-03-10
442	10.00	2019-02-01	128	2	2019-03-10 08:11:20.596521-03	1	2019-03-10
443	10.00	2019-03-01	128	2	2019-03-10 08:11:46.254801-03	1	2019-03-10
444	10.00	2019-02-01	186	2	2019-03-10 08:20:02.058592-03	1	2019-03-10
445	15.00	2019-02-01	118	2	2019-03-10 08:21:29.614713-03	1	2019-03-10
446	100.00	2019-03-01	150	2	2019-03-10 08:22:22.269923-03	1	2019-03-10
447	15.00	2018-12-01	260	2	2019-03-10 08:27:28.446861-03	1	2019-03-10
448	15.00	2018-11-01	260	2	2019-03-10 08:29:02.160658-03	1	2019-03-10
449	20.00	2019-01-01	260	2	2019-03-10 08:30:12.330886-03	1	2019-03-10
450	50.00	2019-03-01	144	2	2019-03-10 08:33:45.02894-03	1	2019-03-10
453	10.00	2019-04-01	221	5	2019-03-12 09:38:45.87507-03	1	2019-03-12
454	10.00	2019-05-01	221	5	2019-03-12 09:40:24.965659-03	1	2019-03-12
455	10.00	2019-06-01	221	5	2019-03-12 09:41:50.109421-03	1	2019-03-12
456	10.00	2019-07-01	221	5	2019-03-12 09:42:46.836242-03	1	2019-03-12
457	10.00	2019-08-01	221	5	2019-03-12 09:43:27.46786-03	1	2019-03-12
458	10.00	2019-09-01	221	5	2019-03-12 09:46:47.274935-03	1	2019-03-12
459	10.00	2019-10-01	221	5	2019-03-12 09:47:31.128879-03	1	2019-03-12
460	10.00	2019-11-01	221	5	2019-03-12 09:48:06.758138-03	1	2019-03-12
461	10.00	2019-12-01	221	5	2019-03-12 09:48:53.800678-03	1	2019-03-12
462	10.00	2019-02-01	262	2	2019-03-12 18:59:18.152592-03	1	2019-03-13
463	50.00	2019-02-01	192	2	2019-03-12 19:01:21.444851-03	1	2019-03-12
464	20.00	2019-03-01	176	2	2019-03-12 19:02:19.900939-03	1	2019-03-12
465	20.00	2019-03-01	77	2	2019-03-12 19:04:05.278226-03	1	2019-03-12
466	50.00	2019-03-01	64	2	2019-03-12 19:05:23.152255-03	1	2019-03-12
467	50.00	2019-03-01	62	2	2019-03-12 19:06:28.740739-03	1	2019-03-12
468	20.00	2019-03-01	213	2	2019-03-12 19:07:45.363292-03	1	2019-03-12
469	100.00	2019-03-01	183	2	2019-03-12 19:34:50.939415-03	1	2019-03-12
470	60.00	2019-03-01	264	5	2019-03-13 08:29:23.960209-03	1	2019-03-13
471	50.00	2019-03-01	265	5	2019-03-13 08:30:29.704025-03	1	2019-03-13
472	50.00	2019-03-01	116	5	2019-03-13 08:33:54.035893-03	1	2019-03-13
473	40.00	2019-02-01	191	5	2019-03-13 09:43:27.637929-03	1	2019-03-13
474	50.00	2019-03-01	231	5	2019-03-13 10:03:50.919937-03	1	2019-03-13
475	25.00	2019-03-01	21	5	2019-03-13 11:10:54.672329-03	1	2019-03-13
476	30.00	2019-02-01	219	5	2019-03-13 11:33:12.787139-03	1	2019-03-13
477	50.00	2019-02-01	267	5	2019-03-13 11:49:36.850609-03	1	2019-03-13
478	30.00	2019-02-01	268	5	2019-03-14 08:57:31.22331-03	1	2019-03-14
479	50.00	2019-03-01	269	5	2019-03-14 09:35:37.270601-03	1	2019-03-14
480	15.00	2019-02-01	188	5	2019-03-14 16:08:22.946347-03	1	2019-03-14
481	40.00	2019-03-01	187	5	2019-03-14 16:11:14.90132-03	1	2019-03-14
482	20.00	2019-05-01	167	2	2019-03-14 19:26:33.601138-03	1	2019-03-14
483	30.00	2019-01-01	86	2	2019-03-14 19:34:40.712092-03	1	2019-03-14
484	30.00	2019-02-01	86	2	2019-03-14 19:35:04.262119-03	1	2019-03-14
485	30.00	2019-03-01	86	2	2019-03-14 19:35:30.327935-03	1	2019-03-14
486	30.00	2019-03-01	40	2	2019-03-14 19:38:05.361664-03	1	2019-03-13
487	30.00	2019-02-01	271	2	2019-03-14 19:46:26.928871-03	1	2019-03-13
488	500.00	2019-02-01	270	2	2019-03-14 19:48:25.711284-03	1	2019-03-13
489	100.00	2019-03-01	238	2	2019-03-14 19:49:04.131947-03	1	2019-03-13
490	100.00	2019-03-01	211	2	2019-03-14 19:50:02.174061-03	1	2019-03-13
491	20.00	2019-01-01	122	2	2019-03-14 19:50:56.588962-03	1	2019-03-13
492	50.00	2019-03-01	212	2	2019-03-14 19:53:32.781209-03	1	2019-03-13
493	100.00	2019-04-01	208	2	2019-03-14 19:54:46.157142-03	1	2019-03-13
494	20.00	2019-03-01	18	2	2019-03-14 19:55:31.735548-03	1	2019-03-13
495	30.00	2019-03-01	94	5	2019-03-15 16:13:23.672527-03	1	2019-03-15
496	10.00	2019-02-01	47	5	2019-03-15 16:41:50.217437-03	1	2019-03-15
497	100.00	2019-03-01	148	2	2019-03-15 18:56:23.064964-03	1	2019-03-15
498	150.00	2019-03-01	173	2	2019-03-15 19:19:51.726993-03	1	2019-03-15
499	70.00	2018-12-01	19	2	2019-03-15 19:29:13.432915-03	1	2019-03-15
500	70.00	2019-01-01	19	2	2019-03-15 19:29:49.853414-03	1	2019-03-15
501	60.00	2019-03-01	272	5	2019-03-16 10:47:05.885849-03	1	2019-03-16
502	100.00	2019-02-01	223	5	2019-03-16 15:17:54.691246-03	1	2019-03-15
503	30.00	2019-03-01	273	5	2019-03-16 16:06:56.3085-03	1	2019-03-16
504	35.00	2019-02-01	137	2	2019-03-17 07:03:39.280801-03	1	2019-03-17
505	50.00	2019-03-01	51	2	2019-03-17 07:05:00.492718-03	1	2019-03-17
506	50.00	2019-03-01	149	2	2019-03-17 07:06:13.675109-03	1	2019-03-17
507	15.00	2019-03-01	202	2	2019-03-17 07:08:10.087042-03	1	2019-03-17
508	150.00	2019-03-01	85	2	2019-03-17 07:09:31.716769-03	1	2019-03-17
509	20.00	2019-01-01	97	2	2019-03-17 07:11:29.812997-03	1	2019-03-17
510	25.00	2019-02-01	203	2	2019-03-17 07:21:36.007251-03	1	2019-03-17
511	25.00	2019-03-01	203	2	2019-03-17 07:22:14.184751-03	1	2019-03-17
512	155.00	2019-02-01	174	2	2019-03-17 07:53:14.62241-03	1	2019-03-17
513	80.00	2019-02-01	71	2	2019-03-17 08:12:07.20682-03	1	2019-03-17
514	50.00	2019-02-01	158	2	2019-03-17 08:31:10.122448-03	1	2019-03-17
515	50.00	2019-02-01	156	2	2019-03-17 08:31:42.820336-03	1	2019-03-17
516	150.00	2019-03-01	88	2	2019-03-17 08:32:49.352486-03	1	2019-03-17
517	50.00	2019-03-01	158	2	2019-03-17 08:33:55.082804-03	1	2019-03-17
518	50.00	2019-03-01	156	2	2019-03-17 08:34:30.54864-03	1	2019-03-17
519	100.00	2019-03-01	67	4	2019-03-17 18:34:25.821098-03	1	2019-03-17
520	20.00	2019-02-01	207	4	2019-03-17 18:36:25.927797-03	1	2019-03-17
521	20.00	2019-03-01	145	4	2019-03-17 18:38:35.057453-03	1	2019-03-17
522	20.00	2019-03-01	56	4	2019-03-17 18:43:40.64052-03	1	2019-03-17
523	100.00	2019-03-01	104	4	2019-03-17 18:49:34.465205-03	1	2019-03-17
524	20.00	2019-03-01	274	4	2019-03-17 19:07:36.65516-03	1	2019-03-17
525	50.00	2019-03-01	90	4	2019-03-17 19:11:14.630534-03	1	2019-03-17
526	100.00	2019-02-01	102	4	2019-03-17 19:14:06.822051-03	1	2019-03-17
527	30.00	2019-03-01	275	5	2019-03-19 09:11:44.874887-03	1	2019-03-19
528	100.00	2019-03-01	216	5	2019-03-19 10:31:14.746051-03	1	2019-03-19
529	300.00	2019-03-01	215	5	2019-03-19 10:33:13.900931-03	1	2019-03-19
530	15.00	2019-03-01	220	5	2019-03-19 16:18:11.053168-03	1	2019-03-19
531	100.00	2019-03-01	276	5	2019-03-20 10:34:44.940318-03	1	2019-03-20
532	10.00	2019-03-01	277	5	2019-03-20 11:14:35.997483-03	1	2019-03-20
533	50.00	2019-03-01	80	7	2019-03-20 18:30:22.478355-03	1	2019-03-20
534	10.00	2019-01-01	218	3	2019-03-20 18:58:56.699733-03	1	2019-03-20
535	10.00	2019-02-01	218	3	2019-03-20 18:59:55.69939-03	1	2019-03-20
536	10.00	2019-03-01	218	3	2019-03-20 19:00:38.463431-03	1	2019-03-20
537	300.00	2019-03-01	278	5	2019-03-22 09:45:58.681795-03	1	2019-03-22
538	20.00	2019-02-01	49	5	2019-03-23 09:09:41.570551-03	1	2019-03-23
539	20.00	2019-03-01	49	5	2019-03-23 09:10:25.645907-03	1	2019-03-23
540	15.00	2019-02-01	279	5	2019-03-23 14:44:55.380341-03	1	2019-03-23
541	70.00	2019-03-01	50	2	2019-03-24 19:35:25.055037-03	1	2019-03-24
542	20.00	2019-03-01	72	2	2019-03-24 19:38:31.281365-03	1	2019-03-24
543	50.00	2019-03-01	4	2	2019-03-24 19:40:23.590031-03	1	2019-03-24
544	30.00	2019-03-01	106	2	2019-03-24 19:42:32.247767-03	1	2019-03-24
545	100.00	2019-03-01	230	5	2019-03-26 08:36:35.190283-03	1	2019-03-26
546	15.00	2019-03-01	182	5	2019-03-26 16:03:30.310359-03	1	2019-03-26
547	50.00	2019-03-01	255	5	2019-03-28 11:04:31.135698-03	1	2019-03-28
548	50.00	2019-03-01	280	5	2019-03-29 09:35:24.245091-03	1	2019-03-29
549	300.00	2019-03-01	162	5	2019-03-29 14:38:15.231258-03	1	2019-03-29
550	50.00	2019-03-01	281	5	2019-03-29 16:12:04.643479-03	1	2019-03-29
551	40.00	2019-03-01	127	7	2019-03-29 19:00:20.908215-03	1	2019-03-29
552	30.00	2019-03-01	107	7	2019-03-29 19:18:48.189483-03	1	2019-03-29
553	60.00	2019-03-01	282	5	2019-03-30 08:32:58.741567-03	1	2019-03-30
554	20.00	2019-03-01	224	5	2019-03-30 08:48:47.872884-03	1	2019-03-30
555	50.00	2019-03-01	227	5	2019-03-30 09:49:42.230779-03	1	2019-03-30
556	200.00	2019-04-01	119	5	2019-03-30 14:55:38.921564-03	1	2019-03-30
557	30.00	2019-04-01	52	2	2019-03-31 06:56:06.839301-03	1	2019-03-31
558	15.00	2019-04-01	152	2	2019-03-31 07:02:42.620037-03	1	2019-03-31
559	15.00	2019-04-01	154	2	2019-03-31 07:04:52.737827-03	1	2019-03-31
560	50.00	2019-03-01	100	2	2019-03-31 07:38:16.619751-03	1	2019-03-31
561	50.00	2019-03-01	14	2	2019-03-31 07:40:41.11778-03	1	2019-03-31
563	10.00	2019-01-01	39	2	2019-03-31 19:10:44.20655-03	1	2019-03-31
564	10.00	2019-02-01	39	2	2019-03-31 19:12:08.576302-03	1	2019-03-31
565	10.00	2019-03-01	39	2	2019-03-31 19:13:53.739805-03	1	2019-03-31
566	50.00	2019-04-01	48	2	2019-03-31 19:17:34.967229-03	1	2019-03-31
567	50.00	2019-04-01	46	2	2019-03-31 19:24:18.229519-03	1	2019-03-31
568	20.00	2019-04-01	114	2	2019-03-31 19:27:11.857817-03	1	2019-03-31
569	100.00	2019-02-01	190	2	2019-03-31 19:29:57.859071-03	1	2019-03-31
570	30.00	2019-04-01	170	2	2019-03-31 19:32:54.281714-03	1	2019-03-31
571	100.00	2019-03-01	194	2	2019-03-31 19:35:56.998047-03	1	2019-03-31
572	10.00	2019-03-01	262	2	2019-03-31 19:39:01.035791-03	1	2019-03-31
573	50.00	2019-03-01	228	2	2019-03-31 19:40:57.950255-03	1	2019-03-31
562	100.00	2019-03-01	102	2	2019-03-31 19:06:05.136165-03	1	2019-03-31
574	40.00	2019-03-01	191	2	2019-03-31 20:51:46.531735-03	1	2019-03-31
575	40.00	2019-04-01	38	2	2019-03-31 20:54:27.143331-03	1	2019-03-31
576	50.00	2019-04-01	25	5	2019-04-02 08:47:58.24907-03	1	2019-04-02
577	15.00	2019-04-01	251	5	2019-04-02 14:18:12.821362-03	1	2019-04-02
578	10.00	2019-04-01	108	8	2019-04-02 19:32:13.051221-03	1	2019-04-02
579	120.00	2019-01-01	241	8	2019-04-02 19:36:57.159157-03	1	2019-04-02
580	50.00	2019-04-01	64	8	2019-04-02 19:39:17.331145-03	1	2019-04-02
581	20.00	2019-03-01	63	8	2019-04-02 19:41:28.654019-03	1	2019-04-02
582	20.00	2019-04-01	77	8	2019-04-02 19:44:09.875105-03	1	2019-04-02
583	10.00	2018-06-01	283	8	2019-04-02 19:49:36.406504-03	1	2019-04-02
584	10.00	2018-07-01	283	8	2019-04-02 19:49:53.010499-03	1	2019-04-02
585	10.00	2018-08-01	283	8	2019-04-02 19:50:07.468843-03	1	2019-04-02
586	10.00	2018-09-01	283	8	2019-04-02 19:50:27.584457-03	1	2019-04-02
587	10.00	2018-10-01	283	8	2019-04-02 19:50:40.627738-03	1	2019-04-02
588	50.00	2019-04-01	246	5	2019-04-03 10:02:21.294921-03	1	2019-04-03
589	20.00	2019-04-01	224	5	2019-04-03 10:05:39.951122-03	1	2019-04-03
590	20.00	2019-03-01	233	5	2019-04-03 14:56:57.18799-03	1	2019-04-03
591	90.00	2019-04-01	237	5	2019-04-03 15:09:46.053733-03	1	2019-04-03
592	60.00	2019-04-01	239	5	2019-04-04 08:56:04.689404-03	1	2019-04-04
593	100.00	2019-04-01	164	5	2019-04-04 15:43:25.968557-03	1	2019-04-04
594	50.00	2019-04-01	62	2	2019-04-04 20:07:31.278371-03	1	2019-04-04
595	50.00	2019-04-01	265	5	2019-04-05 08:27:33.316629-03	1	2019-04-05
596	60.00	2019-04-01	264	5	2019-04-05 08:28:20.696695-03	1	2019-04-05
597	130.00	2019-04-01	12	5	2019-04-05 09:20:42.211368-03	1	2019-04-05
598	160.00	2019-04-01	247	5	2019-04-05 09:22:25.493429-03	1	2019-04-05
599	30.00	2019-04-01	134	5	2019-04-05 14:48:18.493586-03	1	2019-04-05
600	40.00	2019-04-01	206	5	2019-04-05 14:50:19.987927-03	1	2019-04-05
601	25.00	2019-02-01	175	5	2019-04-05 14:54:14.964508-03	1	2019-04-05
602	25.00	2019-03-01	175	5	2019-04-05 14:54:52.394938-03	1	2019-04-05
603	5.00	2019-04-01	243	5	2019-04-05 15:43:41.930408-03	1	2019-04-05
604	30.00	2019-04-01	142	5	2019-04-06 09:09:58.399515-03	1	2019-04-06
605	50.00	2019-04-01	250	5	2019-04-06 09:25:59.016654-03	1	2019-04-06
606	40.00	2019-04-01	249	5	2019-04-06 09:26:53.128989-03	1	2019-04-06
607	10.00	2019-03-01	47	5	2019-04-06 10:25:38.067676-03	1	2019-04-06
413	50.00	2019-02-01	57	2	2019-03-10 07:13:11.250486-03	1	2019-03-10
608	50.00	2019-03-01	57	2	2019-04-07 07:20:47.973463-03	1	2019-04-07
609	50.00	2019-04-01	80	2	2019-04-07 07:22:09.367115-03	1	2019-04-07
610	15.00	2019-04-01	185	2	2019-04-07 07:22:58.231846-03	1	2019-04-07
611	150.00	2019-04-01	70	2	2019-04-07 07:24:30.024263-03	1	2019-04-07
613	100.00	2019-03-01	242	2	2019-04-07 07:26:55.788389-03	1	2019-04-07
614	100.00	2019-04-01	242	2	2019-04-07 07:28:01.846788-03	1	2019-04-07
615	200.00	2019-04-01	123	2	2019-04-07 07:28:57.528501-03	1	2019-04-07
616	150.00	2019-04-01	53	2	2019-04-07 07:30:03.884128-03	1	2019-04-07
617	20.00	2019-04-01	82	2	2019-04-07 07:31:16.751956-03	1	2019-04-07
618	20.00	2019-04-01	78	2	2019-04-07 07:34:44.155473-03	1	2019-04-07
619	45.00	2019-04-01	113	2	2019-04-07 07:36:18.139414-03	1	2019-04-07
620	30.00	2019-03-01	125	2	2019-04-07 07:37:38.446145-03	1	2019-04-07
621	15.00	2019-04-01	202	2	2019-04-07 07:38:55.145265-03	1	2019-04-07
622	20.00	2019-04-01	61	2	2019-04-07 07:40:09.44954-03	1	2019-04-07
623	10.00	2019-04-01	60	2	2019-04-07 07:41:14.552886-03	1	2019-04-07
624	100.00	2019-04-01	148	2	2019-04-07 07:42:12.823711-03	1	2019-04-07
625	50.00	2019-04-01	126	2	2019-04-07 07:48:22.91982-03	1	2019-04-07
626	20.00	2019-03-01	81	2	2019-04-07 08:02:34.230629-03	1	2019-04-07
627	50.00	2019-03-01	259	2	2019-04-07 08:05:09.500069-03	1	2019-04-07
628	25.00	2019-03-01	124	2	2019-04-07 08:41:58.499101-03	1	2019-04-07
612	100.00	2019-04-01	150	2	2019-04-07 07:25:43.770361-03	1	2019-04-07
629	80.00	2019-04-01	153	2	2019-04-07 08:46:30.49709-03	1	2019-04-07
630	35.00	2019-03-01	137	2	2019-04-07 08:47:37.962874-03	1	2019-04-07
631	100.00	2019-05-01	208	2	2019-04-07 08:49:43.902893-03	1	2019-04-07
632	30.00	2019-03-01	271	2	2019-04-07 18:48:49.480781-03	1	2019-04-07
633	20.00	2019-04-01	213	2	2019-04-07 18:57:45.225498-03	1	2019-04-07
634	100.00	2019-04-01	67	2	2019-04-07 19:02:20.496102-03	1	2019-04-07
635	100.00	2019-04-01	115	2	2019-04-07 19:04:40.927579-03	1	2019-04-07
636	70.00	2019-04-01	50	2	2019-04-07 19:08:38.829231-03	1	2019-04-07
637	100.00	2019-04-01	195	2	2019-04-07 19:25:40.222275-03	1	2019-04-07
638	50.00	2019-04-01	149	2	2019-04-07 19:33:41.864922-03	1	2019-04-07
644	100.00	2019-04-01	216	5	2019-04-09 10:19:08.988209-03	1	2019-04-09
640	100.00	2019-02-01	284	2	2019-04-07 19:57:49.683712-03	1	2019-04-07
641	100.00	2019-03-01	284	2	2019-04-07 19:58:54.484637-03	1	2019-04-07
642	100.00	2019-04-01	284	2	2019-04-07 20:00:43.18427-03	1	2019-04-07
645	30.00	2019-04-01	275	5	2019-04-09 10:56:30.614243-03	1	2019-04-09
643	100.00	2019-02-01	210	2	2019-04-07 20:01:45.534874-03	1	2019-04-07
646	100.00	2019-04-01	211	2	2019-04-09 19:59:51.190974-03	1	2019-04-09
647	50.00	2019-03-01	192	2	2019-04-09 20:02:03.07545-03	1	2019-04-09
648	50.00	2019-04-01	212	2	2019-04-09 20:04:01.747886-03	1	2019-04-09
649	10.00	2019-02-01	285	2	2019-04-09 20:09:54.3418-03	1	2019-04-09
650	10.00	2019-03-01	285	2	2019-04-09 20:11:24.756863-03	1	2019-04-09
651	50.00	2019-04-01	159	2	2019-04-09 20:12:11.452688-03	1	2019-04-09
652	100.00	2019-03-01	223	5	2019-04-10 10:33:02.710039-03	1	2019-04-10
653	15.00	2019-03-01	177	5	2019-04-10 10:40:21.403034-03	1	2019-04-10
654	20.00	2019-04-01	176	5	2019-04-10 10:41:33.209857-03	1	2019-04-10
655	50.00	2019-04-01	231	5	2019-04-10 16:21:20.479683-03	1	2019-04-10
656	50.00	2019-03-01	198	5	2019-04-11 09:10:04.258241-03	1	2019-04-11
657	30.00	2019-03-01	219	5	2019-04-11 09:28:04.302541-03	1	2019-04-11
658	160.00	2019-04-01	253	5	2019-04-11 11:03:07.066023-03	1	2019-04-11
659	50.00	2019-04-01	168	2	2019-04-11 18:59:12.626098-03	1	2019-04-11
660	20.00	2019-04-01	18	2	2019-04-11 19:15:40.868052-03	1	2019-04-11
661	500.00	2019-04-01	270	5	2019-04-13 09:54:11.496884-03	1	2019-04-13
662	30.00	2019-04-01	21	5	2019-04-13 11:17:21.945842-03	1	2019-04-13
663	50.00	2019-04-01	217	2	2019-04-13 11:30:49.404604-03	1	2019-04-13
664	50.00	2019-03-01	217	2	2019-04-13 11:33:22.711879-03	1	2019-04-13
665	20.00	2019-04-01	56	2	2019-04-13 11:50:25.250609-03	1	2019-04-13
666	30.00	2019-03-01	286	5	2019-04-13 11:50:49.992487-03	1	2019-04-13
667	30.00	2019-04-01	245	5	2019-04-13 11:51:15.320553-03	1	2019-04-13
668	30.00	2019-04-01	40	2	2019-04-13 11:54:21.862224-03	1	2019-04-13
669	50.00	2019-03-01	267	5	2019-04-13 11:55:31.330549-03	1	2019-04-13
670	100.00	2019-04-01	42	2	2019-04-13 12:00:16.954818-03	1	2019-04-13
671	100.00	2019-04-01	183	2	2019-04-13 12:17:23.453344-03	1	2019-04-13
672	50.00	2019-04-01	269	5	2019-04-13 15:19:24.052252-03	1	2019-04-13
673	50.00	2019-04-01	144	7	2019-04-14 07:07:23.511185-03	1	2019-04-14
674	150.00	2019-04-01	85	7	2019-04-14 07:32:19.449409-03	1	2019-04-14
675	10.00	2019-04-01	273	7	2019-04-14 07:34:35.290231-03	1	2019-04-14
676	30.00	2019-02-01	7	7	2019-04-14 07:39:47.766517-03	1	2019-04-14
677	80.00	2019-03-01	71	7	2019-04-14 08:08:34.882795-03	1	2019-04-14
678	25.00	2019-04-01	130	7	2019-04-14 09:27:30.154468-03	1	2019-04-14
679	50.00	2019-04-01	90	7	2019-04-14 18:36:07.586974-03	1	2019-02-14
680	20.00	2019-04-01	189	7	2019-04-14 18:41:55.893073-03	1	2019-04-14
681	35.00	2018-08-01	17	7	2019-04-14 19:19:02.241787-03	1	2019-04-14
682	35.00	2018-09-01	17	7	2019-04-14 19:20:14.925656-03	1	2019-04-14
683	35.00	2018-10-01	17	7	2019-04-14 19:20:53.194892-03	1	2019-04-14
684	35.00	2018-11-01	17	7	2019-04-14 19:21:26.096838-03	1	2019-04-14
685	35.00	2018-12-01	17	7	2019-04-14 19:22:41.57728-03	1	2019-04-14
686	50.00	2019-02-01	101	7	2019-04-14 19:24:16.762244-03	1	2019-04-14
687	100.00	2019-04-01	238	7	2019-04-14 19:25:35.33401-03	1	2019-04-14
688	20.00	2019-01-01	287	7	2019-04-14 19:31:51.848277-03	1	2019-04-14
689	20.00	2019-04-01	272	5	2019-04-16 10:00:35.407522-03	1	2019-04-16
690	50.00	2019-04-01	116	5	2019-04-17 09:51:57.106362-03	1	2019-04-17
691	50.00	2019-01-01	79	3	2019-04-17 18:31:26.838106-03	1	2019-04-17
692	150.00	2019-04-01	173	3	2019-04-17 19:31:44.039541-03	1	2019-04-17
694	100.00	2019-04-01	104	7	2019-04-18 19:35:49.885388-03	1	2019-04-18
693	20.00	2019-04-01	274	7	2019-04-18 19:33:02.129979-03	1	2019-04-18
695	100.00	2019-04-01	98	2	2019-04-21 07:06:39.880867-03	1	2019-04-21
696	20.00	2019-01-01	204	2	2019-04-21 07:10:39.941016-03	1	2019-04-21
697	20.00	2019-02-01	204	2	2019-04-21 07:12:34.027128-03	1	2019-04-21
698	30.00	2019-01-01	288	2	2019-04-21 07:14:28.828286-03	1	2019-04-21
699	30.00	2019-02-01	288	2	2019-04-21 07:15:46.390797-03	1	2019-04-21
700	30.00	2019-03-01	288	2	2019-04-21 07:16:55.473634-03	1	2019-04-21
701	30.00	2019-04-01	288	2	2019-04-21 07:18:50.489748-03	1	2019-04-21
702	25.00	2019-03-01	133	2	2019-04-21 07:24:05.869069-03	1	2019-04-21
703	25.00	2019-04-01	133	2	2019-04-21 07:25:21.781312-03	1	2019-04-21
704	15.00	2019-03-01	118	2	2019-04-21 07:32:09.00509-03	1	2019-04-21
705	10.00	2019-02-01	289	2	2019-04-21 07:49:08.266986-03	1	2019-04-21
706	10.00	2019-03-01	289	2	2019-04-21 07:50:13.296038-03	1	2019-04-21
707	150.00	2019-04-01	88	2	2019-04-21 09:23:33.504117-03	1	2019-04-21
708	50.00	2019-03-01	101	2	2019-04-21 19:11:18.35202-03	1	2019-04-21
709	300.00	2019-04-01	215	5	2019-04-23 09:08:33.46784-03	1	2019-04-23
710	50.00	2019-03-01	232	5	2019-04-23 16:08:24.131707-03	1	2019-04-23
711	50.00	2019-04-01	232	5	2019-04-23 16:09:18.382035-03	1	2019-04-23
712	20.00	2019-03-01	222	5	2019-04-24 17:16:52.169149-03	1	2019-04-24
713	20.00	2019-04-01	222	5	2019-04-24 17:17:31.489083-03	1	2019-04-24
714	100.00	2019-04-01	230	5	2019-04-26 08:22:59.113303-03	1	2019-04-26
715	15.00	2019-04-01	182	5	2019-04-26 16:39:01.115048-03	1	2019-04-26
716	50.00	2019-04-01	227	5	2019-04-27 10:38:27.248918-03	1	2019-04-27
717	20.00	2019-04-01	200	7	2019-04-28 07:08:56.688896-03	1	2019-04-28
718	50.00	2019-04-01	51	7	2019-04-28 07:12:07.616887-03	1	2019-04-28
719	20.00	2019-05-01	114	7	2019-04-28 07:15:25.470506-03	1	2019-04-28
720	70.00	2019-03-01	229	7	2019-04-28 07:20:36.567881-03	1	2019-04-28
721	100.00	2019-04-01	278	7	2019-04-28 07:23:48.581811-03	1	2019-04-28
734	40.00	2019-04-01	261	5	2019-04-30 10:02:27.557112-03	1	2019-04-30
723	25.00	2019-01-01	290	7	2019-04-28 07:33:28.440768-03	1	2019-04-28
724	25.00	2019-02-01	290	7	2019-04-28 07:34:18.115831-03	1	2019-04-28
725	25.00	2019-03-01	290	7	2019-04-28 07:34:47.967041-03	1	2019-04-28
726	25.00	2019-04-01	290	7	2019-04-28 07:35:24.081867-03	1	2019-04-28
727	10.00	2019-03-01	165	7	2019-04-28 08:05:24.146341-03	1	2019-04-28
728	10.00	2019-04-01	165	7	2019-04-28 08:06:42.388058-03	1	2019-04-28
729	20.00	2019-02-01	120	7	2019-04-28 08:11:48.204504-03	1	2019-04-28
730	20.00	2019-04-01	120	7	2019-04-28 08:12:33.174605-03	1	2019-04-28
731	50.00	2019-05-01	212	7	2019-04-28 15:22:39.934003-03	1	2019-04-28
732	95.00	2019-03-01	174	7	2019-04-28 15:39:27.357939-03	1	2019-04-28
733	95.00	2019-04-01	174	7	2019-04-28 15:42:18.892755-03	1	2019-04-28
735	10.00	2019-04-01	220	5	2019-04-30 10:11:37.646779-03	1	2019-04-30
736	50.00	2019-02-01	291	5	2019-04-30 15:58:20.609797-03	1	2019-04-30
737	50.00	2019-02-01	79	2	2019-05-01 07:04:56.309121-03	1	2019-05-01
738	30.00	2019-05-01	170	2	2019-05-01 07:10:16.015074-03	1	2019-05-01
739	20.00	2019-03-01	292	2	2019-05-01 07:43:15.583587-03	1	2019-05-01
740	20.00	2019-04-01	292	2	2019-05-01 07:43:47.013214-03	1	2019-05-01
741	20.00	2019-05-01	292	2	2019-05-01 07:44:22.190706-03	1	2019-05-01
742	20.00	2019-06-01	292	2	2019-05-01 07:45:00.133757-03	1	2019-05-01
743	20.00	2019-07-01	292	2	2019-05-01 07:45:31.693939-03	1	2019-05-01
744	20.00	2019-08-01	292	2	2019-05-01 07:46:10.517566-03	1	2019-05-01
745	20.00	2019-09-01	292	2	2019-05-01 07:46:37.129439-03	1	2019-05-01
746	25.00	2019-02-01	97	2	2019-05-01 07:50:39.236056-03	1	2019-05-01
747	25.00	2019-03-01	97	2	2019-05-01 07:51:47.758271-03	1	2019-05-01
748	45.00	2019-05-01	113	2	2019-05-01 07:54:39.068985-03	1	2019-05-01
749	25.00	2019-04-01	203	2	2019-05-01 08:06:48.982486-03	1	2019-05-01
750	10.00	2019-04-01	155	2	2019-05-01 08:27:55.169964-03	1	2019-05-01
751	10.00	2019-05-01	155	2	2019-05-01 08:28:28.867948-03	1	2019-05-01
752	25.00	2019-04-01	76	3	2019-05-01 18:26:31.654068-03	1	2019-05-01
753	25.00	2019-05-01	76	3	2019-05-01 18:27:46.843313-03	1	2019-05-01
754	40.00	2019-04-01	191	3	2019-05-01 18:32:25.894126-03	1	2019-05-01
755	20.00	2019-04-01	39	2	2019-05-01 18:39:35.339512-03	1	2019-05-01
756	20.00	2019-03-01	207	2	2019-05-01 18:43:20.513499-03	1	2019-05-01
757	50.00	2019-05-01	38	2	2019-05-01 18:52:17.541042-03	1	2019-05-01
758	5.00	2019-05-01	294	2	2019-05-01 19:00:38.125654-03	1	2019-05-01
759	30.00	2019-04-01	106	2	2019-05-01 19:04:00.389732-03	1	2019-05-01
760	30.00	2019-04-01	107	2	2019-05-01 19:06:10.492421-03	1	2019-05-01
761	120.00	2019-02-01	241	2	2019-05-01 19:07:58.214712-03	1	2019-05-01
762	50.00	2019-04-01	14	2	2019-05-01 20:31:00.698836-03	1	2019-05-01
763	10.00	2019-04-01	135	5	2019-05-02 08:32:29.993197-03	1	2019-05-02
764	10.00	2019-05-01	135	5	2019-05-02 08:33:22.149615-03	1	2019-05-02
765	30.00	2019-03-01	268	5	2019-05-02 08:34:26.852518-03	1	2019-05-02
766	30.00	2019-04-01	268	5	2019-05-02 08:34:56.80214-03	1	2019-05-02
767	60.00	2019-05-01	239	5	2019-05-02 09:56:55.856122-03	1	2019-05-02
768	90.00	2019-05-01	237	5	2019-05-02 16:18:26.913193-03	1	2019-05-02
769	10.00	2019-04-01	141	2	2019-05-02 18:51:10.512595-03	1	2019-05-02
770	10.00	2019-05-01	141	2	2019-05-02 18:54:21.512243-03	1	2019-05-02
771	10.00	2019-04-01	262	2	2019-05-02 18:58:34.584686-03	1	2019-05-02
772	50.00	2019-05-01	168	2	2019-05-02 19:01:13.20222-03	1	2019-05-02
773	50.00	2019-04-01	192	2	2019-05-02 19:03:16.601633-03	1	2019-05-02
774	10.00	2019-02-01	184	2	2019-05-02 19:06:15.073077-03	1	2019-05-02
775	10.00	2019-03-01	184	2	2019-05-02 19:08:14.800161-03	1	2019-05-02
776	10.00	2019-04-01	184	2	2019-05-02 19:09:23.960804-03	1	2019-05-02
777	10.00	2019-05-01	184	2	2019-05-02 19:10:41.123691-03	1	2019-05-02
778	50.00	2019-05-01	46	2	2019-05-02 19:19:27.928528-03	1	2019-05-02
779	50.00	2019-05-01	48	2	2019-05-02 19:28:02.435387-03	1	2019-05-02
780	20.00	2019-04-01	147	2	2019-05-02 19:31:19.646595-03	1	2019-05-02
781	20.00	2019-05-01	147	2	2019-05-02 19:32:31.630369-03	1	2019-05-02
782	50.00	2019-04-01	228	2	2019-05-02 19:35:07.446404-03	1	2019-05-02
783	50.00	2019-05-01	228	2	2019-05-02 19:37:41.346355-03	1	2019-05-02
784	50.00	2019-05-01	296	2	2019-05-02 19:39:34.826425-03	1	2019-05-02
785	50.00	2019-05-01	295	2	2019-05-02 19:41:09.234257-03	1	2019-05-02
786	50.00	2019-05-01	25	5	2019-05-03 09:39:08.058279-03	1	2019-05-03
787	15.00	2019-04-01	214	5	2019-05-03 09:39:58.932652-03	1	2019-05-03
788	15.00	2019-05-01	214	5	2019-05-03 09:40:34.219046-03	1	2019-05-03
789	100.00	2019-04-01	276	5	2019-05-03 11:11:31.446669-03	1	2019-05-03
790	30.00	2019-04-01	271	5	2019-05-03 16:44:09.964224-03	1	2019-05-03
791	50.00	2019-04-01	280	2	2019-05-03 19:10:00.600386-03	1	2019-05-03
792	50.00	2019-04-01	171	2	2019-05-03 19:13:35.511239-03	1	2019-05-03
793	10.00	2019-04-01	128	2	2019-05-03 19:29:41.968111-03	1	2019-05-03
794	20.00	2019-04-01	163	2	2019-05-03 19:56:59.753066-03	1	2019-05-03
795	20.00	2019-05-01	82	2	2019-05-03 21:07:18.457891-03	1	2019-05-03
796	100.00	2019-04-01	194	3	2019-05-04 08:51:51.169012-03	1	2019-05-04
797	20.00	2019-06-01	167	3	2019-05-04 08:54:23.226085-03	1	2019-05-04
798	20.00	2019-07-01	167	3	2019-05-04 08:55:20.820936-03	1	2019-05-04
799	20.00	2019-04-01	282	5	2019-05-04 09:20:19.645674-03	1	2019-05-04
800	20.00	2019-05-01	282	5	2019-05-04 09:21:11.293001-03	1	2019-05-04
801	170.00	2019-05-01	247	3	2019-05-04 09:53:06.525178-03	1	2019-05-04
802	130.00	2019-05-01	12	5	2019-05-04 10:19:11.609271-03	1	2019-05-04
803	60.00	2019-04-01	54	3	2019-05-04 10:25:08.986624-03	1	2019-05-04
804	60.00	2019-05-01	54	3	2019-05-04 10:25:56.841148-03	1	2019-05-04
805	20.00	2019-05-01	18	3	2019-05-04 18:39:31.24647-03	1	2019-05-04
806	100.00	2019-05-01	67	3	2019-05-04 18:48:49.222873-03	1	2019-05-04
807	10.00	2019-04-01	47	3	2019-05-04 18:52:41.211614-03	1	2019-05-04
808	10.00	2019-05-01	47	3	2019-05-04 18:53:41.703735-03	1	2019-05-04
809	50.00	2019-03-01	240	3	2019-05-04 19:03:50.121307-03	1	2019-05-04
810	50.00	2019-05-01	90	2	2019-05-04 19:11:36.810094-03	1	2019-05-04
811	30.00	2019-05-01	52	2	2019-05-05 06:58:16.193718-03	1	2019-05-05
812	50.00	2019-05-01	226	2	2019-05-05 07:00:49.214214-03	1	2019-05-05
813	15.00	2019-05-01	154	2	2019-05-05 07:03:27.035062-03	1	2019-05-05
814	15.00	2019-05-01	152	2	2019-05-05 07:04:37.438804-03	1	2019-05-05
815	25.00	2019-04-01	124	2	2019-05-05 07:05:55.390349-03	1	2019-05-05
816	20.00	2019-04-01	81	2	2019-05-05 07:07:33.848216-03	1	2019-05-05
817	20.00	2019-05-01	81	2	2019-05-05 07:08:13.288916-03	1	2019-05-05
818	150.00	2019-05-01	53	2	2019-05-05 07:12:20.747186-03	1	2019-05-05
819	60.00	2019-03-01	257	2	2019-05-05 07:17:06.105116-03	1	2019-05-05
820	40.00	2019-04-01	187	5	2019-05-05 07:21:17.923446-03	1	2019-05-05
821	40.00	2019-05-01	187	5	2019-05-05 07:22:39.181515-03	1	2019-05-05
822	20.00	2019-04-01	188	2	2019-05-05 07:24:02.804552-03	1	2019-05-05
823	20.00	2019-05-01	188	2	2019-05-05 07:24:26.387056-03	1	2019-05-05
824	100.00	2019-05-01	150	2	2019-05-05 07:29:23.664817-03	1	2019-05-05
825	20.00	2019-05-01	258	2	2019-05-05 08:17:49.156729-03	1	2019-05-05
826	25.00	2019-05-01	298	2	2019-05-05 09:01:42.846495-03	1	2019-05-05
827	20.00	2019-03-01	69	2	2019-05-05 09:03:16.781332-03	1	2019-05-05
828	20.00	2019-04-01	69	2	2019-05-05 09:04:04.602766-03	1	2019-05-05
829	20.00	2019-05-01	69	2	2019-05-05 09:04:52.721057-03	1	2019-05-05
830	50.00	2019-05-01	149	2	2019-05-05 18:33:53.813316-03	1	2019-05-05
831	20.00	2019-04-01	63	2	2019-05-05 18:35:34.034237-03	1	2019-05-05
832	100.00	2019-05-01	148	2	2019-05-05 18:40:54.322985-03	1	2019-05-05
833	50.00	2019-01-01	299	2	2019-05-05 18:53:29.970068-03	1	2019-05-05
834	50.00	2019-02-01	299	2	2019-05-05 18:54:46.482849-03	1	2019-05-05
835	50.00	2019-03-01	299	2	2019-05-05 18:55:41.582189-03	1	2019-05-05
836	50.00	2019-04-01	299	2	2019-05-05 18:56:28.662767-03	1	2019-05-05
837	100.00	2019-04-01	102	2	2019-05-05 19:03:46.845881-03	1	2019-05-05
838	50.00	2019-04-01	100	2	2019-05-05 19:07:48.111387-03	1	2019-05-05
839	50.00	2019-04-01	57	2	2019-05-05 19:08:42.206219-03	1	2019-05-05
840	20.00	2019-05-01	274	2	2019-05-05 19:19:26.543424-03	1	2019-05-05
841	70.00	2019-05-01	50	2	2019-05-05 19:22:17.538718-03	1	2019-05-05
842	30.00	2019-01-01	300	2	2019-05-05 19:38:55.569306-03	1	2019-05-05
843	30.00	2019-02-01	300	2	2019-05-05 19:40:40.951907-03	1	2019-05-05
844	30.00	2019-03-01	300	2	2019-05-05 19:43:51.269823-03	1	2019-05-05
845	30.00	2019-04-01	300	2	2019-05-05 19:44:48.065333-03	1	2019-05-05
846	30.00	2019-05-01	300	2	2019-05-05 19:46:08.102263-03	1	2019-05-05
847	30.00	2019-05-01	134	2	2019-05-06 18:49:01.3333-03	1	2019-05-06
848	20.00	2019-05-01	224	2	2019-05-06 18:52:04.627947-03	1	2019-05-06
849	100.00	2019-06-01	208	2	2019-05-06 19:03:03.926105-03	1	2019-05-06
850	100.00	2019-05-01	195	2	2019-05-06 19:08:36.780512-03	1	2019-05-06
851	40.00	2019-05-01	249	5	2019-05-07 09:48:27.874738-03	1	2019-05-07
852	50.00	2019-05-01	250	5	2019-05-07 09:49:42.536188-03	1	2019-05-07
853	15.00	2019-04-01	177	5	2019-05-07 10:00:11.077064-03	1	2019-05-07
854	20.00	2019-05-01	176	5	2019-05-07 10:01:24.933359-03	1	2019-05-07
855	50.00	2019-05-01	246	5	2019-05-07 10:36:42.477701-03	1	2019-05-07
856	20.00	2019-03-01	248	7	2019-05-07 19:20:20.425441-03	1	2019-05-07
857	20.00	2019-04-01	248	7	2019-05-07 19:20:59.988237-03	1	2019-05-07
858	80.00	2019-05-01	153	7	2019-05-07 19:24:04.328891-03	1	2019-05-07
859	50.00	2019-05-01	64	7	2019-05-07 19:28:21.279456-03	1	2019-05-07
860	60.00	2019-05-01	264	5	2019-05-08 08:33:47.546252-03	1	2019-05-08
861	50.00	2019-05-01	265	5	2019-05-08 08:34:47.823288-03	1	2019-05-08
862	20.00	2019-04-01	49	5	2019-05-08 09:19:52.360325-03	1	2019-05-08
863	20.00	2019-05-01	49	5	2019-05-08 09:21:52.038521-03	1	2019-05-08
864	30.00	2019-04-01	219	5	2019-05-08 10:40:35.493991-03	1	2019-05-08
865	20.00	2019-04-01	233	5	2019-05-08 14:28:38.277909-03	1	2019-05-08
866	50.00	2019-05-01	126	5	2019-05-08 16:13:28.769307-03	1	2019-05-08
867	10.00	2019-03-01	301	5	2019-05-08 16:16:32.232732-03	1	2019-05-08
868	10.00	2019-03-01	302	5	2019-05-08 16:18:00.143492-03	1	2019-05-08
869	200.00	2019-05-01	119	3	2019-05-08 18:46:34.618798-03	1	2019-05-08
870	200.00	2019-06-01	119	3	2019-05-08 18:47:52.771131-03	1	2019-05-08
871	30.00	2019-05-01	21	3	2019-05-08 18:49:59.372954-03	1	2019-05-08
872	50.00	2019-05-01	80	3	2019-05-08 18:52:52.758989-03	1	2019-05-08
873	100.00	2019-05-01	211	3	2019-05-08 18:56:28.473169-03	1	2019-05-08
874	20.00	2019-05-01	213	3	2019-05-08 18:58:43.942661-03	1	2019-05-08
875	100.00	2019-05-01	183	3	2019-05-08 19:15:14.824293-03	1	2019-05-08
876	30.00	2019-05-01	142	5	2019-05-09 11:07:04.728112-03	1	2019-05-09
877	25.00	2019-05-01	130	7	2019-05-09 18:57:13.090536-03	1	2019-05-09
878	25.00	2019-03-01	303	7	2019-05-09 19:06:41.308939-03	1	2019-05-09
879	25.00	2019-04-01	303	7	2019-05-09 19:15:32.821137-03	1	2019-05-09
880	25.00	2019-05-01	303	7	2019-05-09 19:17:22.916848-03	1	2019-05-09
881	25.00	2019-06-01	303	7	2019-05-09 19:19:27.32355-03	1	2019-05-09
882	20.00	2019-04-01	72	7	2019-05-09 19:23:47.601707-03	1	2019-05-09
883	20.00	2019-05-01	72	7	2019-05-09 19:25:33.626523-03	1	2019-05-09
884	30.00	2019-04-01	94	7	2019-05-09 19:37:20.263277-03	1	2019-05-09
885	50.00	2019-04-01	4	7	2019-05-09 19:45:52.891117-03	1	2019-05-09
886	50.00	2019-05-01	4	7	2019-05-09 19:48:38.229053-03	1	2019-05-09
887	30.00	2019-04-01	304	7	2019-05-09 19:57:34.145537-03	1	2019-05-09
888	30.00	2019-05-01	304	7	2019-05-09 19:59:52.939708-03	1	2019-05-09
889	50.00	2019-04-01	267	5	2019-05-10 09:01:21.249535-03	1	2019-05-10
890	3.50	2019-05-01	243	5	2019-05-10 14:51:37.835722-03	1	2019-05-10
891	50.00	2019-05-01	164	5	2019-05-10 16:34:34.503982-03	1	2019-05-10
892	100.00	2019-05-01	238	3	2019-05-10 19:08:11.790237-03	1	2019-05-10
893	20.00	2019-05-01	94	3	2019-05-10 19:12:27.903886-03	1	2019-05-10
904	100.00	2019-04-01	223	5	2019-05-11 08:20:40.533852-03	1	2019-05-11
905	50.00	2019-05-01	231	5	2019-05-11 11:25:54.588102-03	1	2019-05-11
894	10.00	2018-06-01	305	3	2019-05-10 19:57:58.712733-03	1	2019-06-10
895	10.00	2018-07-01	305	3	2019-05-10 20:45:50.77672-03	1	2019-06-10
896	10.00	2018-08-01	305	3	2019-05-10 20:46:45.651488-03	1	2019-06-10
897	10.00	2018-09-01	305	3	2019-05-10 20:47:15.677181-03	1	2019-06-10
898	10.00	2018-10-01	305	3	2019-05-10 20:47:46.317639-03	1	2019-06-10
899	10.00	2018-11-01	305	3	2019-05-10 20:48:16.505712-03	1	2019-06-10
900	10.00	2018-12-01	305	3	2019-05-10 20:48:48.697097-03	1	2019-06-10
901	10.00	2019-01-01	305	3	2019-05-10 20:50:51.584892-03	1	2019-06-10
902	10.00	2019-02-01	305	3	2019-05-10 20:51:27.073718-03	1	2019-06-10
903	10.00	2019-03-01	305	3	2019-05-10 20:52:20.294956-03	1	2019-06-10
906	20.00	2019-03-01	122	3	2019-05-11 18:47:24.051088-03	1	2019-05-11
907	20.00	2019-04-01	122	3	2019-05-11 18:48:33.761893-03	1	2019-05-11
908	10.00	2019-05-01	60	7	2019-05-12 07:01:46.372202-03	1	2019-05-12
909	20.00	2019-05-01	61	7	2019-05-12 07:03:34.972352-03	1	2019-05-12
910	30.00	2019-04-01	125	7	2019-05-12 07:06:43.771621-03	1	2019-05-12
911	35.00	2019-04-01	137	7	2019-05-12 07:09:38.472445-03	1	2019-05-12
912	15.00	2019-05-01	202	7	2019-05-12 07:12:52.100184-03	1	2019-05-12
913	50.00	2019-05-01	144	7	2019-05-12 07:14:43.660607-03	1	2019-05-12
914	15.00	2019-04-01	118	7	2019-05-12 07:42:12.132053-03	1	2019-05-12
915	150.00	2019-05-01	70	7	2019-05-12 08:24:29.068998-03	1	2019-05-12
916	150.00	2019-05-01	85	7	2019-05-12 08:38:34.155155-03	1	2019-05-12
917	10.00	2019-01-01	99	7	2019-05-12 08:44:03.371072-03	1	2019-05-12
918	10.00	2019-02-01	99	7	2019-05-12 08:44:30.455092-03	1	2019-05-12
919	10.00	2019-03-01	99	7	2019-05-12 08:44:54.791648-03	1	2019-05-12
920	10.00	2019-04-01	99	7	2019-05-12 08:45:26.889528-03	1	2019-05-12
921	40.00	2019-01-01	84	7	2019-05-12 08:46:57.315688-03	1	2019-05-12
922	500.00	2019-05-01	270	7	2019-05-12 08:48:09.950964-03	1	2019-05-12
923	20.00	2019-05-01	78	7	2019-05-12 08:50:40.375251-03	1	2019-05-12
924	10.00	2019-05-01	99	7	2019-05-12 09:04:06.236648-03	1	2019-05-12
925	50.00	2019-04-01	101	7	2019-05-12 20:52:00.262301-03	1	2019-05-12
926	50.00	2019-05-01	198	3	2019-05-13 07:41:17.746148-03	1	2019-05-13
927	100.00	2019-05-01	42	7	2019-05-16 19:16:41.123889-03	1	2019-05-13
928	100.00	2019-05-01	104	5	2019-05-17 16:22:56.428986-03	1	2019-05-17
929	50.00	2019-05-01	116	5	2019-05-18 08:13:56.495734-03	1	2019-05-18
930	50.00	2019-05-01	306	5	2019-05-18 14:49:18.424714-03	1	2019-05-18
931	10.00	2019-01-01	201	4	2019-05-19 07:25:00.146096-03	1	2019-05-19
932	10.00	2019-02-01	201	4	2019-05-19 07:29:27.331973-03	1	2019-05-19
933	30.00	2019-05-01	56	4	2019-05-19 08:47:42.022244-03	1	2019-05-19
934	100.00	2019-03-01	190	4	2019-05-19 18:41:41.528266-03	1	2019-05-19
935	30.00	2019-05-01	8	4	2019-05-19 18:45:05.609993-03	1	2019-05-19
936	40.00	2019-05-01	206	4	2019-05-19 18:50:27.398221-03	1	2019-05-19
937	40.00	2019-04-01	127	4	2019-05-19 18:53:12.835358-03	1	2019-05-19
938	20.00	2019-05-01	307	4	2019-05-19 19:23:51.963616-03	1	2019-05-19
939	30.00	2019-05-01	275	5	2019-05-21 09:55:45.439704-03	1	2019-05-21
940	10.00	2019-05-01	308	5	2019-05-21 10:10:13.448476-03	1	2019-05-21
943	300.00	2019-05-01	309	5	2019-05-22 17:02:36.752256-03	1	2019-05-22
944	100.00	2019-05-01	216	5	2019-05-23 09:56:07.723726-03	1	2019-05-23
941	50.00	2019-04-01	156	7	2019-05-21 19:17:17.96568-03	1	2019-05-21
942	50.00	2019-04-01	158	7	2019-05-21 19:18:12.779719-03	1	2019-05-21
945	100.00	2019-05-01	230	5	2019-05-25 08:20:55.094153-03	1	2019-05-25
946	200.00	2019-05-01	123	2	2019-05-26 07:03:53.607771-03	1	2019-05-26
947	150.00	2019-05-01	88	2	2019-05-26 07:07:56.646268-03	1	2019-05-26
948	80.00	2019-04-01	71	9	2019-05-26 07:52:18.865004-03	1	2019-05-26
949	20.00	2018-08-01	310	2	2019-05-26 19:14:51.410421-03	1	2019-05-26
950	20.00	2018-09-01	310	2	2019-05-26 19:17:07.822707-03	1	2019-05-26
951	30.00	2019-05-01	40	2	2019-05-26 19:21:39.179771-03	1	2019-05-26
952	300.00	2019-05-01	162	5	2019-05-28 14:46:30.647405-03	1	2019-05-28
953	20.00	2019-05-01	233	5	2019-05-29 14:27:09.078785-03	1	2019-05-29
954	150.00	2019-05-01	174	2	2019-05-29 19:35:16.187144-03	1	2019-05-29
955	70.00	2019-05-01	229	5	2019-05-30 09:35:21.329284-03	1	2019-05-30
956	50.00	2019-05-01	227	5	2019-05-30 09:53:42.267065-03	1	2019-05-30
957	50.00	2019-03-01	79	3	2019-05-31 18:52:51.518956-03	1	2019-05-31
958	30.00	2019-05-01	39	3	2019-05-31 18:55:17.029279-03	1	2019-05-31
959	30.00	2019-03-01	170	2	2019-05-31 19:28:28.643548-03	1	2019-02-24
960	30.00	2018-11-01	170	2	2019-05-31 19:29:57.939677-03	1	2018-11-11
961	30.00	2019-06-01	170	2	2019-05-31 19:32:04.078693-03	1	2019-05-31
962	100.00	2019-06-01	228	2	2019-05-31 20:56:15.810064-03	1	2019-05-31
963	40.00	2019-05-01	191	2	2019-05-31 21:08:42.003761-03	1	2019-05-31
967	100.00	2019-06-01	194	2	2019-06-02 07:36:50.20927-03	1	2019-06-02
968	20.00	2019-06-01	114	2	2019-06-02 07:47:27.856942-03	1	2019-06-02
969	50.00	2019-06-01	226	2	2019-06-02 07:50:01.80893-03	1	2019-06-02
971	50.00	2019-06-01	62	2	2019-06-02 08:04:02.193063-03	1	2019-06-02
972	25.00	2019-06-01	124	2	2019-06-02 08:10:41.482557-03	1	2019-06-02
973	15.00	2019-06-01	154	2	2019-06-02 08:12:48.373317-03	1	2019-06-02
974	15.00	2019-06-01	152	2	2019-06-02 08:14:09.209007-03	1	2019-06-02
975	25.00	2019-06-01	97	2	2019-06-02 08:16:26.90006-03	1	2019-06-02
976	25.00	2019-05-01	97	2	2019-06-02 08:18:17.418692-03	1	2019-06-02
1127	50.00	2019-06-01	250	5	2019-06-25 10:08:41.646391-03	1	2019-06-25
978	20.00	2019-04-01	35	2	2019-06-02 08:21:47.421779-03	1	2019-06-02
979	20.00	2019-05-01	35	2	2019-06-02 08:22:51.227273-03	1	2019-06-02
980	10.00	2019-06-01	155	2	2019-06-02 08:23:53.920749-03	1	2019-06-02
996	10.00	2019-05-01	182	5	2019-06-05 09:01:28.59835-03	1	2019-06-05
982	60.00	2019-06-01	239	5	2019-06-04 16:00:47.089239-03	1	2019-06-04
983	160.00	2019-06-01	247	5	2019-06-04 16:40:19.136238-03	1	2019-06-04
984	130.00	2019-06-01	12	5	2019-06-04 16:41:44.578362-03	1	2019-06-04
986	100.00	2019-06-01	195	7	2019-06-04 19:07:50.814461-03	1	2019-06-04
987	20.00	2019-04-01	207	7	2019-06-04 19:16:22.980994-03	1	2019-06-04
988	50.00	2019-05-01	101	7	2019-06-04 19:17:24.006956-03	1	2019-06-04
989	50.00	2019-05-01	192	7	2019-06-04 19:18:14.292798-03	1	2019-06-04
990	50.00	2019-05-01	57	7	2019-06-04 19:19:49.982237-03	1	2019-06-04
985	20.00	2019-05-01	77	7	2019-06-04 18:51:00.283574-03	1	2019-06-04
991	30.00	2019-01-01	83	2	2019-06-04 19:45:10.81683-03	1	2019-06-04
992	30.00	2019-02-01	83	2	2019-06-04 19:45:27.210626-03	1	2019-06-04
993	30.00	2019-03-01	83	2	2019-06-04 19:45:43.469004-03	1	2019-06-04
994	30.00	2019-04-01	83	2	2019-06-04 19:45:53.977484-03	1	2019-06-04
995	30.00	2019-05-01	83	2	2019-06-04 19:46:09.907114-03	1	2019-06-04
997	90.00	2019-06-01	237	5	2019-06-05 10:10:31.528207-03	1	2019-06-05
998	20.00	2019-06-01	224	5	2019-06-05 10:16:47.441314-03	1	2019-06-05
999	50.00	2019-06-01	38	10	2019-06-05 19:57:40.947954-03	1	2019-06-05
1000	50.00	2019-05-01	14	10	2019-06-05 19:59:28.584859-03	1	2019-06-04
1001	10.00	2019-04-01	218	10	2019-06-05 20:01:10.813819-03	1	2019-06-04
1002	10.00	2019-05-01	218	10	2019-06-05 20:02:01.154981-03	1	2019-06-04
1003	10.00	2019-06-01	218	10	2019-06-05 20:02:17.265435-03	1	2019-06-04
1004	15.00	2019-05-01	185	10	2019-06-05 20:07:11.359463-03	1	2019-06-05
1005	15.00	2019-06-01	185	10	2019-06-05 20:07:52.445297-03	1	2019-06-05
1006	50.00	2019-06-01	246	5	2019-06-06 08:39:41.993565-03	1	2019-06-06
1007	50.00	2019-06-01	311	5	2019-06-06 09:44:38.915075-03	1	2019-06-06
1008	100.00	2019-07-01	208	5	2019-06-06 10:41:57.048048-03	1	2019-06-06
1009	15.00	2019-03-01	279	5	2019-06-06 15:53:18.621037-03	1	2019-06-06
1010	15.00	2019-04-01	279	5	2019-06-06 15:55:23.968864-03	1	2019-06-06
1011	100.00	2019-04-01	240	2	2019-06-06 19:59:01.015286-03	1	2019-06-06
1012	40.00	2019-05-01	261	5	2019-06-07 08:52:45.370804-03	1	2019-06-07
1013	40.00	2019-06-01	261	5	2019-06-07 08:53:14.469397-03	1	2019-06-07
1014	30.00	2019-05-01	268	5	2019-06-07 09:54:44.910072-03	1	2019-06-07
1015	100.00	2019-05-01	223	5	2019-06-07 09:56:20.767333-03	1	2019-06-07
1016	180.00	2019-06-01	312	5	2019-06-07 14:44:13.96708-03	1	2019-06-07
1017	40.00	2019-06-01	187	5	2019-06-07 14:47:56.707395-03	1	2019-06-07
1018	20.00	2019-06-01	188	5	2019-06-07 14:48:34.599946-03	1	2019-06-07
1019	5.00	2019-06-01	243	5	2019-06-07 14:59:21.196223-03	1	2019-06-07
1020	50.00	2019-06-01	126	5	2019-06-07 16:11:36.436223-03	1	2019-06-07
1021	30.00	2019-06-01	142	5	2019-06-08 10:14:32.94677-03	1	2019-06-08
1022	80.00	2019-06-01	153	13	2019-06-09 07:06:54.369194-03	1	2019-06-09
1023	20.00	2019-06-01	82	13	2019-06-09 07:09:47.151494-03	1	2019-06-09
1024	20.00	2019-06-01	78	13	2019-06-09 07:12:09.83786-03	1	2019-06-09
1025	50.00	2019-06-01	144	13	2019-06-09 07:13:12.690391-03	1	2019-06-09
1026	25.00	2019-05-01	189	13	2019-06-09 07:15:31.115704-03	1	2019-06-09
1027	25.00	2019-06-01	189	13	2019-06-09 07:16:25.384958-03	1	2019-06-09
1028	25.00	2019-05-01	203	13	2019-06-09 07:29:36.363488-03	1	2019-06-09
1029	25.00	2019-06-01	203	13	2019-06-09 07:33:14.150454-03	1	2019-06-09
1030	10.00	2019-03-01	199	13	2019-06-09 07:39:49.546538-03	1	2019-06-09
1031	10.00	2019-04-01	199	13	2019-06-09 07:40:21.423106-03	1	2019-06-09
1032	10.00	2019-05-01	199	13	2019-06-09 07:40:53.398944-03	1	2019-06-09
1033	10.00	2019-02-01	132	13	2019-06-09 07:44:27.860202-03	1	2019-06-09
1034	10.00	2019-03-01	132	13	2019-06-09 07:45:10.509455-03	1	2019-06-09
1035	10.00	2019-04-01	132	13	2019-06-09 07:45:52.535025-03	1	2019-06-09
1036	10.00	2019-05-01	132	13	2019-06-09 07:46:30.900421-03	1	2019-06-09
1047	30.00	2019-06-01	275	5	2019-06-11 09:29:55.719154-03	1	2019-06-11
1037	10.00	2019-01-01	132	13	2019-06-09 07:48:02.967107-03	1	2019-06-09
1038	25.00	2019-01-01	131	7	2019-06-09 08:05:41.999106-03	1	2019-06-09
1039	25.00	2019-02-01	131	7	2019-06-09 08:06:23.116543-03	1	2019-06-09
1040	25.00	2019-03-01	131	7	2019-06-09 08:07:05.1923-03	1	2019-06-09
1041	25.00	2019-04-01	131	7	2019-06-09 08:07:38.919236-03	1	2019-06-09
1042	25.00	2019-05-01	131	7	2019-06-09 08:08:17.520294-03	1	2019-06-09
1043	20.00	2019-06-01	202	7	2019-06-09 08:44:33.59454-03	1	2019-06-09
1044	10.00	2019-04-01	285	4	2019-06-09 19:15:25.677367-03	1	2019-06-09
1045	10.00	2019-05-01	285	4	2019-06-09 19:15:57.464274-03	1	2019-06-09
1046	50.00	2019-06-01	90	4	2019-06-09 19:17:42.822194-03	1	2019-06-09
1048	50.00	2019-06-01	164	5	2019-06-11 15:33:29.597296-03	1	2019-06-11
1049	50.00	2019-06-01	231	5	2019-06-11 17:39:15.892055-03	1	2019-06-11
1050	50.00	2019-06-01	64	7	2019-06-11 18:45:15.000866-03	1	2019-06-11
1051	20.00	2019-02-01	163	7	2019-06-11 18:50:31.875872-03	1	2019-06-11
1052	30.00	2019-06-01	134	7	2019-06-11 19:02:16.071304-03	1	2019-06-11
1053	50.00	2019-06-01	265	5	2019-06-12 08:33:09.295077-03	1	2019-06-12
1054	60.00	2019-06-01	264	5	2019-06-12 08:34:24.196712-03	1	2019-06-12
1055	50.00	2019-06-01	80	3	2019-06-12 18:45:18.889258-03	1	2019-06-12
1056	30.00	2019-06-01	8	3	2019-06-12 18:48:08.253092-03	1	2019-06-12
1057	20.00	2019-06-01	213	3	2019-06-12 18:55:51.961676-03	1	2019-06-12
1058	450.00	2019-06-01	27	3	2019-06-12 18:57:24.858679-03	1	2019-06-12
1059	100.00	2019-07-01	119	3	2019-06-12 19:00:13.061882-03	1	2019-06-12
1060	100.00	2019-06-01	216	5	2019-06-13 08:43:57.233192-03	1	2019-06-13
1061	20.00	2019-05-01	63	5	2019-06-13 15:06:35.904983-03	1	2019-06-13
1062	100.00	2019-06-01	183	4	2019-06-14 19:05:10.850262-03	1	2019-06-14
1063	30.00	2019-06-01	286	4	2019-06-14 19:08:17.410252-03	1	2019-06-13
1064	20.00	2019-06-01	168	4	2019-06-14 19:08:44.486544-03	1	2019-06-13
1065	20.00	2019-06-01	18	4	2019-06-14 19:09:20.388221-03	1	2019-06-13
1066	30.00	2019-06-01	56	4	2019-06-14 19:09:45.908548-03	1	2019-06-13
1067	20.00	2019-03-01	225	4	2019-06-14 19:11:06.850698-03	1	2019-06-13
1068	20.00	2019-04-01	225	4	2019-06-14 19:11:15.962066-03	1	2019-06-13
1069	200.00	2019-05-01	173	4	2019-06-14 19:19:59.745763-03	1	2019-06-14
1070	50.00	2019-06-01	116	5	2019-06-15 08:25:55.806042-03	1	2019-06-15
1071	20.00	2019-06-01	61	4	2019-06-16 06:53:19.631236-03	1	2019-06-16
1072	10.00	2019-06-01	60	4	2019-06-16 06:54:36.752445-03	1	2019-06-16
1073	200.00	2019-06-01	123	4	2019-06-16 07:00:17.050126-03	1	2019-06-16
1074	20.00	2019-06-01	274	4	2019-06-16 07:04:35.268033-03	1	2019-06-16
1075	40.00	2019-02-01	84	4	2019-06-16 07:05:37.709711-03	1	2019-06-16
1076	20.00	2019-06-01	297	4	2019-06-16 07:09:17.487643-03	1	2019-06-16
1077	150.00	2019-06-01	85	4	2019-06-16 07:11:51.746848-03	1	2019-06-16
1078	150.00	2019-06-01	88	4	2019-06-16 08:35:29.883413-03	1	2019-06-16
1079	30.00	2019-05-01	107	10	2019-06-16 18:52:13.629128-03	1	2019-03-17
1080	70.00	2019-06-01	50	10	2019-06-16 19:01:05.539221-03	1	2019-06-16
1081	50.00	2019-06-01	149	10	2019-06-16 19:04:31.541777-03	1	2019-06-16
1082	25.00	2019-05-01	133	10	2019-06-16 19:07:52.703112-03	1	2019-08-05
1083	100.00	2019-06-01	42	10	2019-06-16 19:10:47.407334-03	1	2019-03-17
1084	20.00	2019-04-01	145	10	2019-06-16 19:15:00.957959-03	1	2019-06-16
1085	20.00	2019-05-01	145	10	2019-06-16 19:15:33.587244-03	1	2019-06-16
1086	20.00	2019-06-01	145	10	2019-06-16 19:16:11.398653-03	1	2019-06-16
1087	100.00	2019-04-01	190	10	2019-06-16 19:19:43.505926-03	1	2019-06-16
1088	100.00	2019-06-01	104	2	2019-06-16 19:27:25.823784-03	1	2019-06-16
1089	100.00	2019-06-01	148	2	2019-06-16 19:30:09.915632-03	1	2019-06-16
1091	10.00	2019-05-01	286	2	2019-06-16 19:45:47.050211-03	1	2019-06-16
1090	10.00	2019-04-01	286	2	2019-06-16 19:45:16.229321-03	1	2019-06-16
1092	15.00	2019-05-01	177	5	2019-06-18 09:18:15.783459-03	1	2019-06-18
1093	20.00	2019-06-01	176	5	2019-06-18 09:19:42.00968-03	1	2019-06-18
1094	20.00	2019-04-01	34	5	2019-06-18 09:48:05.77782-03	1	2019-06-18
1095	20.00	2019-05-01	34	5	2019-06-18 09:48:52.963331-03	1	2019-06-18
1096	20.00	2019-06-01	34	5	2019-06-18 09:49:26.893957-03	1	2019-06-18
1097	20.00	2019-04-01	313	5	2019-06-18 09:54:58.58471-03	1	2019-06-18
1098	20.00	2019-05-01	313	5	2019-06-18 09:55:48.836926-03	1	2019-06-18
1099	20.00	2019-06-01	313	5	2019-06-18 09:56:27.521452-03	1	2019-06-18
1100	10.00	2019-05-01	281	5	2019-06-18 09:58:56.347019-03	1	2019-06-18
1101	10.00	2019-06-01	281	5	2019-06-18 09:59:47.264097-03	1	2019-06-18
1102	20.00	2019-06-01	314	7	2019-06-18 19:05:09.996685-03	1	2019-06-18
1103	30.00	2019-05-01	219	5	2019-06-19 10:16:59.252064-03	1	2019-06-19
1104	50.00	2019-05-01	232	5	2019-06-19 14:53:56.616872-03	1	2019-06-19
1105	50.00	2019-06-01	232	5	2019-06-19 14:54:26.710484-03	1	2019-06-19
1106	50.00	2019-06-01	306	10	2019-06-19 19:32:41.361005-03	1	2019-06-19
1107	20.00	2019-05-01	122	3	2019-06-20 06:57:13.244768-03	1	2019-06-20
1108	80.00	2019-02-01	19	3	2019-06-20 07:12:08.834765-03	1	2019-06-20
1109	60.00	2019-06-01	54	5	2019-06-21 08:34:13.831081-03	1	2019-06-21
1110	120.00	2019-03-01	241	5	2019-06-21 11:23:28.708355-03	1	2019-06-21
1111	10.00	2019-04-01	301	5	2019-06-21 14:21:59.964253-03	1	2019-06-21
1112	10.00	2019-04-01	302	5	2019-06-21 14:22:54.628674-03	1	2019-06-21
1113	30.00	2019-06-01	94	5	2019-06-21 16:00:00.153586-03	1	2019-06-21
1114	300.00	2019-06-01	162	5	2019-06-22 10:33:43.248474-03	1	2019-06-22
1115	30.00	2019-06-01	21	5	2019-06-22 14:47:22.962614-03	1	2019-06-22
977	50.00	2019-05-01	51	2	2019-06-02 08:19:59.482961-03	1	2019-06-02
1116	50.00	2019-06-01	51	2	2019-06-23 07:11:03.373007-03	1	2019-06-23
1117	20.00	2019-06-01	200	2	2019-06-23 07:13:20.536029-03	1	2019-06-23
1118	45.00	2019-06-01	113	2	2019-06-23 07:16:20.609194-03	1	2019-06-23
1119	5.00	2019-04-01	93	2	2019-06-23 07:23:24.230673-03	1	2019-06-23
1120	5.00	2019-05-01	93	2	2019-06-23 07:25:02.511196-03	1	2019-06-23
1121	5.00	2019-06-01	93	2	2019-06-23 07:27:06.223074-03	1	2019-06-23
1122	20.00	2019-06-01	298	2	2019-06-23 08:07:58.644771-03	1	2019-06-23
1123	30.00	2019-06-01	83	2	2019-06-23 08:10:13.952865-03	1	2019-06-23
1124	80.00	2019-05-01	71	2	2019-06-23 08:11:58.024412-03	1	2019-06-23
1125	500.00	2019-06-01	270	2	2019-06-23 08:13:09.614946-03	1	2019-06-23
1126	10.00	2019-06-01	315	2	2019-06-23 08:17:16.891964-03	1	2019-06-23
1128	10.00	2019-05-01	262	2	2019-06-25 19:17:22.676391-03	1	2019-06-23
1129	50.00	2019-05-01	299	2	2019-06-25 19:18:01.870074-03	1	2019-06-23
1130	40.00	2019-05-01	127	2	2019-06-25 19:18:54.192041-03	1	2019-06-23
1131	30.00	2019-05-01	271	2	2019-06-25 19:19:24.692855-03	1	2019-06-23
1132	30.00	2019-05-01	106	2	2019-06-25 19:19:51.395414-03	1	2019-06-23
1133	100.00	2019-06-01	211	2	2019-06-25 19:49:15.562251-03	1	2019-06-25
1134	100.00	2019-06-01	238	2	2019-06-25 19:58:13.564258-03	1	2019-06-25
1135	50.00	2019-06-01	212	2	2019-06-25 20:00:34.299751-03	1	2019-06-25
1136	15.00	2019-05-01	222	5	2019-06-26 09:43:39.150459-03	1	2019-06-26
1137	15.00	2019-06-01	222	5	2019-06-26 09:45:07.965356-03	1	2019-06-26
1138	15.00	2019-06-01	182	5	2019-06-26 09:58:03.460197-03	1	2019-06-26
1139	50.00	2019-06-01	227	5	2019-06-26 10:35:58.038592-03	1	2019-06-26
1140	20.00	2019-06-01	316	3	2019-06-26 19:46:33.516411-03	1	2019-06-26
1141	100.00	2019-06-01	230	5	2019-06-27 10:53:46.782786-03	1	2019-06-25
1142	20.00	2019-07-01	114	4	2019-06-30 07:00:46.322056-03	1	2019-06-30
1143	30.00	2019-07-01	52	4	2019-06-30 07:02:07.469858-03	1	2019-06-30
1144	30.00	2019-07-01	8	4	2019-06-30 07:03:41.94763-03	1	2019-06-30
1145	50.00	2019-07-01	79	4	2019-06-30 07:04:57.447428-03	1	2019-06-30
1146	20.00	2019-07-01	55	4	2019-06-30 08:46:55.224305-03	1	2019-06-30
1147	20.00	2019-08-01	55	4	2019-06-30 08:47:46.677449-03	1	2019-06-30
1148	130.00	2019-07-01	12	5	2019-07-02 10:57:40.179711-03	1	2019-07-02
1149	160.00	2019-07-01	247	5	2019-07-02 10:59:11.305944-03	1	2019-07-02
1150	20.00	2019-06-01	233	5	2019-07-02 15:22:51.087455-03	1	2019-07-02
1151	15.00	2019-06-01	214	5	2019-07-02 15:57:34.556964-03	1	2019-07-02
1152	15.00	2019-07-01	214	5	2019-07-02 15:58:25.331681-03	1	2019-07-02
1153	20.00	2019-06-01	77	7	2019-07-02 19:00:58.338576-03	1	2019-07-02
1154	20.00	2019-07-01	77	7	2019-07-02 19:01:38.253004-03	1	2019-07-02
1155	50.00	2019-07-01	144	7	2019-07-02 19:03:07.131426-03	1	2019-07-02
1156	200.00	2019-01-01	119	7	2019-07-02 19:08:59.761822-03	1	2019-07-02
1157	50.00	2019-07-01	62	7	2019-07-02 19:14:01.695638-03	1	2019-07-02
1158	50.00	2019-06-01	4	7	2019-07-02 19:16:05.630349-03	1	2019-07-02
1159	50.00	2019-07-01	4	7	2019-07-02 19:16:56.158146-03	1	2019-07-02
1160	20.00	2019-07-01	72	7	2019-07-02 19:18:26.353017-03	1	2019-07-02
1161	20.00	2019-06-01	72	7	2019-07-02 19:19:20.765397-03	1	2019-07-02
1162	20.00	2019-07-01	63	7	2019-07-02 19:21:19.254609-03	1	2019-07-02
1163	100.00	2019-07-01	228	7	2019-07-02 19:23:10.251879-03	1	2019-07-02
1164	20.00	2019-06-01	49	5	2019-07-03 08:43:22.720574-03	1	2019-07-03
1165	20.00	2019-07-01	49	5	2019-07-03 08:44:22.822881-03	1	2019-07-03
1166	50.00	2019-06-01	25	5	2019-07-03 08:49:58.629783-03	1	2019-07-03
1167	50.00	2019-07-01	246	5	2019-07-03 09:49:02.59908-03	1	2019-07-03
1168	30.00	2019-06-01	268	5	2019-07-03 10:33:13.693929-03	1	2019-07-03
1169	50.00	2019-07-01	311	5	2019-07-03 16:46:21.676993-03	1	2019-07-03
1170	345.00	2019-07-01	317	5	2019-07-03 16:58:39.18543-03	1	2019-07-03
1171	60.00	2019-07-01	264	5	2019-07-04 09:06:09.759931-03	1	2019-07-04
1172	50.00	2019-07-01	265	5	2019-07-04 09:07:12.346976-03	1	2019-07-04
1173	20.00	2019-06-01	282	5	2019-07-04 09:14:26.171724-03	1	2019-07-04
1174	20.00	2019-07-01	282	5	2019-07-04 09:15:09.452028-03	1	2019-07-04
1175	20.00	2019-07-01	313	5	2019-07-04 14:12:34.975471-03	1	2019-07-04
1176	20.00	2019-08-01	313	5	2019-07-04 14:13:03.620208-03	1	2019-07-04
1177	20.00	2019-09-01	313	5	2019-07-04 14:13:30.913862-03	1	2019-07-04
1178	20.00	2019-07-01	34	5	2019-07-04 14:18:34.789812-03	1	2019-07-04
1179	20.00	2019-08-01	34	5	2019-07-04 14:18:55.163226-03	1	2019-07-04
1180	20.00	2019-09-01	34	5	2019-07-04 14:19:18.79057-03	1	2019-07-04
1181	10.00	2019-06-01	47	5	2019-07-04 15:44:52.47438-03	1	2019-07-04
1182	10.00	2019-07-01	47	5	2019-07-04 15:45:20.937428-03	1	2019-07-04
1183	90.00	2019-07-01	237	5	2019-07-04 16:26:24.874226-03	1	2019-07-04
1184	50.00	2019-07-01	306	5	2019-07-04 16:58:42.84907-03	1	2019-07-04
1185	25.00	2019-06-01	76	14	2019-07-04 19:12:54.402101-03	1	2019-07-04
1186	30.00	2019-06-01	107	14	2019-07-04 19:19:22.259617-03	1	2019-07-04
1187	50.00	2019-05-01	100	14	2019-07-04 19:22:55.876062-03	1	2019-07-04
1188	50.00	2019-06-01	100	14	2019-07-04 19:26:56.380381-03	1	2019-07-04
1189	50.00	2019-05-01	159	14	2019-07-04 19:29:08.029804-03	1	2019-07-04
1190	50.00	2019-06-01	159	14	2019-07-04 19:32:23.62093-03	1	2019-07-04
1191	50.00	2019-07-01	159	14	2019-07-04 19:34:52.61731-03	1	2019-07-04
1192	40.00	2019-06-01	191	14	2019-07-04 19:54:25.656824-03	1	2019-07-04
1193	25.00	2019-06-01	130	14	2019-07-04 19:56:34.020334-03	1	2019-07-04
1194	100.00	2019-05-01	194	14	2019-07-04 19:59:18.295858-03	1	2019-07-04
1195	10.00	2019-06-01	135	5	2019-07-05 14:40:15.680242-03	1	2019-07-05
1196	10.00	2019-07-01	135	5	2019-07-05 14:41:02.331628-03	1	2019-07-05
1197	25.00	2019-04-01	175	5	2019-07-05 14:49:26.737439-03	1	2019-07-05
1198	25.00	2019-05-01	175	5	2019-07-05 14:50:03.204374-03	1	2019-07-05
1199	25.00	2019-06-01	175	5	2019-07-05 14:50:28.225547-03	1	2019-07-05
1200	50.00	2019-06-01	192	5	2019-07-05 14:53:20.726428-03	1	2019-07-05
1201	100.00	2019-07-01	150	5	2019-07-05 15:02:30.178332-03	1	2019-07-05
1202	50.00	2019-07-01	318	5	2019-07-05 16:26:05.006019-03	1	2019-07-05
1203	100.00	2019-08-01	208	5	2019-07-05 16:27:37.359599-03	1	2019-07-05
1204	50.00	2019-07-01	319	5	2019-07-05 16:41:42.146204-03	1	2019-07-05
1205	50.00	2019-05-01	267	5	2019-07-06 09:12:26.67243-03	1	2019-07-06
1206	50.00	2019-06-01	267	5	2019-07-06 09:12:57.067762-03	1	2019-07-06
1207	20.00	2019-07-01	224	5	2019-07-06 09:23:15.033552-03	1	2019-07-06
1208	30.00	2019-07-01	142	5	2019-07-06 09:52:25.829968-03	1	2019-07-06
1209	50.00	2019-07-01	126	5	2019-07-06 17:19:59.901501-03	1	2019-07-06
1210	50.00	2019-06-01	57	2	2019-07-07 07:23:59.500702-03	1	2019-07-07
1211	25.00	2019-07-01	189	2	2019-07-07 07:27:03.134831-03	1	2019-07-07
1212	25.00	2019-08-01	189	2	2019-07-07 07:28:00.978816-03	1	2019-07-07
1213	15.00	2019-07-01	152	2	2019-07-07 07:30:21.531621-03	1	2019-07-07
1214	15.00	2019-07-01	154	2	2019-07-07 07:32:24.449703-03	1	2019-07-07
1215	10.00	2019-05-01	165	2	2019-07-07 07:34:16.023519-03	1	2019-07-07
1216	150.00	2019-07-01	70	2	2019-07-07 07:35:52.171732-03	1	2019-07-07
1217	50.00	2019-07-01	80	2	2019-07-07 07:37:22.150351-03	1	2019-07-07
1218	100.00	2019-05-01	242	2	2019-07-07 07:39:06.679097-03	1	2019-07-07
1219	100.00	2019-06-01	242	2	2019-07-07 07:40:19.287248-03	1	2019-07-07
1220	100.00	2019-07-01	242	2	2019-07-07 07:41:16.605814-03	1	2019-07-07
1221	30.00	2019-05-01	125	2	2019-07-07 07:43:52.552982-03	1	2019-07-07
1222	50.00	2019-06-01	295	2	2019-07-07 07:45:29.289493-03	1	2019-07-07
1223	50.00	2019-06-01	296	2	2019-07-07 07:48:51.072449-03	1	2019-07-07
1224	100.00	2019-07-01	148	2	2019-07-07 07:51:29.34343-03	1	2019-07-07
1225	50.00	2019-07-01	195	2	2019-07-07 07:53:06.752559-03	1	2019-07-07
1226	20.00	2019-03-01	204	2	2019-07-07 07:54:46.880512-03	1	2019-07-07
1227	20.00	2019-07-01	78	2	2019-07-07 07:56:01.031407-03	1	2019-07-07
1228	50.00	2019-07-01	209	2	2019-07-07 07:57:30.422077-03	1	2019-07-07
1229	300.00	2019-06-01	309	2	2019-07-07 07:59:15.326329-03	1	2019-07-07
1230	80.00	2019-07-01	153	2	2019-07-07 08:01:50.925406-03	1	2019-07-07
1231	40.00	2019-03-01	84	2	2019-07-07 08:03:33.355602-03	1	2019-07-07
1232	20.00	2019-07-01	151	2	2019-07-07 08:05:32.627426-03	1	2019-07-07
1233	50.00	2019-04-01	259	2	2019-07-07 08:06:52.847384-03	1	2019-07-07
1234	10.00	2019-06-01	165	2	2019-07-07 08:08:54.026919-03	1	2019-07-07
1235	200.00	2019-07-01	123	2	2019-07-07 08:10:02.931884-03	1	2019-07-07
1236	150.00	2019-07-01	53	2	2019-07-07 08:11:19.616483-03	1	2019-07-07
1237	50.00	2019-05-01	172	2	2019-07-07 08:12:41.594561-03	1	2019-07-07
1238	50.00	2019-06-01	172	2	2019-07-07 08:13:37.845228-03	1	2019-07-07
1239	5.00	2019-07-01	243	2	2019-07-07 08:15:33.303384-03	1	2019-07-07
1240	10.00	2019-05-01	128	2	2019-07-07 08:16:36.765973-03	1	2019-07-07
1241	60.00	2019-06-01	257	2	2019-07-07 08:18:40.428797-03	1	2019-07-07
1242	25.00	2019-07-01	124	2	2019-07-07 08:20:47.318849-03	1	2019-07-07
1243	10.00	2019-03-01	205	2	2019-07-07 08:23:57.502346-03	1	2019-07-07
1244	10.00	2019-04-01	205	2	2019-07-07 08:24:24.710845-03	1	2019-07-07
1245	10.00	2019-05-01	205	2	2019-07-07 08:25:08.762259-03	1	2019-07-07
1246	10.00	2019-06-01	205	2	2019-07-07 08:25:51.967338-03	1	2019-07-07
1247	10.00	2019-07-01	205	2	2019-07-07 08:26:24.656176-03	1	2019-07-07
1248	10.00	2019-06-01	128	2	2019-07-07 08:28:58.047959-03	1	2019-07-07
1249	10.00	2019-07-01	128	2	2019-07-07 08:29:50.951646-03	1	2019-07-07
1250	5.00	2019-08-01	243	2	2019-07-07 08:31:53.587648-03	1	2019-07-07
1251	100.00	2019-07-01	216	5	2019-07-09 09:07:25.639821-03	1	2019-07-09
1252	100.00	2019-05-01	278	5	2019-07-09 11:05:27.417687-03	1	2019-07-09
1253	100.00	2019-06-01	278	5	2019-07-09 11:05:49.159273-03	1	2019-07-09
1254	100.00	2019-07-01	278	5	2019-07-09 11:06:10.561908-03	1	2019-07-09
1255	60.00	2019-07-01	54	5	2019-07-09 14:27:30.764449-03	1	2019-07-09
1256	10.00	2019-05-01	302	5	2019-07-10 09:34:08.538623-03	1	2019-07-10
1257	10.00	2019-05-01	301	5	2019-07-10 09:35:09.095006-03	1	2019-07-10
1258	10.00	2019-06-01	320	5	2019-07-10 14:52:46.494432-03	1	2019-07-10
1259	10.00	2019-07-01	320	5	2019-07-10 14:53:10.944783-03	1	2019-07-10
1260	10.00	2019-08-01	320	5	2019-07-10 14:53:35.347187-03	1	2019-07-10
1261	10.00	2019-06-01	141	5	2019-07-10 14:56:25.759107-03	1	2019-07-10
1262	10.00	2019-07-01	141	5	2019-07-10 14:56:58.614176-03	1	2019-07-10
1263	20.00	2019-05-01	225	5	2019-07-10 15:57:01.64305-03	1	2019-07-10
1264	20.00	2019-06-01	225	5	2019-07-10 15:57:33.10158-03	1	2019-07-10
1265	15.00	2019-06-01	177	3	2019-07-10 18:59:34.53426-03	1	2019-07-10
1266	20.00	2019-01-01	17	3	2019-07-10 19:11:41.658828-03	1	2019-07-10
1267	20.00	2019-02-01	17	3	2019-07-10 19:13:10.775115-03	1	2019-07-10
1268	20.00	2019-03-01	17	3	2019-07-10 19:13:56.387379-03	1	2019-07-10
1269	20.00	2019-04-01	17	3	2019-07-10 19:15:46.592625-03	1	2019-07-10
1270	20.00	2019-05-01	17	3	2019-07-10 19:16:34.684534-03	1	2019-07-10
1271	50.00	2019-07-01	110	3	2019-07-10 19:25:51.559834-03	1	2019-07-10
1272	50.00	2019-06-01	110	3	2019-07-10 19:26:37.939695-03	1	2019-07-10
1273	100.00	2019-06-01	174	3	2019-07-10 19:33:26.895385-03	1	2019-07-10
1274	50.00	2019-06-01	198	3	2019-07-10 19:54:52.805202-03	1	2019-07-10
1275	100.00	2019-06-01	223	5	2019-07-11 10:37:03.368382-03	1	2019-07-11
1276	50.00	2019-07-01	116	5	2019-07-11 10:46:17.438896-03	1	2019-07-11
1277	15.00	2019-05-01	279	5	2019-07-11 10:47:41.524978-03	1	2019-07-06
1278	15.00	2019-06-01	279	5	2019-07-11 10:48:19.073799-03	1	2019-07-06
1279	50.00	2019-07-01	231	5	2019-07-11 10:53:42.736794-03	1	2019-07-06
1280	30.00	2019-07-01	134	5	2019-07-11 10:54:51.123212-03	1	2019-07-06
1281	50.00	2019-07-01	321	2	2019-07-11 19:59:06.091995-03	1	2019-07-11
1282	40.00	2019-07-01	261	5	2019-07-12 08:30:54.813801-03	1	2019-07-12
1283	30.00	2019-07-01	275	5	2019-07-12 09:55:40.92024-03	1	2019-07-12
1284	50.00	2019-07-01	168	4	2019-07-12 18:37:19.914878-03	1	2019-07-12
1285	20.00	2019-07-01	213	4	2019-07-12 18:38:46.026739-03	1	2019-07-12
1286	40.00	2019-06-01	249	5	2019-07-13 10:16:47.639331-03	1	2019-07-13
1287	120.00	2019-04-01	241	5	2019-07-13 10:41:06.715814-03	1	2019-07-13
1288	30.00	2019-07-01	21	5	2019-07-13 11:17:33.673973-03	1	2019-07-13
1289	30.00	2019-07-01	286	5	2019-07-13 11:38:20.3739-03	1	2019-07-13
1290	25.00	2019-06-01	39	10	2019-07-14 07:07:38.605348-03	1	2019-07-14
1291	25.00	2019-07-01	39	10	2019-07-14 07:08:24.231476-03	1	2019-07-14
1292	10.00	2019-07-01	165	10	2019-07-14 07:09:51.145145-03	1	2019-07-14
1293	100.00	2019-05-01	98	10	2019-07-14 07:14:48.308685-03	1	2019-07-14
1294	100.00	2019-06-01	98	10	2019-07-14 07:15:04.7187-03	1	2019-07-14
1295	100.00	2019-07-01	98	10	2019-07-14 07:15:55.887584-03	1	2019-07-14
1296	10.00	2019-07-01	60	10	2019-07-14 07:19:23.076695-03	1	2019-07-15
1297	20.00	2019-10-01	292	10	2019-07-14 07:27:38.938795-03	1	2019-07-14
1298	20.00	2019-11-01	292	10	2019-07-14 07:28:18.548181-03	1	2019-07-14
1299	20.00	2019-12-01	292	10	2019-07-14 07:28:59.556078-03	1	2019-07-14
1300	20.00	2019-07-01	61	10	2019-07-14 07:30:43.117675-03	1	2019-07-14
1301	45.00	2019-07-01	113	10	2019-07-14 07:32:05.398964-03	1	2019-07-14
1302	25.00	2019-06-01	133	10	2019-07-14 07:34:14.214933-03	1	2019-07-14
1303	25.00	2019-07-01	133	10	2019-07-14 07:34:52.454408-03	1	2019-07-14
1304	20.00	2019-07-01	145	10	2019-07-14 07:36:46.484576-03	1	2019-07-14
1305	150.00	2019-07-01	85	10	2019-07-14 07:38:19.755393-03	1	2019-07-14
1306	20.00	2019-07-01	82	10	2019-07-14 07:41:02.317059-03	1	2019-07-14
1307	50.00	2019-07-01	226	10	2019-07-14 07:43:14.387802-03	1	2019-07-14
1308	20.00	2019-07-01	33	10	2019-07-14 07:57:27.388625-03	1	2019-07-14
1309	50.00	2019-05-01	217	10	2019-07-14 08:02:39.599497-03	1	2019-07-13
1310	50.00	2019-06-01	217	10	2019-07-14 08:03:01.525545-03	1	2019-07-13
1311	50.00	2019-07-01	217	10	2019-07-14 08:03:18.404513-03	1	2019-07-13
1312	50.00	2019-08-01	217	10	2019-07-14 08:03:39.992803-03	1	2019-07-13
1313	10.00	2019-08-01	93	10	2019-07-14 08:04:21.520714-03	1	2019-07-13
1314	10.00	2019-09-01	93	10	2019-07-14 08:04:52.747045-03	1	2019-07-13
1315	50.00	2019-01-01	196	10	2019-07-14 08:14:16.798597-03	1	2019-07-09
1316	50.00	2019-02-01	196	10	2019-07-14 08:14:31.202414-03	1	2019-07-09
1317	100.00	2019-07-01	183	10	2019-07-14 08:15:08.932594-03	1	2019-07-09
1318	30.00	2019-06-01	106	2	2019-07-16 19:03:18.967589-03	1	2019-07-14
1319	40.00	2019-06-01	127	2	2019-07-16 19:05:09.88432-03	1	2019-07-14
1320	70.00	2019-07-01	50	2	2019-07-16 19:06:21.742216-03	1	2019-07-14
1321	50.00	2019-06-01	299	2	2019-07-16 19:07:01.015962-03	1	2019-07-14
1322	100.00	2019-07-01	104	2	2019-07-16 19:07:49.440619-03	1	2019-07-14
1323	30.00	2019-06-01	40	2	2019-07-16 19:08:33.284813-03	1	2019-07-14
1324	100.00	2019-07-01	42	2	2019-07-16 19:09:33.206587-03	1	2019-07-16
1325	70.00	2019-03-01	19	2	2019-07-16 19:20:38.656755-03	1	2019-07-16
1326	500.00	2019-07-01	270	5	2019-07-17 10:43:56.688591-03	1	2019-07-17
1327	400.00	2019-07-01	162	5	2019-07-19 11:00:59.088625-03	1	2019-07-19
1328	30.00	2019-07-01	94	4	2019-07-19 18:57:11.836339-03	1	2019-07-19
1329	100.00	2019-05-01	284	4	2019-07-19 19:02:37.874089-03	1	2019-07-19
1330	100.00	2019-06-01	284	4	2019-07-19 19:03:08.285254-03	1	2019-07-19
1331	100.00	2019-07-01	284	4	2019-07-19 19:03:32.083338-03	1	2019-07-19
1332	150.00	2019-06-01	173	4	2019-07-19 19:15:26.862522-03	1	2019-07-19
1333	20.00	2019-06-01	163	4	2019-07-19 19:37:17.967367-03	1	2019-07-19
1334	40.00	2019-07-01	38	4	2019-07-19 19:51:04.351515-03	1	2019-07-19
1335	25.00	2019-07-01	56	4	2019-07-21 07:02:54.694695-03	1	2019-07-21
1336	35.00	2019-05-01	137	4	2019-07-21 07:04:55.031538-03	1	2019-07-21
1337	100.00	2019-05-01	115	4	2019-07-21 07:17:22.369924-03	1	2019-07-21
1338	100.00	2019-06-01	115	4	2019-07-21 07:18:28.335428-03	1	2019-07-21
1339	15.00	2019-04-01	289	4	2019-07-21 07:43:19.740585-03	1	2019-07-21
1340	15.00	2019-05-01	118	4	2019-07-21 08:05:13.193302-03	1	2019-07-21
1341	15.00	2019-06-01	118	4	2019-07-21 08:05:28.422736-03	1	2019-07-21
1342	15.00	2019-07-01	118	4	2019-07-21 08:06:00.466115-03	1	2019-07-21
1343	450.00	2019-07-01	27	2	2019-07-21 19:02:16.061113-03	1	2019-07-21
1344	20.00	2019-07-01	322	7	2019-07-23 19:38:21.962484-03	1	2019-07-23
1345	20.00	2019-07-01	303	7	2019-07-23 19:56:46.651947-03	1	2019-07-23
1346	10.00	2019-05-01	273	5	2019-07-24 08:42:05.701026-03	1	2019-07-24
1347	10.00	2019-06-01	273	5	2019-07-24 08:43:37.27277-03	1	2019-07-24
1348	10.00	2019-07-01	273	5	2019-07-24 08:44:47.071977-03	1	2019-07-24
1349	100.00	2019-07-01	230	5	2019-07-26 08:48:50.748154-03	1	2019-07-26
1350	100.00	2019-07-01	238	5	2019-07-27 15:50:11.004825-03	1	2019-07-27
1351	50.00	2019-07-01	211	5	2019-07-27 15:51:39.416149-03	1	2019-07-27
1352	100.00	2019-07-01	212	5	2019-07-27 15:57:07.261229-03	1	2019-07-27
1353	20.00	2019-07-01	298	13	2019-07-28 06:58:22.135567-03	1	2019-07-28
1354	10.00	2019-06-01	201	13	2019-07-28 07:01:04.408978-03	1	2019-07-28
1355	50.00	2019-07-01	51	13	2019-07-28 07:03:31.796501-03	1	2019-07-28
1356	20.00	2019-05-01	120	13	2019-07-28 07:06:48.236813-03	1	2019-07-28
1357	20.00	2019-06-01	120	13	2019-07-28 07:08:08.069444-03	1	2019-07-28
1358	50.00	2019-06-01	48	13	2019-07-28 07:32:51.537848-03	1	2019-07-28
1359	50.00	2019-06-01	46	13	2019-07-28 07:35:00.454878-03	1	2019-07-28
1360	80.00	2019-06-01	71	13	2019-07-28 07:36:58.406403-03	1	2019-07-28
1361	30.00	2019-07-01	83	7	2019-07-28 08:45:27.013604-03	1	2019-07-28
1362	70.00	2019-06-01	229	5	2019-07-30 09:28:42.435312-03	1	2019-07-30
1363	30.00	2019-06-01	219	5	2019-07-30 09:37:55.902096-03	1	2019-07-30
1364	20.00	2019-06-01	258	7	2019-07-30 18:57:53.592722-03	1	2019-07-28
1365	20.00	2019-07-01	258	7	2019-07-30 18:58:05.638846-03	1	2019-07-28
1366	30.00	2019-07-01	107	7	2019-07-30 18:59:05.124442-03	1	2019-07-28
1367	25.00	2019-07-01	203	7	2019-07-30 19:06:00.786835-03	1	2019-07-30
1368	50.00	2019-07-01	227	7	2019-07-30 19:07:59.552276-03	1	2019-07-30
1369	10.00	2019-02-01	103	7	2019-07-30 19:10:08.210364-03	1	2019-07-30
1370	10.00	2019-03-01	103	7	2019-07-30 19:10:46.741044-03	1	2019-07-30
1371	10.00	2019-04-01	103	7	2019-07-30 19:11:17.071788-03	1	2019-07-30
1372	10.00	2019-05-01	103	7	2019-07-30 19:11:46.467186-03	1	2019-07-30
1373	10.00	2019-06-01	103	7	2019-07-30 19:13:00.167859-03	1	2019-07-30
1374	200.00	2019-07-01	174	7	2019-07-30 19:33:45.481997-03	1	2019-07-30
1375	10.00	2019-07-01	291	5	2019-07-31 15:28:53.785389-03	1	2019-07-31
1376	10.00	2019-08-01	291	5	2019-07-31 15:30:07.668949-03	1	2019-07-31
1377	10.00	2019-09-01	291	5	2019-07-31 15:30:27.811053-03	1	2019-07-31
1378	10.00	2019-10-01	291	5	2019-07-31 15:30:52.254696-03	1	2019-07-31
1379	10.00	2019-11-01	291	5	2019-07-31 15:31:13.099767-03	1	2019-07-31
1380	90.00	2019-08-01	237	5	2019-07-31 15:32:16.877806-03	1	2019-07-31
1381	10.00	2019-01-01	323	5	2019-07-31 15:41:50.325299-03	1	2019-07-31
1382	10.00	2019-02-01	323	5	2019-07-31 15:42:27.398352-03	1	2019-07-31
1383	10.00	2019-03-01	323	5	2019-07-31 15:42:46.576772-03	1	2019-07-31
1384	10.00	2019-04-01	323	5	2019-07-31 15:43:16.962468-03	1	2019-07-31
1385	10.00	2019-05-01	323	5	2019-07-31 15:43:34.361155-03	1	2019-07-31
1386	10.00	2019-06-01	323	5	2019-07-31 15:43:51.740072-03	1	2019-07-31
1387	10.00	2019-07-01	323	5	2019-07-31 15:44:10.774985-03	1	2019-07-31
1388	10.00	2019-08-01	323	5	2019-07-31 15:44:28.671815-03	1	2019-07-31
1389	10.00	2019-09-01	323	5	2019-07-31 15:44:46.332055-03	1	2019-07-31
1390	10.00	2019-10-01	323	5	2019-07-31 15:45:04.2685-03	1	2019-07-31
1391	10.00	2019-07-01	182	5	2019-07-31 15:50:35.876791-03	1	2019-07-31
1392	50.00	2019-07-01	14	3	2019-07-31 18:41:06.449334-03	1	2019-07-31
1393	30.00	2019-08-01	8	3	2019-07-31 18:43:19.454653-03	1	2019-07-31
1394	20.00	2019-07-01	225	3	2019-07-31 18:59:56.070117-03	1	2019-07-31
1395	20.00	2019-08-01	225	3	2019-07-31 19:01:10.037037-03	1	2019-07-31
1396	30.00	2019-07-01	170	3	2019-07-31 19:16:08.314582-03	1	2019-07-31
1397	40.00	2019-07-01	191	14	2019-08-01 19:19:46.090464-03	1	2019-08-01
1398	40.00	2019-07-01	127	14	2019-08-01 19:21:39.716259-03	1	2019-08-01
1399	50.00	2019-08-01	126	5	2019-08-02 10:49:49.709397-03	1	2019-08-02
1400	100.00	2019-09-01	208	5	2019-08-02 14:49:27.793864-03	1	2019-08-02
1401	50.00	2019-08-01	318	5	2019-08-02 14:51:44.14323-03	1	2019-08-02
1402	40.00	2019-07-01	187	5	2019-08-02 16:37:48.527645-03	1	2019-08-02
1403	40.00	2019-08-01	187	5	2019-08-02 16:38:16.49488-03	1	2019-08-02
1404	20.00	2019-07-01	188	5	2019-08-02 16:39:01.454407-03	1	2019-08-02
1405	20.00	2019-08-01	188	5	2019-08-02 16:39:26.771685-03	1	2019-08-02
1406	50.00	2019-07-01	267	5	2019-08-03 08:20:06.285111-03	1	2019-08-03
1407	50.00	2019-05-01	79	2	2019-08-04 06:56:54.842494-03	1	2019-08-04
1408	100.00	2019-08-01	67	2	2019-08-04 06:59:46.46927-03	1	2019-08-04
1409	15.00	2019-08-01	154	2	2019-08-04 07:01:55.995616-03	1	2019-08-04
1410	15.00	2019-08-01	152	2	2019-08-04 07:03:21.569755-03	1	2019-08-04
1411	20.00	2019-08-01	213	2	2019-08-04 07:05:49.990723-03	1	2019-08-04
1412	20.00	2019-08-01	114	2	2019-08-04 07:08:07.203762-03	1	2019-08-04
1413	50.00	2019-08-01	226	2	2019-08-04 07:12:29.033701-03	1	2019-08-04
1414	30.00	2019-08-01	125	2	2019-08-04 07:16:03.202654-03	1	2019-08-04
1415	50.00	2019-07-01	57	2	2019-08-04 07:18:07.081104-03	1	2019-08-04
1416	20.00	2019-08-01	82	2	2019-08-04 07:19:28.635669-03	1	2019-08-04
1417	100.00	2019-08-01	278	2	2019-08-04 07:21:26.102285-03	1	2019-08-04
1418	25.00	2019-08-01	124	2	2019-08-04 07:23:35.212665-03	1	2019-08-04
1419	100.00	2019-08-01	98	2	2019-08-04 07:25:35.364184-03	1	2019-08-04
1420	100.00	2019-08-01	115	2	2019-08-04 07:28:22.754076-03	1	2019-08-04
1421	150.00	2019-08-01	70	2	2019-08-04 07:29:56.011664-03	1	2019-08-04
1422	30.00	2019-08-01	52	2	2019-08-04 07:31:58.511957-03	1	2019-08-04
1423	50.00	2019-06-01	184	2	2019-08-04 07:33:19.120979-03	1	2019-08-04
1424	50.00	2019-08-01	246	5	2019-08-06 16:17:38.247472-03	1	2019-08-06
1425	100.00	2019-05-01	190	7	2019-08-06 19:08:48.253354-03	1	2019-08-04
1426	50.00	2019-08-01	62	7	2019-08-06 19:09:42.922754-03	1	2019-08-04
1427	30.00	2019-07-01	106	7	2019-08-06 19:10:41.310008-03	1	2019-08-04
1428	10.00	2019-08-01	135	7	2019-08-06 19:12:17.840624-03	1	2019-08-04
1429	10.00	2019-09-01	135	7	2019-08-06 19:14:22.000291-03	1	2019-08-04
1430	10.00	2019-06-01	262	7	2019-08-06 19:15:06.085132-03	1	2019-08-04
1431	50.00	2019-06-01	101	7	2019-08-06 19:15:42.035484-03	1	2019-08-04
1432	50.00	2019-07-01	101	7	2019-08-06 19:16:41.038757-03	1	2019-08-04
1433	50.00	2019-08-01	195	7	2019-08-06 19:17:29.270112-03	1	2019-08-04
1770	20.00	2019-10-01	282	5	2019-10-01 10:30:43.627657-03	1	2019-10-01
1435	50.00	2019-07-01	100	7	2019-08-06 19:26:21.256671-03	1	2019-08-04
1436	100.00	2019-08-01	228	7	2019-08-06 19:26:58.549353-03	1	2019-08-04
1437	50.00	2019-08-01	38	7	2019-08-06 19:29:57.768939-03	1	2019-08-06
1438	40.00	2019-06-01	206	7	2019-08-06 19:34:34.181507-03	1	2019-08-06
1439	40.00	2019-07-01	206	7	2019-08-06 19:35:02.415482-03	1	2019-08-06
1440	50.00	2019-08-01	64	7	2019-08-06 19:36:20.983392-03	1	2019-08-06
1441	20.00	2019-06-01	63	7	2019-08-06 19:38:42.716801-03	1	2019-08-06
1442	10.00	2019-08-01	103	7	2019-08-06 19:39:55.27198-03	1	2019-08-06
1443	10.00	2019-07-01	103	7	2019-08-06 19:41:14.635204-03	1	2019-08-06
1444	30.00	2019-08-01	134	7	2019-08-06 19:42:49.11915-03	1	2019-08-06
1445	50.00	2019-08-01	265	5	2019-08-07 08:49:14.808422-03	1	2019-08-07
1446	60.00	2019-08-01	264	5	2019-08-07 08:50:57.840653-03	1	2019-08-07
1447	20.00	2019-07-01	233	5	2019-08-07 14:26:11.086778-03	1	2019-08-07
1448	50.00	2019-08-01	319	5	2019-08-07 17:01:39.757994-03	1	2019-08-07
1449	20.00	2019-08-01	303	3	2019-08-07 18:47:08.963928-03	1	2019-08-07
1450	50.00	2019-08-01	80	3	2019-08-07 18:49:02.106442-03	1	2019-08-07
1451	20.00	2019-08-01	77	3	2019-08-07 18:58:57.248763-03	1	2019-08-07
1452	100.00	2019-06-01	102	3	2019-08-07 19:06:42.537171-03	1	2019-08-07
1453	130.00	2019-08-01	12	3	2019-08-07 19:53:24.406881-03	1	2019-08-07
1454	160.00	2019-08-01	247	3	2019-08-07 19:56:10.924483-03	1	2019-08-07
1455	20.00	2019-08-01	167	5	2019-08-08 08:38:18.712857-03	1	2019-08-08
1456	20.00	2019-09-01	167	5	2019-08-08 08:38:49.920691-03	1	2019-08-08
1457	20.00	2019-08-01	49	5	2019-08-09 08:29:17.464858-03	1	2019-08-09
1458	20.00	2019-09-01	49	5	2019-08-09 08:29:55.821779-03	1	2019-08-09
1459	300.00	2019-07-01	309	5	2019-08-09 15:52:55.540395-03	1	2019-08-09
1460	20.00	2019-08-01	224	5	2019-08-09 16:45:31.553901-03	1	2019-08-09
1461	30.00	2019-07-01	268	5	2019-08-09 16:47:00.84437-03	1	2019-08-09
1462	500.00	2019-08-01	270	5	2019-08-10 11:59:40.321521-03	1	2019-08-10
1463	15.00	2019-07-01	279	5	2019-08-10 14:56:26.727646-03	1	2019-08-10
1464	50.00	2019-08-01	269	5	2019-08-10 14:59:11.953153-03	1	2019-08-10
1465	150.00	2019-08-01	53	7	2019-08-11 06:53:10.285641-03	1	2019-08-11
1466	20.00	2019-08-01	61	7	2019-08-11 06:58:19.108849-03	1	2019-08-11
1467	10.00	2019-08-01	60	7	2019-08-11 06:59:54.75168-03	1	2019-08-11
1468	80.00	2019-08-01	153	7	2019-08-11 07:03:27.348553-03	1	2019-08-11
1469	100.00	2019-08-01	150	7	2019-08-11 07:06:08.74177-03	1	2019-08-11
1470	45.00	2019-08-01	113	7	2019-08-11 07:08:35.519987-03	1	2019-08-11
1471	150.00	2019-08-01	85	7	2019-08-11 07:10:22.827622-03	1	2019-08-11
1472	200.00	2019-08-01	119	7	2019-08-11 07:12:30.030521-03	1	2019-08-11
1473	40.00	2019-04-01	84	7	2019-08-11 07:21:43.382599-03	1	2019-08-11
1474	15.00	2019-08-01	118	7	2019-08-11 07:23:05.116079-03	1	2019-08-11
1475	20.00	2019-08-01	78	7	2019-08-11 08:38:01.926088-03	1	2019-08-11
1476	345.00	2019-08-01	317	5	2019-08-13 08:32:57.481751-03	1	2019-08-13
1477	100.00	2019-08-01	216	5	2019-08-13 09:21:45.203678-03	1	2019-08-13
1478	15.00	2019-07-01	222	5	2019-08-13 09:34:05.636551-03	1	2019-08-13
1479	15.00	2019-08-01	222	5	2019-08-13 09:34:37.4225-03	1	2019-08-13
1480	30.00	2019-08-01	21	5	2019-08-13 10:39:57.350392-03	1	2019-08-13
1481	10.00	2019-06-01	302	5	2019-08-13 10:41:02.791079-03	1	2019-08-13
1482	10.00	2019-06-01	301	5	2019-08-13 10:41:53.084992-03	1	2019-08-13
1483	100.00	2019-08-01	223	5	2019-08-13 11:08:24.037246-03	1	2019-08-13
1484	30.00	2019-08-01	142	5	2019-08-13 16:05:12.260756-03	1	2019-08-13
1485	25.00	2019-08-01	130	7	2019-08-13 19:14:42.775382-03	1	2019-08-13
1486	50.00	2019-07-01	192	7	2019-08-13 19:17:56.898082-03	1	2019-08-13
1487	30.00	2019-03-01	7	7	2019-08-13 19:25:01.712249-03	1	2019-08-13
1488	30.00	2019-04-01	7	7	2019-08-13 19:28:53.419027-03	1	2019-08-13
1489	30.00	2019-05-01	7	7	2019-08-13 19:29:26.258404-03	1	2019-08-13
1490	20.00	2019-07-01	176	7	2019-08-13 19:30:10.740457-03	1	2019-08-13
1491	30.00	2019-06-01	271	7	2019-08-13 19:30:46.46087-03	1	2019-08-13
1492	50.00	2019-05-01	240	7	2019-08-13 19:33:06.777711-03	1	2019-08-13
1493	30.00	2019-07-01	271	7	2019-08-13 19:34:42.933397-03	1	2019-08-13
1494	50.00	2019-07-01	299	7	2019-08-13 19:35:41.279405-03	1	2019-08-13
1495	40.00	2019-08-01	206	7	2019-08-13 19:36:06.696373-03	1	2019-08-13
1496	20.00	2019-07-01	18	7	2019-08-13 19:36:36.361367-03	1	2019-08-13
1497	20.00	2019-08-01	18	7	2019-08-13 19:37:17.721813-03	1	2019-08-13
1498	150.00	2019-07-01	88	5	2019-08-14 15:54:16.629808-03	1	2019-08-14
1499	150.00	2019-08-01	88	5	2019-08-14 15:54:56.495109-03	1	2019-08-14
1500	10.00	2019-08-01	47	10	2019-08-14 18:49:39.528551-03	1	2019-08-14
1501	20.00	2019-08-01	145	10	2019-08-14 19:02:07.181326-03	1	2019-08-14
1502	150.00	2019-07-01	173	10	2019-08-14 19:33:20.495673-03	1	2019-08-14
1503	50.00	2019-08-01	212	5	2019-08-15 16:57:10.457735-03	1	2019-08-15
1504	100.00	2019-08-01	211	5	2019-08-15 16:59:46.687738-03	1	2019-08-15
1505	100.00	2019-08-01	238	5	2019-08-15 17:01:00.97518-03	1	2019-08-15
1506	50.00	2019-08-01	321	14	2019-08-15 19:10:35.727168-03	1	2019-08-15
1507	50.00	2019-07-01	296	14	2019-08-15 19:19:34.091604-03	1	2019-08-15
1508	50.00	2019-08-01	168	14	2019-08-15 19:23:11.998285-03	1	2019-08-15
1509	50.00	2019-07-01	295	14	2019-08-15 19:30:32.32011-03	1	2019-08-15
1510	50.00	2019-08-01	295	14	2019-08-15 19:32:07.283458-03	1	2019-08-15
1511	50.00	2019-07-01	164	14	2019-08-15 19:40:21.141564-03	1	2019-08-15
1512	20.00	2019-07-01	163	14	2019-08-15 19:45:03.472692-03	1	2019-08-15
1513	50.00	2019-08-01	231	5	2019-08-16 10:57:07.418755-03	1	2019-08-16
1514	100.00	2019-08-01	183	5	2019-08-16 15:55:10.017874-03	1	2019-08-16
1515	100.00	2019-08-01	148	4	2019-08-16 19:13:14.425823-03	1	2019-08-16
1516	50.00	2019-08-01	149	4	2019-08-16 19:15:38.060469-03	1	2019-08-16
1517	25.00	2019-07-01	97	4	2019-08-16 19:47:48.700551-03	1	2019-08-16
1518	25.00	2019-08-01	97	4	2019-08-16 19:48:10.127547-03	1	2019-08-16
1519	30.00	2019-08-01	40	4	2019-08-16 19:54:57.505565-03	1	2019-08-16
1520	25.00	2019-07-01	175	4	2019-08-16 19:58:57.385306-03	1	2019-08-16
1521	30.00	2019-07-01	219	5	2019-08-17 10:36:17.773698-03	1	2019-08-17
1522	50.00	2019-08-01	51	2	2019-08-18 07:05:39.971096-03	1	2019-08-18
1523	50.00	2019-08-01	116	5	2019-08-18 07:22:58.151763-03	1	2019-08-18
1524	20.00	2019-08-01	202	4	2019-08-18 08:22:33.857494-03	1	2019-08-18
1525	60.00	2019-08-01	54	4	2019-08-18 08:28:41.127582-03	1	2019-08-18
1526	20.00	2019-08-01	324	4	2019-08-18 08:33:12.692862-03	1	2019-08-18
1527	10.00	2019-08-01	165	4	2019-08-18 08:34:28.035365-03	1	2019-08-18
1528	30.00	2019-08-01	56	6	2019-08-18 18:59:04.752407-03	1	2019-08-18
1529	10.00	2019-06-01	99	6	2019-08-18 19:03:31.009719-03	1	2019-08-18
1530	10.00	2019-07-01	99	6	2019-08-18 19:05:25.541511-03	1	2019-08-18
1531	10.00	2019-08-01	99	6	2019-08-18 19:07:04.539487-03	1	2019-08-18
1532	10.00	2019-09-01	99	6	2019-08-18 19:09:23.704211-03	1	2019-08-18
1533	10.00	2019-10-01	99	6	2019-08-18 19:10:26.482734-03	1	2019-08-18
1534	70.00	2019-08-01	50	6	2019-08-18 19:22:37.010826-03	1	2019-08-18
1535	50.00	2019-08-01	90	6	2019-08-18 19:25:43.153699-03	1	2019-08-18
1536	50.00	2019-05-01	280	6	2019-08-18 19:30:51.606993-03	1	2019-08-18
1537	40.00	2019-08-01	127	6	2019-08-18 19:34:52.370636-03	1	2019-08-18
1538	10.00	2019-01-01	254	6	2019-08-18 19:40:13.56818-03	1	2019-08-18
1539	10.00	2019-04-01	254	6	2019-08-18 19:42:44.671025-03	1	2019-08-18
1540	10.00	2019-05-01	254	6	2019-08-18 19:49:03.22152-03	1	2019-08-18
1541	10.00	2019-06-01	254	6	2019-08-18 19:50:44.204002-03	1	2019-08-18
1542	10.00	2019-07-01	254	6	2019-08-18 19:52:18.917383-03	1	2019-08-18
1543	20.00	2019-08-01	322	7	2019-08-20 19:06:32.44169-03	1	2019-08-20
1544	20.00	2019-08-01	200	5	2019-08-21 09:21:45.555311-03	1	2019-08-21
1545	50.00	2019-07-01	232	5	2019-08-21 15:15:40.948125-03	1	2019-08-21
1546	50.00	2019-08-01	232	5	2019-08-21 15:16:06.319779-03	1	2019-08-21
1547	30.00	2019-08-01	275	5	2019-08-23 09:25:17.69999-03	1	2019-08-23
1548	50.00	2019-08-01	4	4	2019-08-23 19:06:44.999383-03	1	2019-08-23
1549	20.00	2019-08-01	72	4	2019-08-23 19:08:17.084246-03	1	2019-08-23
1550	100.00	2019-08-01	104	4	2019-08-23 19:10:08.622289-03	1	2019-08-23
1551	200.00	2019-08-01	123	7	2019-08-25 07:00:40.356437-03	1	2019-08-25
1552	100.00	2019-08-01	242	7	2019-08-25 07:03:06.007374-03	1	2019-08-25
1553	100.00	2019-06-01	190	7	2019-08-25 07:09:15.244314-03	1	2019-08-25
1554	10.00	2019-08-01	128	7	2019-08-25 08:22:49.459821-03	1	2019-08-25
1555	100.00	2019-03-01	210	2	2019-08-25 18:58:27.752146-03	1	2019-08-25
1556	100.00	2019-04-01	210	2	2019-08-25 18:59:41.610967-03	1	2019-08-25
1557	100.00	2019-08-01	230	5	2019-08-27 08:35:48.113413-03	1	2019-08-27
1558	50.00	2019-08-01	198	7	2019-08-27 20:09:05.049871-03	1	2019-08-27
1559	20.00	2019-08-01	233	5	2019-08-28 14:17:21.962233-03	1	2019-08-28
1560	50.00	2019-08-01	14	10	2019-08-28 19:09:04.76518-03	1	2019-08-28
1561	10.00	2019-05-01	325	5	2019-08-29 09:27:03.495389-03	1	2019-08-29
1562	10.00	2019-06-01	325	5	2019-08-29 09:27:42.851231-03	1	2019-08-29
1563	10.00	2019-07-01	325	5	2019-08-29 09:28:13.502301-03	1	2019-08-29
1564	400.00	2019-08-01	162	5	2019-08-29 11:51:08.923279-03	1	2019-08-29
1565	50.00	2019-08-01	227	5	2019-08-30 15:12:13.64764-03	1	2019-08-30
1566	10.00	2019-08-01	182	5	2019-08-30 15:43:52.793101-03	1	2019-08-30
1567	150.00	2019-09-01	70	6	2019-09-01 07:29:41.82637-03	1	2019-09-01
1568	50.00	2019-08-01	57	6	2019-09-01 07:31:43.847149-03	1	2019-09-01
1569	30.00	2019-09-01	125	6	2019-09-01 07:35:43.072184-03	1	2019-09-01
1570	100.00	2019-09-01	115	6	2019-09-01 07:53:37.759102-03	1	2019-09-01
1571	100.00	2019-09-01	98	6	2019-09-01 07:54:47.521867-03	1	2019-09-01
1572	30.00	2019-09-01	52	6	2019-09-01 07:57:34.716775-03	1	2019-09-01
1573	60.00	2019-08-01	257	6	2019-09-01 08:16:32.455187-03	1	2019-09-01
1574	30.00	2019-09-01	8	6	2019-09-01 08:19:01.743217-03	1	2019-09-01
1575	70.00	2019-08-01	229	6	2019-09-01 08:20:12.924369-03	1	2019-09-01
1576	200.00	2019-09-01	119	6	2019-09-01 08:28:17.698494-03	1	2019-09-01
1577	50.00	2019-08-01	280	6	2019-09-01 08:30:50.49621-03	1	2019-09-01
1578	30.00	2019-08-01	268	5	2019-09-03 09:43:08.265576-03	1	2019-09-03
1579	90.00	2019-09-01	237	5	2019-09-03 09:51:35.319105-03	1	2019-09-03
1580	50.00	2019-08-01	164	5	2019-09-03 16:19:43.265932-03	1	2019-09-03
1581	20.00	2019-09-01	77	13	2019-09-03 19:23:34.295435-03	1	2019-09-03
1582	10.00	2019-07-01	262	13	2019-09-03 19:25:39.412955-03	1	2019-09-03
1583	100.00	2019-09-01	228	13	2019-09-03 19:50:40.827203-03	1	2019-09-03
1584	30.00	2019-03-01	92	13	2019-09-03 19:53:02.510378-03	1	2019-09-03
1585	30.00	2019-04-01	92	13	2019-09-03 19:53:54.496659-03	1	2019-09-03
1586	30.00	2019-05-01	92	13	2019-09-03 19:54:38.173854-03	1	2019-09-03
1587	30.00	2019-06-01	92	13	2019-09-03 19:55:11.956287-03	1	2019-09-03
1588	50.00	2019-09-01	246	5	2019-09-04 10:13:51.07068-03	1	2019-09-04
1589	20.00	2019-09-01	224	5	2019-09-04 10:21:42.336942-03	1	2019-09-04
1590	10.00	2019-11-01	323	5	2019-09-04 11:01:52.453204-03	1	2019-09-04
1591	10.00	2019-12-01	323	5	2019-09-04 11:02:45.786742-03	1	2019-09-04
1592	25.00	2019-08-01	203	5	2019-09-04 11:39:49.182526-03	1	2019-09-04
1593	50.00	2019-09-01	14	3	2019-09-04 19:03:56.740254-03	1	2019-09-04
1594	160.00	2019-09-01	247	3	2019-09-04 19:06:59.369411-03	1	2019-09-04
1595	50.00	2019-09-01	38	3	2019-09-04 19:11:38.681301-03	1	2019-09-04
1596	25.00	2019-08-01	94	5	2019-09-06 14:54:16.143339-03	1	2019-09-06
1597	25.00	2019-09-01	94	5	2019-09-06 14:54:57.27669-03	1	2019-09-06
1598	500.00	2019-09-01	270	5	2019-09-06 14:56:16.303352-03	1	2019-09-06
1599	50.00	2019-09-01	318	5	2019-09-06 14:58:10.826234-03	1	2019-09-06
1600	100.00	2019-10-01	208	5	2019-09-06 15:00:02.637341-03	1	2019-09-06
1601	30.00	2019-09-01	134	5	2019-09-06 16:03:51.57859-03	1	2019-09-06
1602	40.00	2019-09-01	187	5	2019-09-06 16:08:17.570632-03	1	2019-09-06
1603	20.00	2019-09-01	188	5	2019-09-06 16:09:38.495699-03	1	2019-09-06
1604	50.00	2019-09-01	319	5	2019-09-06 16:12:11.918882-03	1	2019-09-06
1605	50.00	2019-09-01	126	5	2019-09-06 16:34:51.828804-03	1	2019-09-06
1606	100.00	2019-02-01	32	5	2019-09-06 16:35:50.403105-03	1	2019-09-06
1607	100.00	2019-09-01	223	5	2019-09-06 16:36:34.739001-03	1	2019-09-06
1608	10.00	2019-07-01	281	5	2019-09-06 16:37:25.372825-03	1	2019-09-06
1609	10.00	2019-08-01	281	5	2019-09-06 16:37:45.667689-03	1	2019-09-06
1610	10.00	2019-09-01	281	5	2019-09-06 16:38:15.101795-03	1	2019-09-06
1611	10.00	2019-10-01	281	5	2019-09-06 16:43:07.684264-03	1	2019-09-06
1612	10.00	2019-11-01	281	5	2019-09-06 16:44:18.999455-03	1	2019-09-06
1613	50.00	2019-09-01	326	7	2019-09-08 07:11:51.68907-03	1	2019-09-08
1614	20.00	2019-07-01	297	7	2019-09-08 07:15:46.7737-03	1	2019-09-08
1615	20.00	2019-08-01	297	7	2019-09-08 07:19:16.927923-03	1	2019-09-08
1616	50.00	2019-09-01	226	7	2019-09-08 07:20:38.45353-03	1	2019-09-08
1617	20.00	2019-09-01	82	7	2019-09-08 07:22:21.000654-03	1	2019-09-08
1618	25.00	2019-09-01	124	7	2019-09-08 07:24:57.332554-03	1	2019-09-08
1619	80.00	2019-09-01	153	7	2019-09-08 07:26:24.447376-03	1	2019-09-08
1620	100.00	2019-09-01	150	7	2019-09-08 07:27:38.943022-03	1	2019-09-08
1621	20.00	2019-09-01	114	7	2019-09-08 07:28:58.885582-03	1	2019-09-08
1622	15.00	2019-09-01	152	7	2019-09-08 07:30:21.77426-03	1	2019-09-08
1623	15.00	2019-09-01	154	7	2019-09-08 07:31:32.235161-03	1	2019-09-08
1624	35.00	2019-06-01	137	7	2019-09-08 07:48:51.061922-03	1	2019-09-08
1625	30.00	2019-05-01	288	7	2019-09-08 08:05:57.957654-03	1	2019-09-08
1626	30.00	2019-06-01	288	7	2019-09-08 08:06:39.078298-03	1	2019-09-08
1627	30.00	2019-07-01	288	7	2019-09-08 08:07:23.43325-03	1	2019-09-08
1628	30.00	2019-08-01	288	7	2019-09-08 08:08:04.114802-03	1	2019-09-08
1629	30.00	2019-09-01	288	7	2019-09-08 08:09:39.303786-03	1	2019-09-08
1630	20.00	2019-08-01	298	7	2019-09-08 08:14:35.840596-03	1	2019-09-08
1631	20.00	2019-04-01	204	7	2019-09-08 08:17:40.077283-03	1	2019-09-08
1632	20.00	2019-05-01	204	7	2019-09-08 08:18:32.71146-03	1	2019-09-08
1633	50.00	2019-08-01	144	7	2019-09-08 08:20:05.445372-03	1	2019-09-08
1634	50.00	2019-09-01	144	7	2019-09-08 08:20:46.603357-03	1	2019-09-08
1635	50.00	2019-09-01	64	10	2019-09-08 18:45:26.555378-03	1	2019-09-08
1636	20.00	2019-09-01	207	10	2019-09-08 18:48:26.522805-03	1	2019-09-08
1637	20.00	2019-05-01	207	10	2019-09-08 18:49:57.326113-03	1	2019-09-08
1638	20.00	2019-06-01	207	10	2019-09-08 18:51:55.606105-03	1	2019-09-08
1639	20.00	2019-07-01	207	10	2019-09-08 18:53:34.138922-03	1	2019-09-08
1640	1000.00	2019-07-01	194	10	2019-09-08 18:58:14.598484-03	1	2019-09-08
1641	100.00	2019-08-01	194	10	2019-09-08 19:00:33.091495-03	1	2019-09-08
1642	100.00	2019-09-01	194	10	2019-09-08 19:02:07.094294-03	1	2019-09-08
1643	50.00	2019-09-01	78	10	2019-09-08 19:06:37.087952-03	1	2019-09-09
1644	50.00	2019-09-01	90	10	2019-09-08 19:09:03.863047-03	1	2019-09-09
1645	20.00	2019-08-01	191	10	2019-09-08 19:16:24.564653-03	1	2019-09-08
1646	20.00	2019-09-01	191	10	2019-09-08 19:17:47.208398-03	1	2019-09-08
1647	20.00	2018-10-01	191	10	2019-09-08 19:21:49.176382-03	1	2019-09-08
1648	5.00	2019-08-01	172	10	2019-09-08 19:26:56.823974-03	1	2019-09-08
1649	50.00	2019-09-01	172	10	2019-09-08 19:28:10.37883-03	1	2019-09-08
1650	50.00	2019-10-01	172	10	2019-09-08 19:30:43.486585-03	1	2019-09-08
1651	50.00	2019-08-01	192	10	2019-09-08 19:33:55.926324-03	1	2019-09-08
1652	30.00	2019-09-01	40	10	2019-09-08 19:37:09.587741-03	1	2019-09-08
1653	20.00	2019-09-01	314	10	2019-09-08 19:38:33.933781-03	1	2019-09-08
1654	20.00	2019-08-01	271	10	2019-09-08 19:40:50.964127-03	1	2019-09-08
1655	100.00	2019-09-01	148	10	2019-09-08 19:42:31.577289-03	1	2019-09-08
1656	25.00	2019-08-01	175	10	2019-09-08 19:43:52.912486-03	1	2019-09-08
1657	50.00	2019-09-01	149	10	2019-09-08 19:45:33.185998-03	1	2019-09-08
1658	25.00	2019-07-01	76	10	2019-09-08 19:47:05.706934-03	1	2019-09-08
1659	25.00	2019-08-01	76	10	2019-09-08 19:47:47.10503-03	1	2019-09-08
1660	50.00	2019-05-01	259	10	2019-09-08 19:49:44.199682-03	1	2019-09-08
1661	60.00	2019-09-01	264	5	2019-09-10 08:31:29.128609-03	1	2019-09-10
1662	50.00	2019-09-01	265	5	2019-09-10 08:32:35.762357-03	1	2019-09-10
1663	10.00	2019-07-01	327	5	2019-09-10 08:37:39.950953-03	1	2019-09-10
1664	10.00	2019-08-01	327	5	2019-09-10 08:37:58.766676-03	1	2019-09-10
1665	10.00	2019-09-01	327	5	2019-09-10 08:38:18.64233-03	1	2019-09-10
1666	100.00	2019-09-01	216	5	2019-09-10 09:34:44.702371-03	1	2019-09-10
1667	120.00	2019-05-01	241	5	2019-09-10 09:49:42.207783-03	1	2019-09-10
1668	20.00	2019-08-01	63	7	2019-09-10 19:16:17.279207-03	1	2019-09-10
1669	200.00	2019-08-01	174	7	2019-09-10 19:17:17.878844-03	1	2019-09-10
1670	25.00	2019-09-01	130	7	2019-09-10 19:25:45.845361-03	1	2019-09-10
1671	50.00	2019-09-01	158	7	2019-09-10 20:15:59.621783-03	1	2019-09-10
1672	40.00	2019-07-01	249	5	2019-09-11 08:54:28.61427-03	1	2019-09-11
1673	50.00	2019-07-01	250	5	2019-09-11 08:55:23.562315-03	1	2019-09-11
1674	20.00	2019-09-01	328	5	2019-09-11 11:05:43.2621-03	1	2019-09-11
1675	50.00	2019-09-01	62	10	2019-09-11 18:53:14.808539-03	1	2019-09-11
1676	30.00	2019-08-01	170	10	2019-09-11 18:57:02.977585-03	1	2019-09-11
1677	100.00	2019-09-01	183	10	2019-09-11 19:08:01.296661-03	1	2019-09-11
1678	20.00	2019-09-01	163	10	2019-09-11 19:42:31.2059-03	1	2019-09-11
1679	40.00	2019-08-01	261	5	2019-09-12 08:45:39.318423-03	1	2019-09-12
1680	40.00	2019-09-01	261	5	2019-09-12 08:46:12.937973-03	1	2019-09-12
1681	20.00	2019-06-01	122	5	2019-09-12 17:03:05.243361-03	1	2019-09-12
1682	20.00	2019-07-01	122	5	2019-09-12 17:03:41.049876-03	1	2019-09-12
1683	345.00	2019-09-01	317	5	2019-09-12 17:30:12.116036-03	1	2019-09-12
1684	50.00	2019-09-01	321	14	2019-09-12 19:13:17.802922-03	1	2019-09-12
1685	20.00	2019-10-01	49	5	2019-09-13 08:22:58.571651-03	1	2019-09-13
1686	130.00	2019-09-01	12	5	2019-09-13 09:23:34.578868-03	1	2019-09-13
1687	20.00	2019-08-01	282	5	2019-09-13 11:10:49.550116-03	1	2019-09-13
1688	20.00	2019-09-01	282	5	2019-09-13 11:11:20.958813-03	1	2019-09-13
1689	30.00	2019-09-01	21	5	2019-09-13 11:13:15.157884-03	1	2019-09-13
1690	30.00	2019-08-01	286	5	2019-09-13 11:28:30.30311-03	1	2019-09-13
1691	30.00	2019-09-01	286	5	2019-09-13 11:29:00.020622-03	1	2019-09-13
1692	50.00	2019-08-01	267	5	2019-09-13 11:34:47.339463-03	1	2019-09-13
1693	20.00	2019-09-01	329	5	2019-09-13 11:50:07.758598-03	1	2019-09-13
1694	60.00	2019-09-01	54	5	2019-09-14 10:49:19.873021-03	1	2019-09-14
1695	50.00	2019-09-01	306	5	2019-09-14 14:53:01.441843-03	1	2019-09-14
1696	50.00	2019-09-01	212	5	2019-09-14 15:01:34.179069-03	1	2019-09-14
1697	100.00	2019-09-01	238	5	2019-09-14 15:03:16.945742-03	1	2019-09-14
1698	100.00	2019-09-01	211	5	2019-09-14 15:05:10.369221-03	1	2019-09-14
1699	30.00	2019-09-01	97	2	2019-09-15 07:07:00.173289-03	1	2019-09-15
1700	50.00	2019-09-01	80	2	2019-09-15 07:11:18.393305-03	1	2019-09-15
1701	20.00	2019-09-01	61	2	2019-09-15 07:14:00.922227-03	1	2019-09-15
1702	10.00	2019-09-01	60	2	2019-09-15 07:16:25.846692-03	1	2019-09-15
1703	45.00	2019-09-01	113	2	2019-09-15 07:20:25.662431-03	1	2019-09-15
1704	150.00	2019-09-01	53	2	2019-09-15 07:22:22.513134-03	1	2019-09-15
1705	15.00	2019-08-01	279	2	2019-09-15 07:24:12.972746-03	1	2019-09-15
1706	150.00	2019-09-01	85	2	2019-09-15 07:28:15.853034-03	1	2019-09-15
1707	20.00	2019-06-01	81	2	2019-09-15 07:31:37.197989-03	1	2019-09-15
1708	20.00	2019-07-01	81	2	2019-09-15 07:33:18.956322-03	1	2019-09-15
1709	10.00	2019-09-01	330	2	2019-09-15 07:38:40.356373-03	1	2019-09-15
1710	15.00	2019-09-01	118	2	2019-09-15 07:41:56.239121-03	1	2019-09-15
1711	10.00	2019-05-01	289	2	2019-09-15 07:45:05.370423-03	1	2019-09-15
1712	10.00	2019-06-01	289	2	2019-09-15 07:46:03.824626-03	1	2019-09-15
1713	80.00	2019-07-01	71	2	2019-09-15 07:49:06.615551-03	1	2019-09-15
1714	20.00	2019-07-01	120	2	2019-09-15 08:27:07.932136-03	1	2019-09-15
1715	20.00	2019-08-01	120	2	2019-09-15 08:28:06.930419-03	1	2019-09-15
1716	30.00	2019-08-01	106	2	2019-09-15 18:30:23.220766-03	1	2019-09-13
1717	30.00	2019-09-01	106	2	2019-09-15 18:30:38.632063-03	1	2019-09-13
1718	50.00	2019-09-01	168	2	2019-09-15 18:32:56.030525-03	1	2019-09-13
1719	30.00	2019-06-01	7	2	2019-09-15 18:33:47.280532-03	1	2019-09-13
1720	30.00	2019-07-01	7	2	2019-09-15 18:34:04.352594-03	1	2019-09-13
1721	30.00	2019-08-01	7	2	2019-09-15 18:34:18.484674-03	1	2019-09-13
1722	40.00	2019-09-01	206	2	2019-09-15 18:35:18.516366-03	1	2019-09-13
1723	12.50	2019-07-01	331	2	2019-09-15 18:37:54.848294-03	1	2019-09-13
1724	12.50	2019-08-01	331	2	2019-09-15 18:38:07.154127-03	1	2019-09-13
1725	20.00	2019-09-01	145	2	2019-09-15 18:49:53.632047-03	1	2019-09-15
1726	10.00	2019-07-01	201	2	2019-09-15 19:03:02.07636-03	1	2019-09-15
1727	200.00	2019-09-01	123	2	2019-09-15 19:05:00.728747-03	1	2019-09-15
1728	70.00	2019-09-01	50	2	2019-09-15 19:06:47.370014-03	1	2019-09-15
1729	20.00	2019-10-01	167	5	2019-09-17 08:28:16.285031-03	1	2019-09-17
1730	20.00	2019-11-01	167	5	2019-09-17 08:28:44.382992-03	1	2019-09-17
1731	10.00	2019-07-01	302	5	2019-09-17 15:28:14.149012-03	1	2019-09-17
1732	10.00	2019-07-01	301	5	2019-09-17 15:28:54.725596-03	1	2019-09-17
1733	20.00	2019-09-01	18	12	2019-09-17 18:58:16.841211-03	1	2019-09-17
1734	20.00	2019-10-01	18	12	2019-09-17 19:03:55.250495-03	1	2019-09-17
1735	300.00	2019-08-01	215	5	2019-09-18 09:01:48.09284-03	1	2019-09-18
1736	50.00	2019-09-01	332	5	2019-09-18 16:26:49.745004-03	1	2019-09-18
1737	50.00	2019-09-01	116	5	2019-09-19 16:52:45.711338-03	1	2019-09-19
1738	50.00	2019-09-01	195	14	2019-09-19 19:19:50.806756-03	1	2019-09-19
1739	50.00	2019-09-01	232	5	2019-09-20 10:21:54.539329-03	1	2019-09-20
1740	50.00	2019-09-01	231	5	2019-09-20 10:48:27.468662-03	1	2019-09-20
1741	10.00	2019-07-01	218	5	2019-09-20 14:12:14.207205-03	1	2019-09-20
1742	10.00	2019-08-01	218	5	2019-09-20 14:13:14.973445-03	1	2019-09-20
1743	10.00	2019-09-01	218	5	2019-09-20 14:14:34.077536-03	1	2019-09-20
1744	30.00	2019-09-01	142	5	2019-09-21 08:56:20.441141-03	1	2019-09-21
1745	50.00	2019-09-01	51	7	2019-09-22 07:12:19.517648-03	1	2019-09-22
1746	10.00	2019-09-01	243	7	2019-09-22 07:23:17.400085-03	1	2019-09-22
1747	30.00	2019-09-01	56	7	2019-09-22 07:59:12.256917-03	1	2019-09-22
1748	40.00	2019-09-01	127	7	2019-09-22 08:01:12.046255-03	1	2019-09-22
1749	20.00	2019-09-01	200	7	2019-09-22 08:02:20.569485-03	1	2019-09-22
1750	20.00	2019-10-01	200	7	2019-09-22 08:02:31.429971-03	1	2019-09-22
1751	100.00	2019-09-01	230	5	2019-09-24 08:31:01.501239-03	1	2019-09-24
1752	400.00	2019-09-01	162	5	2019-09-24 14:15:27.992745-03	1	2019-09-24
1753	10.00	2019-01-01	333	2	2019-09-25 19:22:13.455694-03	1	2019-09-25
1754	10.00	2019-02-01	333	2	2019-09-25 19:36:10.954178-03	1	2019-09-25
1755	10.00	2019-03-01	333	2	2019-09-25 19:37:26.561494-03	1	2019-09-25
1756	10.00	2019-04-01	333	2	2019-09-25 19:38:38.052544-03	1	2019-09-25
1757	10.00	2019-05-01	333	2	2019-09-25 19:40:05.809458-03	1	2019-09-25
1758	30.00	2019-08-01	219	5	2019-09-26 09:18:34.4039-03	1	2019-09-26
1759	10.00	2019-09-01	182	5	2019-09-27 08:47:09.87625-03	1	2019-09-27
1760	30.00	2019-09-01	275	5	2019-09-27 09:30:04.469669-03	1	2019-09-27
1761	5.00	2019-05-01	277	5	2019-09-27 11:18:51.239514-03	1	2019-09-27
1434	100.00	2019-08-01	42	7	2019-08-06 19:22:13.201966-03	1	2019-08-04
1762	100.00	2019-09-01	42	2	2019-09-27 19:22:46.82109-03	1	2019-09-27
1764	30.00	2019-03-01	8	2	2019-09-29 07:09:45.721719-03	1	2019-03-27
1763	30.00	2019-04-01	8	2	2019-09-29 07:05:23.035369-03	1	2019-09-29
1765	20.00	2019-09-01	202	2	2019-09-29 07:13:57.41056-03	1	2019-09-29
1766	100.00	2019-09-01	278	2	2019-09-29 07:21:54.670574-03	1	2019-09-29
1767	30.00	2019-08-01	107	14	2019-09-29 19:49:16.472008-03	1	2019-09-29
1768	50.00	2019-08-01	296	14	2019-09-29 20:16:03.117942-03	1	2019-09-29
1769	100.00	2019-09-01	295	14	2019-09-29 20:18:52.080649-03	1	2019-09-29
1771	20.00	2019-11-01	282	5	2019-10-01 10:31:18.083953-03	1	2019-10-01
1772	50.00	2019-09-01	311	5	2019-10-01 10:32:25.517363-03	1	2019-10-01
1773	30.00	2019-09-01	268	5	2019-10-01 14:19:36.594381-03	1	2019-10-01
1774	90.00	2019-10-01	237	5	2019-10-01 15:32:02.350266-03	1	2019-10-01
1775	100.00	2019-10-01	228	7	2019-10-01 19:23:29.184183-03	1	2019-10-01
1776	15.00	2019-10-01	152	7	2019-10-01 19:25:48.133831-03	1	2019-10-01
1777	20.00	2019-10-01	176	7	2019-10-01 19:28:01.808735-03	1	2019-10-01
1778	15.00	2019-10-01	154	7	2019-10-01 19:30:12.695244-03	1	2019-10-01
1780	30.00	2019-10-01	21	5	2019-10-02 09:19:51.828085-03	1	2019-10-02
1781	50.00	2019-09-01	227	5	2019-10-02 09:36:08.659483-03	1	2019-10-02
1782	15.00	2019-09-01	222	5	2019-10-02 10:48:34.074189-03	1	2019-10-02
1783	15.00	2019-10-01	222	5	2019-10-02 10:49:12.945229-03	1	2019-10-02
1784	15.00	2019-09-01	214	5	2019-10-02 16:18:02.030782-03	1	2019-10-02
1785	15.00	2019-10-01	214	5	2019-10-02 16:18:20.96409-03	1	2019-10-02
1786	50.00	2019-10-01	14	10	2019-10-02 19:03:58.493775-03	1	2019-10-02
1787	30.00	2019-10-01	134	10	2019-10-02 19:04:54.532482-03	1	2019-10-02
1788	50.00	2019-10-01	62	10	2019-10-02 19:06:10.661857-03	1	2019-10-02
1789	30.00	2019-09-01	303	5	2019-10-03 08:31:15.032175-03	1	2019-10-03
1790	40.00	2019-10-01	261	5	2019-10-03 08:36:08.967431-03	1	2019-10-03
1791	15.00	2019-09-01	279	5	2019-10-03 14:47:16.189801-03	1	2019-10-03
1792	50.00	2019-10-01	246	5	2019-10-03 17:14:08.137879-03	1	2019-10-03
1793	40.00	2019-10-01	191	14	2019-10-03 18:56:33.004094-03	1	2019-10-03
1794	50.00	2019-10-01	126	5	2019-10-04 09:08:30.543364-03	1	2019-10-04
1795	100.00	2019-11-01	208	5	2019-10-04 09:50:52.936505-03	1	2019-10-04
1796	70.00	2019-04-01	19	5	2019-10-05 08:39:22.950644-03	1	2019-10-05
1797	100.00	2019-09-01	242	2	2019-10-06 06:57:52.944674-03	1	2019-10-06
1798	100.00	2019-10-01	242	2	2019-10-06 07:01:18.746938-03	1	2019-10-06
1799	200.00	2019-10-01	123	2	2019-10-06 07:05:07.287468-03	1	2019-10-06
1800	50.00	2019-10-01	326	2	2019-10-06 07:08:26.462063-03	1	2019-10-06
1801	10.00	2019-10-01	60	2	2019-10-06 07:11:54.00546-03	1	2019-10-06
1802	20.00	2019-10-01	61	2	2019-10-06 07:14:32.210859-03	1	2019-10-06
1803	20.00	2019-06-01	69	2	2019-10-06 07:17:02.345233-03	1	2019-10-06
1804	20.00	2019-07-01	69	2	2019-10-06 07:17:25.243673-03	1	2019-10-06
1805	20.00	2019-08-01	69	2	2019-10-06 07:18:33.863786-03	1	2019-10-06
1806	30.00	2019-10-01	52	2	2019-10-06 07:21:54.223318-03	1	2019-10-06
1807	30.00	2019-09-01	170	2	2019-10-06 07:24:07.272479-03	1	2019-10-06
1808	60.00	2019-10-01	257	2	2019-10-06 07:26:58.936949-03	1	2019-10-06
1809	100.00	2019-09-01	67	2	2019-10-06 07:28:27.639231-03	1	2019-10-06
1810	30.00	2019-10-01	125	2	2019-10-06 07:30:05.559034-03	1	2019-10-06
1811	150.00	2019-10-01	70	2	2019-10-06 07:31:50.347269-03	1	2019-10-06
1812	45.00	2019-10-01	113	2	2019-10-06 07:33:05.985115-03	1	2019-10-06
1813	20.00	2019-10-01	78	2	2019-10-06 07:35:01.864348-03	1	2019-10-06
1814	5.00	2019-10-01	93	2	2019-10-06 07:36:06.573748-03	1	2019-10-07
1815	20.00	2019-10-01	82	2	2019-10-06 07:37:22.354729-03	1	2019-10-06
1832	30.00	2019-07-01	239	5	2019-10-08 09:21:25.709007-03	1	2019-10-08
1817	100.00	2019-10-01	98	2	2019-10-06 07:42:42.421407-03	1	2019-10-06
1818	10.00	2019-09-01	47	2	2019-10-06 07:44:12.940661-03	1	2019-10-06
1819	80.00	2019-10-01	153	2	2019-10-06 07:47:13.72966-03	1	2019-10-06
1820	150.00	2019-09-01	88	2	2019-10-06 07:59:21.053626-03	1	2019-10-06
1821	150.00	2019-10-01	88	2	2019-10-06 07:59:38.640952-03	1	2019-10-06
1822	10.00	2019-08-01	201	2	2019-10-06 08:14:31.213523-03	1	2019-10-06
1823	10.00	2019-09-01	201	2	2019-10-06 08:14:44.984785-03	1	2019-10-06
1824	25.00	2019-09-01	189	2	2019-10-06 08:23:19.873543-03	1	2019-10-06
1825	25.00	2019-10-01	189	2	2019-10-06 08:23:30.786346-03	1	2019-10-06
1826	50.00	2019-10-01	318	2	2019-10-06 08:26:11.359246-03	1	2019-10-06
1827	15.00	2019-09-01	185	2	2019-10-06 08:31:11.537855-03	1	2019-10-06
1828	15.00	2019-10-01	185	2	2019-10-06 08:31:17.680737-03	1	2019-10-06
1829	200.00	2019-10-01	119	2	2019-10-06 08:33:18.939841-03	1	2019-10-06
1830	50.00	2019-10-01	195	2	2019-10-06 08:34:37.399225-03	1	2019-10-06
1831	50.00	2019-10-01	116	2	2019-10-06 08:40:16.710642-03	1	2019-10-06
1816	20.25	2019-10-01	114	2	2019-10-06 07:39:13.605861-03	1	2019-10-06
1833	30.00	2019-08-01	239	5	2019-10-08 09:22:21.035207-03	1	2019-10-08
1834	100.00	2019-10-01	216	5	2019-10-08 10:22:23.554165-03	1	2019-10-08
1835	50.00	2019-10-01	212	7	2019-10-08 19:24:24.924841-03	1	2019-10-08
1836	130.00	2019-10-01	12	7	2019-10-08 19:27:48.451374-03	1	2019-10-08
1837	100.00	2019-10-01	211	7	2019-10-08 19:29:43.313572-03	1	2019-10-08
1838	160.00	2019-10-01	247	7	2019-10-08 19:39:09.23695-03	1	2019-10-08
1839	20.00	2019-10-01	314	7	2019-10-08 19:41:35.930639-03	1	2019-10-08
1840	20.00	2019-10-01	63	7	2019-10-08 20:02:44.670962-03	1	2019-10-08
1841	50.00	2019-10-01	144	7	2019-10-08 20:08:50.039816-03	1	2019-10-08
1842	60.00	2019-10-01	264	5	2019-10-09 08:36:20.408242-03	1	2019-10-09
1843	50.00	2019-10-01	265	5	2019-10-09 08:37:21.990158-03	1	2019-10-09
1844	50.00	2019-10-01	142	5	2019-10-09 17:51:49.90666-03	1	2019-10-09
1845	20.00	2019-10-01	77	10	2019-10-09 18:47:34.360954-03	1	2019-10-09
1846	50.00	2019-09-01	192	10	2019-10-09 18:49:57.128911-03	1	2019-10-09
1847	50.00	2019-10-01	80	10	2019-10-09 18:52:44.31154-03	1	2019-10-09
1848	20.00	2019-10-01	145	10	2019-10-09 18:59:26.580231-03	1	2019-10-09
1849	150.00	2019-08-01	173	10	2019-10-09 19:23:48.706563-03	1	2019-10-09
1850	300.00	2019-09-01	309	5	2019-10-10 09:11:35.024548-03	1	2019-10-10
1851	50.00	2019-10-01	306	5	2019-10-10 14:44:16.139533-03	1	2019-10-10
1852	50.00	2019-10-01	321	14	2019-10-10 19:18:07.931959-03	1	2019-10-10
1853	100.00	2019-10-01	42	14	2019-10-10 19:38:30.694702-03	1	2019-10-10
1854	20.00	2019-10-01	163	14	2019-10-10 19:40:36.65365-03	1	2019-10-10
1855	50.00	2019-10-01	149	14	2019-10-10 19:46:28.093177-03	1	2019-10-10
1856	100.00	2019-10-01	148	14	2019-10-10 19:49:03.512798-03	1	2019-10-10
1857	50.00	2019-09-01	267	5	2019-10-11 08:24:21.61719-03	1	2019-10-11
1858	100.00	2019-10-01	223	5	2019-10-11 10:53:11.089785-03	1	2019-10-11
1859	500.00	2019-10-01	270	5	2019-10-11 17:05:00.620672-03	1	2019-10-11
1860	50.00	2019-10-01	226	3	2019-10-13 06:50:15.951657-03	1	2019-10-13
1861	30.00	2019-10-01	56	3	2019-10-13 06:53:02.414498-03	1	2019-10-13
1862	20.00	2019-02-01	260	3	2019-10-13 07:00:06.001442-03	1	2019-10-13
1863	20.00	2019-03-01	260	3	2019-10-13 07:02:30.404906-03	1	2019-10-13
1864	20.00	2019-04-01	260	3	2019-10-13 07:04:08.843271-03	1	2019-10-13
1865	20.00	2019-05-01	260	3	2019-10-13 07:05:42.735843-03	1	2019-10-13
1866	20.00	2019-06-01	260	3	2019-10-13 07:07:32.20692-03	1	2019-10-13
1867	50.00	2019-09-01	57	3	2019-10-13 07:11:25.729247-03	1	2019-10-13
1868	50.00	2019-09-01	198	3	2019-10-13 07:13:59.491532-03	1	2019-10-13
1869	25.00	2019-10-01	124	3	2019-10-13 07:16:23.966796-03	1	2019-10-13
1870	100.00	2019-10-01	194	3	2019-10-13 07:20:06.952731-03	1	2019-10-13
1871	100.00	2019-11-01	194	3	2019-10-13 07:22:08.753426-03	1	2019-10-13
1872	150.00	2019-10-01	53	3	2019-10-13 07:24:22.305-03	1	2019-10-13
1873	35.00	2019-07-01	137	3	2019-10-13 08:18:17.431516-03	1	2019-10-13
1874	345.00	2019-10-01	317	6	2019-10-13 18:55:04.018612-03	1	2019-10-13
1875	150.00	2019-10-01	104	6	2019-10-13 18:58:15.335479-03	1	2019-10-13
1876	10.00	2019-10-01	103	6	2019-10-13 19:00:44.75744-03	1	2019-10-13
1877	10.00	2019-09-01	103	6	2019-10-13 19:10:38.526148-03	1	2019-10-13
1878	100.00	2019-10-01	102	6	2019-10-13 19:16:01.777317-03	1	2019-10-13
1879	50.00	2019-10-01	90	6	2019-10-13 19:20:13.954131-03	1	2019-10-13
1880	15.00	2019-07-01	46	6	2019-10-13 19:41:58.797345-03	1	2019-10-13
1881	15.00	2019-08-01	46	6	2019-10-13 19:43:24.783981-03	1	2019-10-13
1882	15.00	2019-09-01	46	6	2019-10-13 19:45:14.773703-03	1	2019-10-13
1883	30.00	2019-10-01	271	6	2019-10-13 20:39:34.132982-03	1	2019-10-13
1884	20.00	2019-03-01	287	6	2019-10-13 20:42:38.905496-03	1	2019-10-13
1885	25.00	2019-09-01	217	5	2019-10-16 08:21:32.351204-03	1	2019-10-16
1886	25.00	2019-10-01	217	5	2019-10-16 08:22:07.511558-03	1	2019-10-16
1887	50.00	2019-10-01	231	5	2019-10-16 11:27:34.54114-03	1	2019-10-16
1888	10.00	2019-08-01	262	5	2019-10-16 11:40:32.110267-03	1	2019-10-16
1889	20.00	2019-09-01	233	5	2019-10-16 14:16:46.273786-03	1	2019-10-16
1890	10.00	2019-04-01	287	10	2019-10-16 19:02:57.847157-03	1	2019-10-16
1891	10.00	2019-05-01	287	10	2019-10-16 19:03:16.464149-03	1	2019-10-16
1892	100.00	2019-10-01	183	10	2019-10-16 19:06:37.762795-03	1	2019-10-16
1893	50.00	2019-09-01	164	5	2019-10-17 08:26:54.371793-03	1	2019-10-17
1894	50.00	2019-10-01	64	14	2019-10-17 18:59:21.707787-03	1	2019-10-17
1895	20.00	2010-10-01	224	5	2019-10-18 09:02:25.370536-03	1	2019-10-18
1896	10.00	2010-10-01	339	5	2019-10-18 14:09:42.625135-03	1	2019-10-18
1897	50.00	2010-10-01	332	5	2019-10-18 16:41:32.348067-03	1	2019-10-18
1898	25.00	2019-10-01	130	6	2019-10-18 19:15:00.67431-03	1	2019-10-18
1899	150.00	2019-10-01	85	6	2019-10-20 07:10:57.861446-03	1	2019-10-20
1900	100.00	2019-10-01	150	6	2019-10-20 07:13:38.731424-03	1	2019-10-20
1901	10.00	2019-10-01	135	6	2019-10-20 07:16:09.293964-03	1	2019-10-20
1902	50.00	2019-10-01	51	6	2019-10-20 07:18:16.762391-03	1	2019-10-20
1903	10.00	2019-10-01	165	6	2019-10-20 07:20:31.016472-03	1	2019-10-20
1904	10.00	2019-09-01	165	6	2019-10-20 07:21:53.750744-03	1	2019-10-20
1905	10.00	2019-11-01	165	6	2019-10-20 07:27:38.751842-03	1	2019-10-20
1906	15.00	2019-10-01	118	6	2019-10-20 07:31:00.978666-03	1	2019-10-20
1907	30.00	2019-09-01	7	6	2019-10-20 07:33:42.693758-03	1	2019-10-20
1908	80.00	2019-08-01	71	6	2019-10-20 07:59:40.857857-03	1	2019-10-20
1909	60.00	2019-10-01	54	6	2019-10-20 08:29:04.136195-03	1	2019-10-20
1910	40.00	2010-10-01	275	5	2019-10-22 09:20:03.472498-03	1	2019-10-22
1911	100.00	2010-10-01	238	5	2019-10-22 09:22:06.11199-03	1	2019-10-22
1912	50.00	2019-10-01	232	5	2019-10-22 10:38:59.49395-03	1	2019-10-22
1913	30.00	2019-10-01	94	14	2019-10-22 19:16:17.557953-03	1	2019-10-20
1914	50.00	2019-10-01	299	14	2019-10-22 19:17:32.462384-03	1	2019-10-20
1915	50.00	2019-11-01	299	14	2019-10-22 19:18:26.708406-03	1	2019-10-20
1916	30.00	2019-10-01	106	14	2019-10-22 19:19:26.119792-03	1	2019-10-20
1917	25.00	2019-10-01	203	14	2019-10-22 19:24:42.33874-03	1	2019-10-22
1918	25.00	2019-09-01	203	14	2019-10-22 19:26:48.734657-03	1	2019-10-22
1919	10.00	2019-08-01	302	5	2019-10-23 14:16:47.55561-03	1	2019-10-23
1920	10.00	2019-08-01	301	5	2019-10-23 14:18:02.022109-03	1	2019-10-23
1921	100.00	2019-10-01	230	5	2019-10-25 08:13:36.0247-03	1	2019-10-25
1922	30.00	2019-09-01	219	5	2019-10-26 11:05:40.492927-03	1	2019-10-26
1923	70.00	2019-09-01	229	5	2019-10-29 09:08:24.884965-03	1	2019-10-29
1924	25.00	2019-10-01	133	7	2019-10-29 19:12:44.415801-03	1	2019-10-29
1925	25.00	2019-09-01	133	7	2019-10-29 19:13:17.467079-03	1	2019-10-29
1926	10.00	2019-08-01	325	5	2019-10-30 08:13:41.428072-03	1	2019-10-30
1927	10.00	2019-09-01	325	5	2019-10-30 08:14:27.16873-03	1	2019-10-30
1928	20.00	2019-10-01	233	5	2019-10-30 14:50:20.062347-03	1	2019-10-30
1929	30.00	2019-10-01	8	10	2019-10-30 19:01:19.188083-03	1	2019-10-30
1930	50.00	2019-02-01	166	10	2019-10-30 19:23:36.061031-03	1	2019-10-30
1931	50.00	2019-03-01	166	10	2019-10-30 19:23:46.477512-03	1	2019-10-30
1932	10.00	2019-12-01	291	5	2019-10-31 15:50:03.625773-03	1	2019-10-31
1933	50.00	2019-10-01	227	5	2019-11-01 10:48:46.81546-03	1	2019-11-01
1934	50.00	2019-10-01	168	5	2019-11-01 14:35:27.564317-03	1	2019-11-01
1935	50.00	2019-11-01	168	5	2019-11-01 14:36:02.652752-03	1	2019-11-01
1936	50.00	2019-10-01	319	5	2019-11-01 15:03:43.568793-03	1	2019-11-01
1937	25.00	2019-08-01	39	10	2019-11-02 17:08:32.862629-03	1	2019-11-02
1938	25.00	2019-09-01	39	10	2019-11-02 17:10:12.791985-03	1	2019-11-02
1939	15.00	2019-10-01	188	10	2019-11-02 17:12:38.520341-03	1	2019-11-02
1940	1.00	2019-09-01	262	10	2019-11-02 17:21:37.640208-03	1	2019-11-02
1941	10.00	2019-10-01	262	10	2019-11-02 17:22:35.703641-03	1	2019-11-02
1942	40.00	2019-01-01	187	10	2019-11-02 17:26:55.470675-03	1	2019-11-02
1943	40.00	2019-12-01	262	10	2019-11-02 17:30:26.200333-03	1	2019-11-02
1944	50.00	2019-11-01	318	10	2019-11-02 17:37:40.099304-03	1	2019-11-02
1945	40.00	2019-10-01	206	10	2019-11-02 18:18:41.426422-03	1	2019-11-02
1946	100.00	2019-11-01	98	4	2019-11-03 07:00:17.884021-03	1	2019-11-03
1947	50.00	2019-10-01	57	4	2019-11-03 07:02:48.99995-03	1	2019-11-03
1948	150.00	2019-11-01	53	4	2019-11-03 07:04:38.01595-03	1	2019-11-03
1949	100.00	2019-10-01	115	4	2019-11-03 07:06:55.675553-03	1	2019-11-03
1950	20.00	2019-11-01	114	4	2019-11-03 07:08:45.121521-03	1	2019-11-03
1951	15.00	2019-11-01	154	4	2019-11-03 07:10:56.699214-03	1	2019-11-03
1952	25.00	2019-11-01	124	4	2019-11-03 07:13:51.679436-03	1	2019-11-03
1953	15.00	2019-11-01	152	4	2019-11-03 07:15:43.854939-03	1	2019-11-03
1954	30.00	2019-11-01	52	4	2019-11-03 07:17:31.57945-03	1	2019-11-03
1955	100.00	2019-11-01	150	4	2019-11-03 07:18:36.575332-03	1	2019-11-03
1956	50.00	2019-11-01	14	4	2019-11-03 07:20:42.869548-03	1	2019-11-03
1957	25.00	2019-11-01	130	4	2019-11-03 08:31:01.229719-03	1	2019-11-03
1958	10.00	2019-07-01	315	4	2019-11-03 08:37:42.890176-03	1	2019-11-03
1959	10.00	2019-08-01	315	4	2019-11-03 08:37:55.168755-03	1	2019-11-03
1960	20.00	2019-10-01	120	4	2019-11-03 08:42:00.678927-03	1	2019-11-03
1961	100.00	2019-11-01	148	6	2019-11-03 19:21:55.065024-03	1	2019-11-03
1962	50.00	2019-11-01	149	6	2019-11-03 19:24:36.78238-03	1	2019-11-03
1963	20.00	2019-09-01	63	7	2019-11-05 19:03:40.435416-03	1	2019-11-05
1964	130.00	2019-11-01	12	7	2019-11-05 19:26:25.742937-03	1	2019-11-05
1965	160.00	2019-11-01	247	7	2019-11-05 19:46:18.824098-03	1	2019-11-05
1966	50.00	2019-11-01	311	5	2019-11-06 09:01:38.189974-03	1	2019-11-06
1967	400.00	2019-11-01	162	5	2019-11-06 09:13:56.633449-03	1	2019-11-06
1968	50.00	2019-11-01	126	5	2019-11-06 15:31:09.833618-03	1	2019-11-06
1969	80.00	2019-12-01	208	10	2019-11-06 18:39:29.359811-03	1	2019-11-06
1970	20.00	2019-11-01	145	10	2019-11-06 18:51:50.063466-03	1	2019-11-06
1971	70.00	2019-06-01	19	10	2019-11-06 18:59:57.019729-03	1	2019-11-06
1972	70.00	2019-07-01	19	10	2019-11-06 19:03:14.313309-03	1	2019-11-06
1973	30.00	2019-12-01	134	10	2019-11-06 19:11:26.738602-03	1	2019-11-06
1974	50.00	2019-11-01	265	5	2019-11-07 08:56:18.732981-03	1	2019-11-07
1975	60.00	2019-11-01	264	5	2019-11-07 08:57:26.82145-03	1	2019-11-07
1976	50.00	2019-11-01	246	5	2019-11-07 09:15:50.257128-03	1	2019-11-07
1977	30.00	2019-10-01	268	5	2019-11-07 10:44:17.106391-03	1	2019-11-07
1978	40.00	2019-08-01	249	5	2019-11-07 11:05:19.282544-03	1	2019-11-07
1979	50.00	2019-08-01	250	5	2019-11-07 11:06:09.646454-03	1	2019-11-07
1980	10.00	2019-09-01	301	5	2019-11-07 15:17:52.577463-03	1	2019-11-07
1981	10.00	2019-09-01	302	5	2019-11-07 15:18:44.275674-03	1	2019-11-07
1982	50.00	2019-11-01	142	5	2019-11-07 16:01:35.791755-03	1	2019-11-07
1983	10.00	2019-10-01	47	5	2019-11-07 16:16:27.666057-03	1	2019-11-07
1984	10.00	2019-10-01	182	5	2019-11-08 17:12:46.319799-03	1	2019-11-05
1985	90.00	2019-11-01	237	5	2019-11-08 17:14:09.422161-03	1	2019-11-05
1986	50.00	2019-10-01	4	2	2019-11-08 19:13:10.919178-03	1	2019-11-07
1987	50.00	2019-11-01	4	2	2019-11-08 19:13:20.206818-03	1	2019-11-07
1988	20.00	2019-10-01	72	2	2019-11-08 19:13:56.635948-03	1	2019-11-07
1989	20.00	2019-11-01	72	2	2019-11-08 19:14:04.464436-03	1	2019-11-07
1990	15.00	2019-09-01	177	2	2019-11-08 19:14:37.125172-03	1	2019-11-07
1991	15.00	2019-10-01	177	2	2019-11-08 19:14:46.073097-03	1	2019-11-07
1992	30.00	2019-11-01	21	5	2019-11-09 14:53:59.442249-03	1	2019-11-09
1993	100.00	2019-11-01	211	5	2019-11-09 15:52:28.487531-03	1	2019-11-09
1994	30.00	2019-09-01	107	5	2019-11-09 16:07:31.363043-03	1	2019-11-09
1995	50.00	2019-11-01	212	5	2019-11-09 16:12:43.196183-03	1	2019-11-09
1996	30.00	2019-08-01	83	7	2019-11-10 07:04:26.764681-03	1	2019-11-10
1997	8.00	2019-11-01	135	7	2019-11-10 07:11:42.776075-03	1	2019-11-10
1998	20.00	2019-11-01	82	7	2019-11-10 07:16:49.248838-03	1	2019-11-10
1999	20.00	2019-11-01	78	7	2019-11-10 07:21:14.325331-03	1	2019-11-10
2000	10.00	2019-09-01	128	7	2019-11-10 07:26:22.061166-03	1	2019-11-10
2001	10.00	2019-10-01	128	7	2019-11-10 07:27:49.782127-03	1	2019-11-10
2002	50.00	2019-11-01	226	7	2019-11-10 07:33:09.928506-03	1	2019-11-10
2003	20.00	2019-10-01	202	7	2019-11-10 08:14:48.37501-03	1	2019-11-10
2004	35.00	2019-08-01	137	7	2019-11-10 08:28:46.930981-03	1	2019-11-10
2005	500.00	2019-11-01	270	7	2019-11-10 08:33:51.308756-03	1	2019-11-10
2006	20.00	2019-11-01	314	10	2019-11-10 18:39:45.460442-03	1	2019-11-10
2007	345.00	2019-11-01	317	5	2019-11-12 08:31:32.606691-03	1	2019-11-12
2008	100.00	2019-11-01	216	5	2019-11-12 08:54:42.700252-03	1	2019-11-12
2009	10.00	2019-11-01	60	5	2019-11-12 10:38:44.258942-03	1	2019-11-12
2010	20.00	2019-11-01	61	5	2019-11-12 10:39:30.495725-03	1	2019-11-12
2011	15.00	2019-10-01	279	7	2019-11-12 19:11:13.558744-03	1	2019-11-12
2012	50.00	2019-11-01	90	7	2019-11-12 19:17:58.324996-03	1	2019-11-10
2013	50.00	2019-10-01	192	7	2019-11-12 19:19:17.969599-03	1	2019-11-10
2014	50.00	2019-10-01	267	7	2019-11-12 19:19:54.559319-03	1	2019-11-10
2015	50.00	2019-08-01	159	7	2019-11-12 19:21:02.083455-03	1	2019-11-10
2016	50.00	2019-09-01	159	7	2019-11-12 19:21:48.440595-03	1	2019-11-10
2017	50.00	2019-10-01	159	7	2019-11-12 19:22:04.611621-03	1	2019-11-10
2018	50.00	2019-11-01	159	7	2019-11-12 19:22:16.763705-03	1	2019-11-10
2020	300.00	2019-10-01	309	5	2019-11-13 08:54:13.005879-03	1	2019-11-13
2019	100.00	2019-01-01	228	7	2019-11-12 19:24:36.193185-03	1	2019-11-10
2021	100.00	2019-11-01	223	5	2019-11-13 09:15:44.058715-03	1	2019-11-13
2022	30.00	2019-09-01	239	5	2019-11-13 10:35:47.248323-03	1	2019-11-13
2023	30.00	2019-10-01	239	5	2019-11-13 10:36:26.498918-03	1	2019-11-13
2024	20.00	2019-10-01	328	5	2019-11-13 11:07:43.589622-03	1	2019-11-13
2025	30.00	2019-10-01	286	5	2019-11-13 11:23:55.077535-03	1	2019-11-13
2026	30.00	2019-11-01	286	5	2019-11-13 11:28:46.791497-03	1	2019-11-13
2027	12.50	2019-09-01	331	5	2019-11-13 11:32:30.458683-03	1	2019-11-13
2028	12.50	2019-10-01	331	5	2019-11-13 11:32:54.132855-03	1	2019-11-13
2029	30.00	2019-11-01	56	7	2019-11-13 11:56:52.9105-03	1	2019-11-13
2030	40.00	2019-10-01	127	7	2019-11-13 12:16:18.731975-03	1	2019-11-13
2031	100.00	2019-12-01	299	7	2019-11-13 12:18:48.328748-03	1	2019-11-13
2032	100.00	2019-11-01	183	7	2019-11-13 12:25:10.171175-03	1	2019-11-13
2033	20.00	2019-11-01	163	14	2019-11-14 19:29:05.240976-03	1	2019-11-14
2034	80.00	2019-11-01	153	14	2019-11-14 19:30:06.392387-03	1	2019-11-14
2035	50.00	2019-11-01	269	5	2019-11-16 14:54:00.022789-03	1	2019-11-16
2036	20.00	2019-11-01	200	2	2019-11-17 06:58:55.288925-03	1	2019-11-17
2037	100.00	2019-07-01	190	2	2019-11-17 07:00:36.017731-03	1	2019-11-17
2038	150.00	2019-11-01	70	2	2019-11-17 07:02:37.898042-03	1	2019-11-17
2039	45.00	2019-11-01	113	2	2019-11-17 07:04:43.185785-03	1	2019-11-17
2040	10.00	2019-11-01	99	2	2019-11-17 07:06:17.197933-03	1	2019-11-17
2041	10.00	2019-12-01	99	2	2019-11-17 07:06:35.874298-03	1	2019-11-17
2042	30.00	2019-10-01	170	2	2019-11-17 07:09:38.925606-03	1	2019-11-17
2043	50.00	2019-11-01	172	2	2019-11-17 07:30:05.867268-03	1	2019-11-17
2044	50.00	2019-11-01	80	2	2019-11-17 07:31:48.07817-03	1	2019-11-17
2045	50.00	2019-11-01	36	2	2019-11-17 07:32:35.567524-03	1	2019-11-17
2046	50.00	2019-11-01	45	2	2019-11-17 07:33:17.075818-03	1	2019-11-17
2047	50.00	2019-11-01	116	2	2019-11-17 07:36:04.867713-03	1	2019-11-17
2048	80.00	2019-09-01	71	2	2019-11-17 07:59:59.528416-03	1	2019-11-17
2049	50.00	2019-11-01	240	2	2019-11-17 08:06:14.822198-03	1	2019-11-17
2050	10.00	2019-12-01	165	2	2019-11-17 08:25:41.065071-03	1	2019-11-17
2051	10.00	2020-01-01	165	2	2019-11-17 08:25:53.685239-03	1	2019-11-17
2052	100.00	2019-10-01	67	2	2019-11-17 18:44:27.825761-03	1	2019-11-17
2053	100.00	2019-11-01	42	2	2019-11-17 19:03:00.64377-03	1	2019-11-17
2054	20.00	2019-12-01	167	5	2019-11-19 08:32:28.916992-03	1	2019-11-19
2055	20.00	2020-01-01	167	5	2019-11-19 08:33:47.400868-03	1	2019-11-19
2056	40.00	2019-11-01	332	5	2019-11-19 16:51:59.166705-03	1	2019-11-19
2057	20.00	2019-08-01	176	7	2019-11-19 19:07:20.40619-03	1	2019-11-19
2058	20.00	2019-09-01	176	7	2019-11-19 19:09:46.157143-03	1	2019-11-19
2059	20.00	2019-11-01	176	7	2019-11-19 19:10:10.441032-03	1	2019-11-19
2060	25.00	2019-11-01	272	5	2019-11-20 11:33:52.648938-03	1	2019-11-20
2061	30.00	2019-10-01	219	5	2019-11-21 09:13:54.257305-03	1	2019-11-21
2062	100.00	2019-11-01	238	14	2019-11-21 19:03:33.256365-03	1	2019-11-21
2063	50.00	2019-11-01	321	14	2019-11-21 19:06:35.401406-03	1	2019-12-21
2064	20.00	2019-12-01	200	2	2019-11-24 07:02:51.182678-03	1	2019-11-24
2065	150.00	2019-11-01	85	2	2019-11-24 07:10:43.432819-03	1	2019-11-24
2066	60.00	2019-11-01	257	4	2019-11-24 07:52:12.246396-03	1	2019-11-24
2067	100.00	2019-11-01	104	2	2019-11-24 19:14:28.252712-03	1	2019-11-24
2068	50.00	2019-09-01	101	2	2019-11-24 19:16:19.119423-03	1	2019-11-24
2069	100.00	2019-11-01	230	5	2019-11-26 08:26:15.017833-03	1	2019-11-26
2070	120.00	2019-11-01	180	5	2019-11-26 08:47:28.836049-03	1	2019-11-26
2071	100.00	2019-11-01	86	5	2019-11-26 10:13:47.487629-03	1	2019-11-26
2072	10.00	2019-11-01	182	5	2019-11-26 16:38:49.5437-03	1	2019-11-26
2073	30.00	2019-11-01	275	5	2019-11-27 08:53:52.472475-03	1	2019-11-27
2074	50.00	2019-11-01	227	5	2019-11-27 15:18:57.192874-03	1	2019-11-27
2075	50.00	2019-10-01	164	5	2019-11-27 17:00:32.627658-03	1	2019-11-27
2076	30.00	2019-11-01	8	17	2019-11-27 18:52:56.998753-03	1	2019-11-27
2077	350.00	2019-10-01	111	17	2019-11-27 19:08:07.962263-03	1	2019-11-27
2078	50.00	2019-11-01	144	17	2019-11-27 20:18:24.812356-03	1	2019-11-27
2079	20.00	2019-12-01	282	5	2019-11-28 10:28:10.6832-03	1	2019-11-28
2080	50.00	2019-11-01	231	5	2019-11-28 10:33:55.210417-03	1	2019-11-28
2081	100.00	2019-10-01	278	5	2019-11-28 15:23:36.202058-03	1	2019-11-28
2082	100.00	2019-11-01	278	5	2019-11-28 15:24:05.52394-03	1	2019-11-28
2083	10.00	2019-10-01	320	5	2019-11-28 15:40:37.196817-03	1	2019-11-28
2084	10.00	2019-09-01	320	5	2019-11-28 15:41:17.740037-03	1	2019-11-28
2085	10.00	2019-11-01	320	5	2019-11-28 15:41:41.882228-03	1	2019-11-28
2086	30.00	2019-12-01	21	5	2019-11-30 14:49:46.134452-03	1	2019-11-30
2087	50.00	2019-11-01	57	2	2019-12-01 07:10:20.853549-03	1	2019-12-01
2088	25.00	2019-12-01	124	2	2019-12-01 07:15:23.222951-03	1	2019-12-01
2089	50.00	2019-11-01	51	2	2019-12-01 07:17:53.996258-03	1	2019-12-01
2090	30.00	2019-12-01	52	2	2019-12-01 07:21:08.829847-03	1	2019-12-01
2091	100.00	2019-12-01	98	2	2019-12-01 07:23:37.496587-03	1	2019-12-01
2092	15.00	2019-12-01	152	2	2019-12-01 07:26:15.08329-03	1	2019-12-01
2093	15.00	2019-12-01	154	2	2019-12-01 07:30:03.237807-03	1	2019-12-01
2094	20.00	2019-12-01	120	2	2019-12-01 07:31:55.375383-03	1	2019-12-01
2095	100.00	2019-12-01	150	2	2019-12-01 07:33:32.022533-03	1	2019-12-01
2096	150.00	2019-12-01	70	2	2019-12-01 07:35:39.675353-03	1	2019-12-01
2097	20.00	2019-11-01	202	2	2019-12-01 07:58:21.075186-03	1	2019-12-01
2099	25.00	2019-11-01	39	2	2019-12-01 19:47:35.693695-03	1	2019-12-01
2098	25.00	2019-10-01	39	2	2019-12-01 19:47:15.765444-03	1	2019-12-01
2100	20.00	2019-08-01	207	6	2019-12-01 21:06:33.223333-03	1	2019-12-01
2101	50.00	2019-11-01	261	5	2019-12-03 09:43:12.533743-03	1	2019-12-03
2102	50.00	2020-01-01	323	5	2019-12-03 11:05:28.726985-03	1	2019-12-03
2103	30.00	2019-11-01	239	5	2019-12-03 11:07:17.200586-03	1	2019-12-03
2104	50.00	2019-12-01	126	5	2019-12-03 14:51:36.174364-03	1	2019-12-03
2105	50.00	2019-12-01	62	7	2019-12-03 19:01:33.797288-03	1	2019-12-03
2106	90.00	2019-12-01	237	7	2019-12-03 19:06:26.510877-03	1	2019-12-03
2107	130.00	2019-12-01	12	7	2019-12-03 19:41:37.007816-03	1	2019-12-03
2108	160.00	2019-12-01	247	7	2019-12-03 19:46:38.726132-03	1	2019-12-03
2109	50.00	2019-11-01	198	7	2019-12-03 20:08:15.234632-03	1	2019-12-03
2110	300.00	2019-11-01	309	5	2019-12-04 08:41:03.123849-03	1	2019-12-04
2111	30.00	2019-11-01	268	5	2019-12-04 09:06:07.580768-03	1	2019-12-04
2112	10.00	2019-10-01	341	5	2019-12-04 10:35:43.726769-03	1	2019-12-04
2113	10.00	2019-11-01	341	5	2019-12-04 10:36:02.662634-03	1	2019-12-04
2114	20.00	2019-11-01	233	5	2019-12-04 14:29:00.421151-03	1	2019-12-04
2115	50.00	2019-12-01	14	10	2019-12-04 18:35:25.480359-03	1	2019-12-04
2116	50.00	2012-11-01	134	10	2019-12-04 18:46:06.81957-03	1	2019-12-04
2117	200.00	2019-12-01	119	10	2019-12-04 18:58:59.02395-03	1	2019-12-04
2118	100.00	2019-12-01	228	10	2019-12-04 19:34:41.808733-03	1	2019-12-04
2119	50.00	2019-12-01	265	5	2019-12-05 08:33:08.156758-03	1	2019-12-05
2120	60.00	2019-12-01	264	5	2019-12-05 08:34:06.455771-03	1	2019-12-05
2121	20.00	2019-11-01	63	5	2019-12-05 10:15:43.863563-03	1	2019-12-05
2122	50.00	2019-11-01	326	14	2019-12-05 18:50:59.101239-03	1	2019-12-05
2123	50.00	2019-12-01	326	14	2019-12-05 18:51:38.951341-03	1	2019-12-05
2124	40.00	2012-05-01	191	14	2019-12-05 19:05:59.122451-03	1	2019-12-05
2125	5.00	2019-06-01	307	14	2019-12-05 19:29:30.936105-03	1	2019-12-05
2126	5.00	2019-07-01	307	14	2019-12-05 19:30:04.439796-03	1	2019-12-05
2127	5.00	2019-08-01	307	14	2019-12-05 19:31:17.011479-03	1	2019-12-05
2128	5.00	2019-09-01	307	14	2019-12-05 19:32:36.251714-03	1	2019-12-05
2129	5.00	2019-10-01	307	14	2019-12-05 19:33:24.275603-03	1	2019-12-05
2130	5.00	2019-11-01	307	14	2019-12-05 19:33:52.800464-03	1	2019-12-05
2131	15.00	2019-11-01	188	5	2019-12-06 09:05:53.620758-03	1	2019-12-06
2132	40.00	2019-11-01	187	5	2019-12-06 09:07:14.01855-03	1	2019-12-06
2133	100.00	2020-01-01	208	5	2019-12-06 09:10:13.276432-03	1	2019-12-06
2134	50.00	2019-12-01	246	5	2019-12-06 09:19:39.49282-03	1	2019-12-06
2135	100.00	2019-12-01	223	5	2019-12-06 11:25:05.248848-03	1	2019-12-06
2136	5.00	2019-10-01	243	5	2019-12-06 14:12:38.787756-03	1	2019-12-06
2137	5.00	2019-11-01	243	5	2019-12-06 14:13:15.01243-03	1	2019-12-06
2138	5.00	2019-12-01	243	5	2019-12-06 14:13:44.617064-03	1	2019-12-06
2139	10.00	2019-06-01	199	5	2019-12-06 14:43:39.194629-03	1	2019-12-06
2140	10.00	2019-07-01	199	5	2019-12-06 14:44:07.35224-03	1	2019-12-06
2141	30.00	2019-10-01	107	5	2019-12-06 17:12:39.111143-03	1	2019-12-06
2142	20.00	2019-11-01	224	5	2019-12-07 09:21:32.585441-03	1	2019-12-07
2143	20.00	2019-12-01	224	5	2019-12-07 09:22:04.362636-03	1	2019-12-07
2144	100.00	2019-03-01	32	5	2019-12-07 10:26:40.615946-03	1	2019-12-07
2145	15.00	2019-11-01	279	5	2019-12-07 15:39:53.34238-03	1	2019-12-07
2146	50.00	2019-12-01	80	7	2019-12-08 06:57:30.613643-03	1	2019-12-08
2147	20.00	2019-12-01	202	7	2019-12-08 07:02:41.392834-03	1	2019-12-08
2148	50.00	2019-12-01	226	7	2019-12-08 07:05:22.674394-03	1	2019-12-08
2149	50.00	2019-12-01	82	7	2019-12-08 07:08:50.654184-03	1	2019-12-08
2150	20.00	2019-12-01	61	7	2019-12-08 07:12:51.43328-03	1	2019-12-08
2151	50.00	2019-12-01	90	7	2019-12-08 07:16:45.698245-03	1	2019-12-08
2152	20.00	2019-12-01	114	7	2019-12-08 07:19:28.560401-03	1	2019-12-08
2153	100.00	2019-12-01	115	7	2019-12-08 07:23:11.29494-03	1	2019-12-08
2154	10.00	2019-12-01	60	7	2019-12-08 07:27:29.300257-03	1	2019-12-08
2155	10.00	2019-11-01	128	7	2019-12-08 07:30:25.684092-03	1	2019-12-08
2156	10.00	2019-12-01	128	7	2019-12-08 07:32:16.122537-03	1	2019-12-08
2157	20.00	2019-11-01	18	7	2019-12-08 07:34:55.246252-03	1	2019-12-08
2158	20.00	2019-12-01	18	7	2019-12-08 07:37:07.564117-03	1	2019-12-08
2159	25.00	2019-10-01	97	7	2019-12-08 07:43:40.267781-03	1	2019-12-08
2160	80.00	2019-12-01	153	7	2019-12-08 08:04:38.321671-03	1	2019-12-08
2161	50.00	2019-12-01	168	7	2019-12-08 08:11:58.231096-03	1	2019-12-08
2162	40.00	2019-11-01	127	7	2019-12-08 08:13:19.335298-03	1	2019-12-08
2163	20.00	2019-12-01	145	7	2019-12-08 08:14:41.75173-03	1	2019-12-08
2164	30.00	2019-11-01	271	7	2019-12-08 08:15:59.271693-03	1	2019-12-08
2165	30.00	2019-12-01	271	7	2019-12-08 08:16:23.290016-03	1	2019-12-08
2166	20.00	2019-07-01	184	7	2019-12-08 08:24:25.688727-03	1	2019-12-08
2167	20.00	2019-08-01	184	7	2019-12-08 08:28:52.575101-03	1	2019-12-08
2168	25.00	2019-11-01	189	7	2019-12-08 08:37:39.820065-03	1	2019-12-08
2169	25.00	2019-12-01	189	7	2019-12-08 08:39:39.914662-03	1	2019-12-08
2170	50.00	2019-08-01	100	7	2019-12-08 08:42:56.828255-03	1	2019-12-08
2171	50.00	2019-09-01	100	7	2019-12-08 08:43:22.524086-03	1	2019-12-08
2172	50.00	2019-10-01	100	7	2019-12-08 08:45:17.876933-03	1	2019-12-08
2173	50.00	2019-12-01	159	7	2019-12-08 08:47:04.145202-03	1	2019-12-08
2174	50.00	2019-12-01	142	7	2019-12-08 08:49:11.597383-03	1	2019-12-08
2175	25.00	2019-10-01	303	5	2019-12-10 08:14:45.193978-03	1	2019-12-10
2176	25.00	2019-11-01	303	5	2019-12-10 08:15:29.322029-03	1	2019-12-10
2177	25.00	2019-12-01	303	5	2019-12-10 08:16:13.275154-03	1	2019-12-10
2178	15.00	2019-11-01	214	5	2019-12-10 09:21:28.591846-03	1	2019-12-10
2179	15.00	2019-12-01	214	5	2019-12-10 09:21:49.654665-03	1	2019-12-10
2180	20.00	2019-11-01	49	5	2019-12-10 15:16:36.037668-03	1	2019-12-10
2181	20.00	2019-12-01	49	5	2019-12-10 15:17:05.76783-03	1	2019-12-10
2182	20.00	2019-12-01	78	7	2019-12-10 19:19:14.870478-03	1	2019-12-10
2183	100.00	2019-12-01	238	7	2019-12-10 19:21:56.615255-03	1	2019-12-10
2184	50.00	2019-12-01	212	7	2019-12-10 19:23:47.973541-03	1	2019-12-10
2185	100.00	2019-12-01	211	7	2019-12-10 19:25:59.658427-03	1	2019-12-10
2186	50.00	2019-12-01	192	7	2019-12-10 19:28:03.876685-03	1	2019-12-10
2187	25.00	2019-11-01	203	7	2019-12-10 19:30:09.614416-03	1	2019-12-10
2188	25.00	2019-12-01	203	7	2019-12-10 19:31:21.672095-03	1	2019-12-10
2189	10.00	2019-11-01	103	7	2019-12-10 19:33:44.588833-03	1	2019-12-10
2190	10.00	2019-12-01	103	7	2019-12-10 19:34:12.751905-03	1	2019-12-10
2191	50.00	2019-12-01	306	7	2019-12-10 19:36:52.58703-03	1	2019-12-10
2192	40.00	2019-11-01	206	7	2019-12-10 20:12:06.211017-03	1	2019-12-10
2193	100.00	2019-01-01	42	17	2019-12-11 19:59:27.892845-03	1	2019-12-11
2194	100.00	2019-12-01	194	17	2019-12-11 20:02:13.714337-03	1	2019-12-11
2195	25.00	2019-09-01	76	5	2019-12-12 15:03:41.190154-03	1	2019-12-12
2196	25.00	2019-10-01	76	5	2019-12-12 15:04:18.849229-03	1	2019-12-12
2197	25.00	2019-11-01	76	5	2019-12-12 15:04:54.466851-03	1	2019-12-12
2198	25.00	2019-12-01	76	5	2019-12-12 15:05:35.553682-03	1	2019-12-12
2199	176.00	2019-12-01	174	4	2019-12-12 19:29:55.038846-03	1	2019-12-12
2200	20.00	2019-12-01	314	4	2019-12-12 19:33:30.850447-03	1	2019-12-10
2201	100.00	2019-12-01	216	5	2019-12-13 09:20:07.561019-03	1	2019-12-13
2202	30.00	2019-12-01	286	5	2019-12-13 11:52:00.277656-03	1	2019-12-13
2203	10.00	2019-11-01	47	5	2019-12-14 09:10:17.037612-03	1	2019-12-14
2204	500.00	2019-12-01	270	5	2019-12-14 16:24:12.396177-03	1	2019-12-13
2205	100.00	2019-12-01	258	5	2019-12-14 16:26:50.528137-03	1	2019-12-14
2206	50.00	2019-11-01	267	5	2019-12-14 16:28:32.063789-03	1	2019-12-14
2207	10.00	2019-08-01	199	3	2019-12-15 06:47:30.644473-03	1	2019-12-15
2208	10.00	2019-09-01	199	3	2019-12-15 06:49:46.451407-03	1	2019-12-15
2209	35.00	2019-09-01	137	3	2019-12-15 06:54:08.609262-03	1	2019-12-15
2210	50.00	2019-12-01	149	3	2019-12-15 06:56:48.289898-03	1	2019-12-15
2211	100.00	2019-11-01	242	3	2019-12-15 06:59:00.25336-03	1	2019-12-15
2212	100.00	2019-12-01	242	3	2019-12-15 07:00:24.451236-03	1	2019-12-15
2213	100.00	2019-12-01	148	3	2019-12-15 07:02:34.984475-03	1	2019-12-15
2216	150.00	2019-12-01	85	3	2019-12-15 07:08:34.784295-03	1	2019-12-15
2217	200.00	2019-12-01	53	3	2019-12-15 07:12:05.712926-03	1	2019-12-15
2218	20.00	2019-09-01	297	3	2019-12-15 07:17:23.617484-03	1	2019-12-15
2219	20.00	2019-10-01	297	3	2019-12-15 07:19:14.040312-03	1	2019-12-15
2220	20.00	2019-11-01	297	3	2019-12-15 07:22:59.314338-03	1	2019-12-15
2221	20.00	2019-08-01	81	3	2019-12-15 07:42:16.678563-03	1	2019-12-15
2222	20.00	2019-09-01	81	3	2019-12-15 07:44:26.075086-03	1	2019-12-15
2223	20.00	2019-09-01	298	3	2019-12-15 08:05:29.833677-03	1	2019-12-15
2224	20.00	2019-10-01	298	3	2019-12-15 08:07:11.564862-03	1	2019-12-15
2225	50.00	2018-03-01	342	3	2019-12-15 08:09:48.289526-03	1	2019-12-15
2214	200.00	2019-11-01	123	3	2019-12-15 07:05:20.817552-03	1	2019-12-15
2215	200.00	2019-12-01	123	3	2019-12-15 07:06:57.195397-03	1	2019-12-15
2226	30.00	2019-11-01	40	6	2019-12-15 18:51:14.064622-03	1	2019-12-15
2227	30.00	2019-12-01	40	6	2019-12-15 18:53:43.252036-03	1	2019-12-15
2228	100.00	2019-08-01	102	6	2019-12-15 19:00:38.401079-03	1	2019-12-15
2229	100.00	2019-09-01	102	6	2019-12-15 19:06:09.551726-03	1	2019-12-15
2230	20.00	2019-10-01	207	6	2019-12-15 19:10:54.389132-03	1	2019-12-15
2231	20.00	2019-11-01	207	6	2019-12-15 19:13:28.735673-03	1	2019-12-15
2232	20.00	2019-12-01	207	6	2019-12-15 19:15:32.874607-03	1	2019-12-15
2233	50.00	2019-10-01	101	6	2019-12-15 19:21:35.367811-03	1	2019-12-15
2234	25.00	2019-11-01	133	6	2019-12-15 19:24:31.29558-03	1	2019-12-15
2235	150.00	2019-12-01	104	6	2019-12-15 19:28:41.011401-03	1	2019-12-15
2236	350.00	2019-01-01	343	6	2019-12-15 19:44:19.882563-03	1	2019-12-15
2237	350.00	2019-02-01	343	6	2019-12-15 19:45:35.834235-03	1	2019-12-15
2238	350.00	2019-03-01	343	6	2019-12-15 19:46:33.668585-03	1	2019-12-15
2239	50.00	2019-11-01	88	6	2019-12-15 20:27:19.117207-03	1	2019-12-15
2240	50.00	2019-12-01	88	6	2019-12-15 20:28:50.380364-03	1	2019-12-15
2241	25.00	2019-12-01	272	5	2019-12-17 10:04:27.131946-03	1	2019-12-17
2242	30.00	2019-11-01	219	5	2019-12-17 10:08:38.17503-03	1	2019-12-17
2243	50.00	2019-12-01	231	5	2019-12-17 10:54:06.566037-03	1	2019-12-17
2244	345.00	2019-12-01	317	5	2019-12-18 11:38:03.986133-03	1	2019-12-18
2245	100.00	2019-11-01	102	17	2019-12-18 19:11:26.2846-03	1	2019-12-18
2246	50.00	2019-12-01	4	17	2019-12-18 19:13:05.509864-03	1	2019-12-18
2247	20.00	2019-12-01	163	17	2019-12-18 19:14:13.542961-03	1	2019-12-18
2248	20.00	2019-12-01	72	17	2019-12-18 19:17:00.72941-03	1	2019-12-18
2249	100.00	2019-12-01	183	17	2019-12-18 19:19:14.944453-03	1	2019-12-18
2251	50.00	2019-11-01	195	5	2019-12-19 08:31:29.652384-03	1	2019-12-19
2250	30.00	2019-11-01	170	17	2019-12-18 19:20:42.111917-03	1	2019-12-18
2252	50.00	2019-12-01	195	5	2019-12-19 08:32:10.499789-03	1	2019-12-19
2253	400.00	2019-12-01	162	5	2019-12-19 11:27:17.161673-03	1	2019-12-19
2254	50.00	2019-11-01	319	5	2019-12-19 16:59:55.900241-03	1	2019-12-19
2255	20.00	2019-06-01	204	5	2019-12-20 10:17:21.163775-03	1	2019-12-20
2256	20.00	2019-07-01	204	5	2019-12-20 10:18:08.550682-03	1	2019-12-20
2257	20.00	2019-08-01	204	5	2019-12-20 10:18:36.185034-03	1	2019-12-20
2258	60.00	2019-11-01	54	5	2019-12-20 11:24:51.338029-03	1	2019-12-20
2259	60.00	2019-12-01	54	5	2019-12-20 11:25:45.764866-03	1	2019-12-20
2260	7.50	2019-10-01	199	5	2019-12-20 14:05:08.694593-03	1	2019-12-20
2261	7.50	2019-11-01	199	5	2019-12-20 14:06:24.654137-03	1	2019-12-20
2262	5.00	2019-12-01	199	5	2019-12-20 14:07:04.476149-03	1	2019-12-20
2263	10.00	2019-12-01	182	5	2019-12-20 17:23:40.314623-03	1	2019-12-20
2264	20.00	2019-09-01	69	2	2019-12-20 19:05:47.252384-03	1	2019-12-20
2265	20.00	2019-10-01	69	2	2019-12-20 19:06:48.553444-03	1	2019-12-20
2266	20.00	2019-11-01	69	2	2019-12-20 19:08:08.820982-03	1	2019-12-20
2267	20.00	2019-12-01	69	2	2019-12-20 19:09:11.03848-03	1	2019-12-20
2268	10.00	2019-11-01	93	2	2019-12-20 19:11:25.969977-03	1	2019-12-20
2269	10.00	2019-12-01	93	2	2019-12-20 19:11:41.396472-03	1	2019-12-20
2270	45.00	2019-12-01	113	2	2019-12-22 07:01:17.484532-03	1	2019-12-22
2271	30.00	2019-11-01	125	2	2019-12-22 07:19:45.133457-03	1	2019-12-22
2272	30.00	2019-12-01	125	2	2019-12-22 07:19:59.475482-03	1	2019-12-22
2273	20.00	2019-10-01	81	2	2019-12-22 08:02:54.099127-03	1	2019-12-22
2274	30.00	2019-11-01	107	2	2019-12-22 08:12:13.907361-03	1	2019-12-22
2275	25.00	2019-11-01	217	2	2019-12-22 08:40:57.246852-03	1	2019-12-22
2276	25.00	2019-12-01	217	2	2019-12-22 08:41:20.012414-03	1	2019-12-22
2277	100.00	2019-12-01	230	5	2019-12-26 08:00:45.770521-03	1	2019-12-26
2278	10.00	2019-10-01	325	5	2019-12-27 08:08:46.518387-03	1	2019-12-27
2279	10.00	2019-11-01	325	5	2019-12-27 08:09:40.052571-03	1	2019-12-27
2280	10.00	2019-12-01	325	5	2019-12-27 08:10:16.628614-03	1	2019-12-27
2281	20.00	2018-11-01	163	4	2019-12-27 12:58:25.746176-03	1	2018-11-16
2282	50.00	2019-09-01	196	4	2019-12-27 13:05:07.920142-03	1	2019-10-01
2283	100.00	2018-11-01	196	4	2019-12-27 13:06:27.582728-03	1	2019-03-06
2284	50.00	2019-11-01	232	5	2019-12-27 15:42:26.472364-03	1	2019-12-27
2285	50.00	2019-12-01	232	5	2019-12-27 15:43:04.998045-03	1	2019-12-27
2286	30.00	2019-12-01	8	2	2019-12-27 18:40:45.880491-03	1	2019-12-27
2287	30.00	2020-01-01	39	2	2019-12-27 18:48:26.161059-03	1	2019-12-27
2288	40.00	2020-01-01	191	2	2019-12-27 18:52:03.794427-03	1	2019-12-27
2289	50.00	2019-11-01	101	2	2019-12-27 19:00:45.554112-03	1	2019-12-27
2290	25.00	2019-12-01	133	2	2019-12-27 19:04:16.379834-03	1	2019-12-27
2291	25.00	2019-09-01	175	2	2019-12-27 19:16:09.393625-03	1	2019-12-27
2292	25.00	2019-10-01	175	2	2019-12-27 19:17:03.491623-03	1	2019-12-27
2293	25.00	2019-11-01	175	2	2019-12-27 19:17:40.633038-03	1	2019-12-27
2294	25.00	2019-12-01	175	2	2019-12-27 19:18:29.917751-03	1	2019-12-27
2295	20.00	2019-06-01	17	3	2019-12-27 19:26:37.28616-03	1	2019-12-27
2296	20.00	2019-07-01	17	3	2019-12-27 19:27:28.131837-03	1	2019-12-27
2297	20.00	2019-08-01	17	3	2019-12-27 19:27:59.77605-03	1	2019-12-27
2298	20.00	2019-09-01	17	3	2019-12-27 19:29:32.231112-03	1	2019-12-27
2299	20.00	2019-10-01	17	3	2019-12-27 19:30:26.844225-03	1	2019-12-27
2300	50.00	2019-12-01	227	5	2019-12-28 09:23:46.089658-03	1	2019-12-28
2301	200.00	2020-01-01	119	5	2019-12-28 14:45:15.125153-03	1	2019-12-28
2302	40.00	2019-12-01	275	2	2019-12-29 07:03:20.909553-03	1	2019-12-29
2303	25.00	2019-05-01	200	2	2019-12-29 07:06:18.105893-03	1	2019-12-29
2304	100.00	2019-07-01	115	2	2019-12-29 07:12:10.512649-03	1	2019-12-29
2305	60.00	2019-12-01	257	2	2019-12-29 07:14:43.664782-03	1	2019-12-29
2306	50.00	2019-12-01	261	2	2019-12-29 07:16:45.433479-03	1	2019-12-29
2307	20.00	2019-11-01	81	4	2019-12-29 07:46:56.759145-03	1	2019-12-29
2308	20.00	2019-12-01	81	4	2019-12-29 07:47:39.646025-03	1	2019-12-29
2309	80.00	2019-10-01	71	4	2019-12-29 07:50:44.016878-03	1	2019-12-29
2310	100.00	2019-12-01	102	2	2019-12-29 18:59:14.745955-03	1	2019-12-29
2311	20.00	2019-10-01	310	2	2019-12-29 19:03:31.820282-03	1	2019-12-29
2312	20.00	2019-11-01	310	2	2019-12-29 19:03:46.08008-03	1	2019-12-29
2313	15.00	2019-09-01	58	2	2019-12-29 19:13:13.573924-03	1	2019-12-29
2314	15.00	2019-10-01	58	2	2019-12-29 19:13:54.78396-03	1	2019-12-29
2315	15.00	2019-11-01	58	2	2019-12-29 19:14:41.33426-03	1	2019-12-29
2316	15.00	2019-12-01	58	2	2019-12-29 19:15:07.226543-03	1	2019-12-29
2318	20.00	2019-10-01	313	5	2020-01-02 10:25:56.129025-03	1	2020-01-02
2317	30.00	2020-01-01	170	2	2019-12-29 19:20:30.591576-03	1	2019-12-29
2319	20.00	2019-11-01	313	5	2020-01-02 11:10:53.118991-03	1	2020-01-02
2320	20.00	2019-12-01	313	5	2020-01-02 11:13:52.722387-03	1	2020-01-02
2321	15.00	2019-12-01	279	5	2020-01-02 15:11:33.899614-03	1	2020-01-02
2322	50.00	2020-01-01	195	2	2020-01-02 19:14:23.499098-03	1	2020-01-02
2323	50.00	2020-01-01	196	2	2020-01-02 19:17:58.32103-03	1	2020-01-02
2324	50.00	2019-12-01	101	2	2020-01-02 19:23:17.07916-03	1	2020-01-02
2325	50.00	2020-01-01	62	2	2020-01-02 19:25:23.779768-03	1	2020-01-02
2326	100.00	2019-12-01	67	2	2020-01-02 19:27:12.084413-03	1	2020-01-02
2327	40.00	2019-12-01	127	2	2020-01-02 19:27:54.574094-03	1	2020-01-02
2328	20.00	2020-01-01	61	2	2020-01-02 19:30:56.652121-03	1	2020-01-02
2329	10.00	2020-01-01	60	2	2020-01-02 19:32:40.396295-03	1	2020-01-02
2330	10.00	2019-10-01	46	2	2020-01-02 19:38:36.592672-03	1	2020-01-02
2331	10.00	2019-11-01	46	2	2020-01-02 19:38:52.279232-03	1	2020-01-02
2332	10.00	2019-12-01	46	2	2020-01-02 19:39:05.337429-03	1	2020-01-02
2333	10.00	2019-07-01	48	2	2020-01-02 19:42:12.978491-03	1	2020-01-02
2334	10.00	2019-08-01	48	2	2020-01-02 19:43:51.08989-03	1	2020-01-02
2335	10.00	2019-09-01	48	2	2020-01-02 19:44:13.406435-03	1	2020-01-02
2336	10.00	2019-10-01	48	2	2020-01-02 19:44:36.479023-03	1	2020-01-02
2337	10.00	2019-11-01	48	2	2020-01-02 19:44:56.384109-03	1	2020-01-02
2338	10.00	2019-12-01	48	2	2020-01-02 19:45:21.871111-03	1	2020-01-02
2339	100.00	2020-01-01	194	2	2020-01-02 19:51:39.611373-03	1	2020-01-02
2340	50.00	2020-01-01	14	2	2020-01-02 19:59:10.600183-03	1	2020-01-02
2341	20.00	2020-01-01	345	5	2020-01-03 10:59:39.110979-03	1	2020-01-03
2342	12.00	2020-01-01	243	5	2020-01-03 14:01:19.425406-03	1	2020-01-03
2343	10.00	2020-01-01	199	5	2020-01-03 14:50:57.45974-03	1	2020-01-03
2344	50.00	2020-01-01	282	5	2020-01-04 08:30:19.625492-03	1	2020-01-04
2372	50.00	2020-01-01	142	5	2020-01-07 09:37:23.921752-03	1	2020-01-07
2346	200.00	2020-01-01	53	7	2020-01-05 07:17:34.895272-03	1	2020-01-05
2347	30.00	2020-01-01	346	7	2020-01-05 07:23:20.932171-03	1	2020-01-05
2348	100.00	2020-01-01	98	7	2020-01-05 07:26:00.778312-03	1	2020-01-05
2349	100.00	2020-02-01	194	7	2020-01-05 07:34:55.600064-03	1	2020-01-05
2350	50.00	2020-01-01	326	7	2020-01-05 07:37:25.022358-03	1	2020-01-05
2351	25.00	2020-01-01	124	7	2020-01-05 07:40:13.690404-03	1	2020-01-05
2352	30.00	2020-01-01	52	7	2020-01-05 07:46:58.564566-03	1	2020-01-05
2373	65.00	2020-01-01	54	5	2020-01-07 14:43:23.0243-03	1	2020-01-07
2354	15.00	2019-12-01	118	7	2020-01-05 07:53:04.343423-03	1	2020-01-05
2353	15.00	2019-11-01	118	7	2020-01-05 07:51:03.981042-03	1	2020-01-05
2355	50.00	2019-06-01	259	3	2020-01-05 08:02:18.852704-03	1	2020-01-05
2356	50.00	2019-07-01	259	3	2020-01-05 08:03:17.855319-03	1	2020-01-05
2357	50.00	2019-08-01	259	3	2020-01-05 08:04:44.329618-03	1	2020-01-05
2358	50.00	2019-09-01	259	3	2020-01-05 08:05:14.504824-03	1	2020-01-05
2359	50.00	2019-10-01	259	3	2020-01-05 08:07:13.782591-03	1	2020-01-05
2360	50.00	2019-11-01	259	3	2020-01-05 08:07:35.196834-03	1	2020-01-05
2361	15.00	2020-01-01	185	3	2020-01-05 09:03:40.916476-03	1	2020-01-05
2362	15.00	2020-02-01	185	3	2020-01-05 09:03:58.972754-03	1	2020-01-05
2363	15.00	2020-01-01	154	3	2020-01-05 09:09:09.343368-03	1	2020-01-05
2364	15.00	2020-01-01	152	3	2020-01-05 09:11:11.272614-03	1	2020-01-05
2365	50.00	2019-12-01	57	7	2020-01-05 19:07:36.037671-03	1	2020-01-05
2366	15.00	2019-11-01	177	7	2020-01-05 19:14:48.810556-03	1	2020-01-05
2367	15.00	2019-12-01	177	7	2020-01-05 19:22:03.295071-03	1	2020-01-05
2368	15.00	2020-01-01	177	7	2020-01-05 19:24:05.526802-03	1	2020-01-05
2369	20.00	2019-12-01	176	7	2020-01-05 19:29:25.375843-03	1	2020-01-05
2370	50.00	2019-12-01	172	7	2020-01-05 19:34:21.311137-03	1	2020-01-05
2371	30.00	2020-01-01	271	6	2020-01-05 20:34:58.190205-03	1	2020-01-05
2374	20.00	2020-01-01	347	7	2020-01-07 18:56:31.219931-03	1	2020-01-07
2375	20.00	2019-12-01	63	7	2020-01-07 19:03:48.687722-03	1	2020-01-07
2376	20.00	2019-12-01	77	7	2020-01-07 19:04:47.007049-03	1	2020-01-07
2377	20.00	2020-01-01	77	7	2020-01-07 19:05:31.132397-03	1	2020-01-07
2378	50.00	2020-01-01	134	7	2020-01-07 19:06:35.131657-03	1	2020-01-07
2379	50.00	2020-01-01	64	7	2020-01-07 19:07:54.386738-03	1	2020-01-07
2380	20.00	2020-01-01	69	7	2020-01-07 19:30:00.83966-03	1	2020-01-07
2381	50.00	2019-12-01	198	7	2020-01-07 19:48:04.389857-03	1	2020-01-07
2382	10.00	2020-02-01	199	5	2020-01-08 09:05:11.539685-03	1	2020-01-03
2383	30.00	2019-12-01	268	5	2020-01-08 09:07:09.67463-03	1	2020-01-03
2384	50.00	2019-12-01	318	5	2020-01-08 09:07:55.696145-03	1	2020-01-03
2385	10.00	2019-12-01	47	5	2020-01-08 09:08:39.137604-03	1	2020-01-03
2386	370.00	2020-01-01	317	5	2020-01-08 09:09:47.090715-03	1	2020-01-04
2387	120.00	2019-06-01	241	5	2020-01-08 09:11:04.764903-03	1	2020-01-04
2388	120.00	2019-07-01	241	5	2020-01-08 09:11:28.592666-03	1	2020-01-04
2389	10.00	2019-11-01	339	5	2020-01-08 09:12:58.931073-03	1	2020-01-04
2390	10.00	2019-12-01	339	5	2020-01-08 09:13:30.534997-03	1	2020-01-04
2391	50.00	2020-01-01	246	5	2020-01-08 10:39:51.322169-03	1	2020-01-08
2392	20.00	2019-12-01	233	5	2020-01-08 15:38:25.753013-03	1	2020-01-08
2393	100.00	2019-01-01	211	10	2020-01-08 18:47:54.121707-03	1	2020-01-08
2394	50.00	2019-01-01	212	10	2020-01-08 18:52:08.1443-03	1	2020-01-08
2395	80.00	2020-01-01	237	10	2020-01-08 19:12:59.584988-03	1	2020-01-08
2396	150.00	2020-01-01	173	10	2020-01-08 19:18:23.41171-03	1	2020-01-08
2397	50.00	2020-01-01	148	17	2020-01-08 19:31:12.680078-03	1	2020-01-08
2398	50.00	2020-01-01	149	17	2020-01-08 19:32:10.998321-03	1	2020-08-01
2399	130.00	2020-01-01	12	5	2020-01-09 09:42:04.471401-03	1	2020-01-09
2400	160.00	2020-01-01	247	5	2020-01-09 09:43:20.760358-03	1	2020-01-09
2401	30.00	2020-01-01	103	14	2020-01-09 19:18:23.362016-03	1	2020-01-09
2402	50.00	2020-01-01	321	14	2020-01-09 19:22:21.412691-03	1	2020-01-09
2403	20.00	2020-01-01	314	14	2020-01-09 19:45:17.769659-03	1	2020-01-09
2404	300.00	2019-12-01	309	5	2020-01-10 08:39:19.923428-03	1	2020-01-10
2405	10.00	2019-12-01	341	2	2020-01-10 19:00:21.806651-03	1	2020-01-10
2406	50.00	2020-01-01	80	2	2020-01-10 19:53:10.863112-03	1	2020-01-10
2407	20.00	2020-01-01	207	2	2020-01-10 20:03:15.65205-03	1	2020-01-10
2408	20.00	2020-01-01	49	5	2020-01-11 09:29:54.595241-03	1	2020-01-11
2409	70.00	2020-01-01	306	5	2020-01-11 14:53:11.836142-03	1	2020-01-11
2410	50.00	2020-01-01	126	5	2020-01-11 16:15:41.800685-03	1	2020-01-11
2411	50.00	2020-01-01	38	5	2020-01-11 16:16:40.800758-03	1	2020-01-11
2412	60.00	2020-01-01	264	5	2020-01-11 16:17:21.736036-03	1	2020-01-11
2413	50.00	2020-01-01	265	5	2020-01-11 16:18:12.656774-03	1	2020-01-11
2414	100.00	2020-02-01	208	5	2020-01-11 16:20:45.251749-03	1	2020-01-11
2415	10.00	2020-01-01	348	5	2020-01-11 16:24:27.613898-03	1	2020-01-11
2416	10.00	2020-01-01	99	7	2020-01-12 07:05:48.810646-03	1	2020-01-12
2417	45.00	2020-01-01	113	7	2020-01-12 07:08:56.895652-03	1	2020-01-12
2418	150.00	2020-01-01	85	7	2020-01-12 07:11:37.671382-03	1	2020-01-12
2419	20.00	2020-01-01	78	7	2020-01-12 07:13:50.247616-03	1	2020-01-12
2420	20.00	2020-01-01	114	7	2020-01-12 07:17:05.901244-03	1	2020-01-12
2447	50.00	2020-01-01	159	5	2020-01-14 09:37:42.270003-03	1	2020-01-14
2422	35.00	2020-01-01	56	7	2020-01-12 07:19:47.174163-03	1	2020-01-12
2423	200.00	2020-01-01	150	7	2020-01-12 07:24:06.777548-03	1	2020-01-12
2424	150.00	2020-01-01	70	7	2020-01-12 07:26:53.838747-03	1	2020-01-12
2425	50.00	2020-01-01	88	7	2020-01-12 07:28:47.140187-03	1	2020-01-12
2426	50.00	2020-01-01	226	7	2020-01-12 07:30:20.532897-03	1	2020-01-12
2427	5.00	2020-01-01	93	7	2020-01-12 07:32:04.901901-03	1	2020-01-12
2428	5.00	2020-02-01	93	7	2020-01-12 07:33:01.233702-03	1	2020-01-12
2429	20.00	2020-01-01	202	7	2020-01-12 07:37:28.470443-03	1	2020-01-12
2430	20.00	2020-01-01	200	7	2020-01-12 07:53:35.588431-03	1	2020-01-12
2431	35.00	2020-01-01	137	7	2020-01-12 08:00:54.22123-03	1	2020-01-12
2448	500.00	2020-01-01	270	5	2020-01-14 16:21:33.580372-03	1	2020-01-14
2433	15.00	2019-07-01	260	7	2020-01-12 08:04:27.317836-03	1	2020-01-12
2434	15.00	2019-08-01	260	7	2020-01-12 08:05:07.71119-03	1	2020-01-12
2435	15.00	2019-09-01	260	7	2020-01-12 08:05:41.843352-03	1	2020-01-12
2436	15.00	2019-10-01	260	7	2020-01-12 08:05:53.132024-03	1	2020-01-12
2437	40.00	2019-10-01	84	7	2020-01-12 08:07:03.119055-03	1	2020-01-12
2438	40.00	2019-11-01	84	7	2020-01-12 08:09:24.105422-03	1	2020-01-12
2439	10.00	2020-01-01	349	7	2020-01-12 08:25:03.963387-03	1	2020-01-12
2440	100.00	2020-01-01	104	10	2020-01-12 19:05:17.121048-03	1	2020-01-12
2441	30.00	2020-01-01	82	10	2020-01-12 19:08:59.359128-03	1	2020-01-12
2442	20.00	2020-01-01	145	10	2020-01-12 19:12:32.07833-03	1	2020-01-12
2443	30.00	2019-11-01	106	10	2020-01-12 19:18:43.753437-03	1	2020-01-12
2444	30.00	2019-12-01	106	10	2020-01-12 19:21:43.602653-03	1	2020-01-12
2445	50.00	2020-01-01	90	10	2020-01-12 19:27:45.071432-03	1	2020-01-12
2446	100.00	2019-12-01	42	10	2020-01-12 20:04:37.317237-03	1	2020-01-12
2449	100.00	2020-01-01	238	7	2020-01-14 19:07:45.189231-03	1	2020-01-14
2450	20.00	2020-01-01	163	7	2020-01-14 19:18:18.242598-03	1	2020-01-14
2451	20.00	2019-12-01	144	7	2020-01-14 19:46:51.705207-03	1	2020-01-14
2452	100.00	2020-01-01	228	7	2020-01-14 20:07:14.601231-03	1	2020-01-13
2453	25.00	2019-12-01	130	7	2020-01-14 20:09:27.341166-03	1	2020-01-13
2454	20.00	2020-01-01	18	7	2020-01-14 20:10:06.635558-03	1	2020-01-13
2455	20.00	2020-01-01	120	7	2020-01-14 20:10:45.469907-03	1	2020-01-13
2456	50.00	2020-01-01	51	7	2020-01-14 20:11:18.572711-03	1	2020-01-13
2457	50.00	2019-12-01	267	7	2020-01-14 20:11:54.306575-03	1	2020-01-13
2458	30.00	2020-01-01	286	7	2020-01-14 20:12:33.857144-03	1	2020-01-13
2459	25.00	2020-01-01	303	5	2020-01-15 08:30:19.308973-03	1	2020-01-15
2460	25.00	2020-02-01	303	5	2020-01-15 08:31:24.894647-03	1	2020-01-15
2461	50.00	2020-01-01	261	5	2020-01-15 08:55:35.53316-03	1	2020-01-15
2462	100.00	2020-01-01	223	5	2020-01-16 10:36:06.051817-03	1	2020-01-16
2463	30.00	2020-01-01	21	5	2020-01-16 14:42:49.689883-03	1	2020-01-16
2464	50.00	2020-01-01	187	5	2020-01-16 15:57:29.415186-03	1	2020-01-16
2465	20.00	2020-01-01	188	5	2020-01-16 15:58:22.506306-03	1	2020-01-16
2466	50.00	2020-01-01	116	5	2020-01-17 10:46:56.066284-03	1	2020-01-17
2467	30.00	2019-12-01	332	5	2020-01-17 16:10:07.59931-03	1	2020-01-17
2468	25.00	2020-01-01	130	6	2020-01-17 19:11:57.071862-03	1	2020-01-17
2469	150.00	2019-11-01	173	6	2020-01-17 19:25:07.041219-03	1	2020-01-17
2470	50.00	2020-01-01	231	5	2020-01-18 10:47:18.573593-03	1	2020-01-18
2471	30.00	2020-01-01	125	6	2020-01-19 08:09:06.52819-03	1	2020-01-19
2472	80.00	2020-01-01	153	6	2020-01-19 08:23:02.59885-03	1	2020-01-19
2473	350.00	2019-04-01	343	6	2020-01-19 19:26:17.976663-03	1	2020-01-19
2474	350.00	2019-05-01	343	6	2020-01-19 19:28:02.281776-03	1	2020-01-19
2475	350.00	2019-06-01	343	6	2020-01-19 19:30:08.193997-03	1	2020-01-19
2476	40.00	2019-12-01	206	6	2020-01-19 20:09:38.640734-03	1	2020-01-19
2477	50.00	2020-01-01	232	5	2020-01-21 10:43:36.876642-03	1	2020-01-21
2478	20.00	2020-01-01	292	5	2020-01-21 16:21:47.137747-03	1	2020-01-21
2479	20.00	2020-02-01	292	5	2020-01-21 16:22:12.862755-03	1	2020-01-21
2480	20.00	2020-03-01	292	5	2020-01-21 16:22:35.439622-03	1	2020-01-21
2481	20.00	2020-04-01	292	5	2020-01-21 16:22:54.896953-03	1	2020-01-21
2482	20.00	2020-05-01	292	5	2020-01-21 16:23:17.996679-03	1	2020-01-21
2483	20.00	2020-01-01	213	14	2020-01-22 19:30:08.976541-03	1	2020-01-22
2484	150.00	2019-12-01	173	14	2020-01-22 19:39:53.895576-03	1	2020-01-22
2485	20.00	2020-01-01	72	7	2020-01-23 19:24:43.84077-03	1	2020-01-23
2486	50.00	2020-01-01	4	7	2020-01-23 19:27:48.821315-03	1	2020-01-23
2487	100.00	2020-01-01	230	5	2020-01-25 09:24:35.406907-03	1	2020-01-25
2488	70.00	2020-01-01	19	5	2020-01-25 11:19:12.666734-03	1	2020-01-25
2489	40.00	2020-01-01	127	7	2020-01-26 06:53:09.928315-03	1	2020-01-26
2490	50.00	2020-01-01	144	7	2020-01-26 06:56:53.179456-03	1	2020-01-26
2491	20.00	2019-06-01	35	7	2020-01-26 07:01:06.715965-03	1	2020-01-26
2492	20.00	2019-07-01	35	7	2020-01-26 07:06:16.859167-03	1	2020-01-26
2493	10.00	2019-07-01	155	7	2020-01-26 07:15:08.633724-03	1	2020-01-26
2494	10.00	2020-02-01	165	7	2020-01-26 08:07:46.852209-03	1	2020-01-26
2495	10.00	2020-03-01	165	7	2020-01-26 08:11:45.626453-03	1	2020-01-26
2496	100.00	2020-01-01	102	10	2020-01-26 19:08:34.42195-03	1	2020-01-26
2497	30.00	2020-02-01	170	10	2020-01-26 19:13:38.404211-03	1	2020-01-26
2498	30.00	2019-12-01	219	5	2020-01-28 16:47:05.787312-03	1	2020-01-28
2499	180.00	2020-01-01	174	2	2020-01-28 19:24:17.14179-03	1	2020-01-28
2500	50.00	2020-02-01	14	2	2020-01-28 19:57:21.918634-03	1	2020-01-28
2501	300.00	2020-01-01	309	5	2020-01-29 08:43:11.339937-03	1	2020-01-29
2502	20.00	2020-01-01	224	5	2020-01-29 09:06:04.798696-03	1	2020-01-29
2503	10.00	2020-01-01	352	5	2020-01-29 10:10:41.136164-03	1	2020-01-29
2504	20.00	2020-01-01	233	5	2020-01-29 14:34:33.028769-03	1	2020-01-29
2505	400.00	2020-01-01	162	5	2020-01-29 16:58:26.73421-03	1	2020-01-29
2506	35.00	2020-01-01	8	3	2020-01-29 18:41:49.750136-03	1	2020-01-29
2507	100.00	2019-08-01	284	3	2020-01-29 18:53:35.989002-03	1	2020-01-29
2508	100.00	2019-09-01	284	3	2020-01-29 18:55:03.685995-03	1	2020-01-29
2509	100.00	2019-10-01	284	3	2020-01-29 18:56:24.691813-03	1	2020-01-29
2510	100.00	2019-11-01	284	3	2020-01-29 18:57:52.22782-03	1	2020-01-29
2511	100.00	2019-12-01	284	3	2020-01-29 18:58:52.407615-03	1	2020-01-29
2512	100.00	2020-01-01	284	3	2020-01-29 19:00:17.470398-03	1	2020-01-29
2513	50.00	2019-09-01	280	3	2020-01-29 20:06:33.73148-03	1	2020-01-29
2514	10.00	2020-01-01	325	5	2020-01-30 08:55:33.00424-03	1	2020-01-30
2515	10.00	2020-01-01	182	5	2020-01-30 15:07:20.235225-03	1	2020-01-30
2516	50.00	2020-01-01	227	5	2020-01-31 09:01:15.483842-03	1	2020-01-31
2517	50.00	2020-02-01	323	5	2020-01-31 09:38:55.394464-03	1	2020-01-31
2518	40.00	2020-01-01	275	5	2020-01-31 09:58:13.863574-03	1	2020-01-31
2519	10.00	2020-01-01	320	5	2020-01-31 16:29:57.331698-03	1	2020-01-31
2520	10.00	2020-02-01	320	5	2020-01-31 16:30:58.130029-03	1	2020-01-31
2521	10.00	2020-03-01	320	5	2020-01-31 16:31:25.094235-03	1	2020-01-31
2522	10.00	2020-01-01	273	5	2020-01-31 17:19:05.30962-03	1	2020-01-31
2523	25.00	2020-01-01	133	2	2020-01-31 20:13:38.33737-03	1	2020-01-31
2524	50.00	2020-01-01	168	2	2020-01-31 20:16:23.255721-03	1	2020-01-31
2525	50.00	2020-02-01	168	2	2020-01-31 20:16:36.583091-03	1	2020-01-31
2526	10.00	2020-01-01	341	5	2020-02-01 08:51:25.190436-03	1	2020-02-01
2527	500.00	2020-02-01	270	5	2020-02-01 11:40:06.730816-03	1	2020-02-01
2528	10.00	2020-03-01	199	3	2020-02-02 06:55:24.698868-03	1	2020-02-02
2529	10.00	2020-04-01	199	3	2020-02-02 06:56:56.802922-03	1	2020-02-02
2530	25.00	2020-02-01	124	3	2020-02-02 07:01:32.012461-03	1	2020-02-02
2531	25.00	2020-01-01	97	3	2020-02-02 07:04:22.272174-03	1	2020-02-02
2532	25.00	2020-02-01	97	3	2020-02-02 07:04:39.385477-03	1	2020-02-02
2533	20.00	2020-02-01	114	3	2020-02-02 07:08:03.135996-03	1	2020-02-02
2534	30.00	2020-02-01	82	3	2020-02-02 07:10:28.389871-03	1	2020-02-02
2535	45.00	2020-02-01	113	3	2020-02-02 07:12:55.41239-03	1	2020-02-02
2536	200.00	2020-02-01	53	3	2020-02-02 07:15:07.848269-03	1	2020-02-02
2537	20.00	2019-12-01	297	3	2020-02-02 07:19:47.720326-03	1	2020-02-02
2538	20.00	2020-01-01	297	3	2020-02-02 07:20:40.638534-03	1	2020-02-02
2539	15.00	2020-02-01	152	3	2020-02-02 07:24:04.990117-03	1	2020-02-02
2540	15.00	2020-02-01	154	3	2020-02-02 07:25:55.82936-03	1	2020-02-02
2541	35.00	2020-02-01	137	3	2020-02-02 07:36:52.473112-03	1	2020-02-02
2542	30.00	2020-02-01	52	3	2020-02-02 07:40:43.460059-03	1	2020-02-02
2555	30.00	2020-01-01	203	14	2020-02-04 19:01:28.522195-03	1	2020-02-04
2544	20.00	2019-10-01	204	3	2020-02-02 07:44:57.202635-03	1	2020-02-02
2556	100.00	2020-02-01	237	14	2020-02-04 19:17:55.552518-03	1	2020-02-04
2543	20.00	2019-09-01	204	3	2020-02-02 07:43:53.815034-03	1	2020-02-02
2545	30.00	2020-02-01	346	7	2020-02-02 07:53:45.047132-03	1	2020-02-02
2546	40.00	2020-02-01	191	6	2020-02-02 18:53:03.8051-03	1	2020-02-02
2547	30.00	2020-02-01	271	6	2020-02-02 18:58:55.577556-03	1	2020-02-02
2548	30.00	2020-02-01	39	6	2020-02-02 19:02:48.445234-03	1	2020-02-02
2549	200.00	2020-01-01	299	6	2020-02-02 19:07:42.255479-03	1	2020-02-02
2550	50.00	2020-01-01	57	6	2020-02-02 19:13:39.840044-03	1	2020-02-02
2551	50.00	2020-02-01	195	6	2020-02-02 19:19:00.02231-03	1	2020-02-02
2552	160.00	2020-02-01	247	6	2020-02-02 19:26:40.256167-03	1	2020-02-02
2553	20.00	2019-12-01	107	6	2020-02-02 19:29:39.258193-03	1	2020-02-02
2554	20.00	2020-01-01	107	6	2020-02-02 19:33:10.777247-03	1	2020-02-02
2557	100.00	2020-02-01	183	14	2020-02-04 19:20:31.122082-03	1	2020-02-04
2558	65.00	2020-02-01	62	14	2020-02-04 19:27:42.820344-03	1	2020-02-04
2559	50.00	2020-01-01	48	14	2020-02-04 19:31:16.796126-03	1	2020-02-04
2560	50.00	2020-01-01	46	14	2020-02-04 19:34:58.872817-03	1	2020-02-04
2561	50.00	2020-02-01	295	14	2020-02-04 20:05:19.798726-03	1	2020-02-04
2562	20.00	2020-02-01	77	14	2020-02-05 18:49:24.079074-03	1	2020-02-05
2563	50.00	2020-02-01	159	7	2020-02-05 20:00:41.777362-03	1	2020-02-05
2564	30.00	2020-02-01	103	7	2020-02-06 19:18:38.504745-03	1	2020-02-06
2565	35.00	2020-07-01	56	7	2020-02-07 14:56:57.326215-03	1	2020-02-07
2566	50.00	2020-02-01	354	7	2020-02-07 15:01:59.05211-03	1	2020-02-07
2567	50.00	2020-02-01	134	2	2020-02-09 07:09:24.540671-03	1	2020-02-09
2568	80.00	2020-02-01	153	2	2020-02-09 07:11:32.693721-03	1	2020-02-09
2569	20.00	2020-02-01	151	2	2020-02-09 07:14:33.579253-03	1	2020-02-09
2570	20.00	2020-02-01	61	2	2020-02-09 07:17:06.92041-03	1	2020-02-09
2571	10.00	2020-02-01	60	2	2020-02-09 07:18:53.140115-03	1	2020-02-09
2572	150.00	2020-02-01	70	2	2020-02-09 07:21:37.080065-03	1	2020-02-09
2573	30.00	2020-02-01	125	2	2020-02-09 07:23:42.098485-03	1	2020-02-09
2574	25.00	2020-01-01	189	2	2020-02-09 07:34:37.722485-03	1	2020-02-09
2575	25.00	2020-02-01	189	2	2020-02-09 07:34:59.167599-03	1	2020-02-09
2576	100.00	2020-02-01	284	2	2020-02-09 08:28:30.322715-03	1	2020-02-09
2577	10.00	2020-02-01	349	2	2020-02-09 08:32:57.940341-03	1	2020-02-09
2578	20.00	2020-02-01	213	14	2020-02-09 19:05:07.801316-03	1	2020-02-09
2579	20.00	2020-02-01	145	14	2020-02-09 19:14:46.34274-03	1	2020-02-09
2580	30.00	2020-01-01	40	14	2020-02-09 19:19:57.231872-03	1	2020-02-09
2581	100.00	2019-08-01	190	14	2020-02-09 19:23:20.34594-03	1	2020-02-09
2582	100.00	2020-02-01	67	14	2020-02-09 19:26:40.787375-03	1	2020-02-09
2583	50.00	2020-02-01	64	14	2020-02-09 19:29:12.542442-03	1	2020-02-09
2584	15.00	2020-01-01	47	14	2020-02-09 19:33:03.451248-03	1	2020-02-09
2585	50.00	2020-02-01	88	14	2020-02-09 19:35:24.50278-03	1	2020-02-09
2586	50.00	2020-01-01	206	14	2020-02-09 20:35:44.482798-03	1	2020-02-09
2587	50.00	2020-02-01	80	2	2020-02-12 19:05:15.442955-03	1	2020-02-12
2588	100.00	2020-02-01	211	2	2020-02-12 19:17:49.502725-03	1	2020-02-11
2589	100.00	2020-02-01	238	2	2020-02-12 19:18:51.242141-03	1	2020-02-11
2590	50.00	2020-02-01	212	2	2020-02-12 19:19:35.240609-03	1	2020-02-11
2591	222.00	2020-01-01	111	2	2020-02-12 19:20:21.548219-03	1	2020-02-11
2592	100.00	2020-02-01	228	2	2020-02-12 19:21:12.58898-03	1	2020-02-11
2593	50.00	2020-02-01	196	2	2020-02-12 19:21:48.115574-03	1	2020-02-11
2594	50.00	2020-02-01	321	2	2020-02-12 19:22:28.168659-03	1	2020-02-11
2595	20.00	2020-02-01	355	2	2020-02-12 19:27:13.041196-03	1	2020-02-11
2596	150.00	2020-02-01	173	2	2020-02-12 19:42:23.133693-03	1	2020-02-12
2597	20.00	2020-01-01	279	14	2020-02-13 12:08:05.545207-03	1	2020-02-13
2598	200.00	2020-02-01	150	14	2020-02-13 12:20:06.610801-03	1	2020-02-13
2599	5.00	2019-07-01	356	14	2020-02-13 12:31:36.644774-03	1	2020-02-13
2600	5.00	2019-08-01	356	14	2020-02-13 12:34:05.192292-03	1	2020-02-13
2601	5.00	2019-09-01	356	14	2020-02-13 12:35:56.409286-03	1	2020-02-13
2602	5.00	2019-10-01	356	14	2020-02-13 12:39:35.560815-03	1	2020-02-13
2603	5.00	2019-11-01	356	14	2020-02-13 12:46:50.155611-03	1	2020-02-13
2604	5.00	2019-12-01	356	14	2020-02-13 12:49:12.630444-03	1	2020-02-13
2605	100.00	2020-02-01	104	14	2020-02-14 19:56:53.413693-03	1	2020-02-14
2606	25.00	2020-01-01	217	3	2020-02-16 07:02:15.471405-03	1	2020-02-16
2607	25.00	2020-02-01	217	3	2020-02-16 07:03:47.098201-03	1	2020-02-16
2608	50.00	2020-02-01	51	3	2020-02-16 07:07:21.346929-03	1	2020-02-16
2609	150.00	2020-02-01	85	3	2020-02-16 07:11:40.26967-03	1	2020-02-16
2610	100.00	2020-02-01	98	3	2020-02-16 07:14:02.302581-03	1	2020-02-16
2611	100.00	2020-01-01	242	3	2020-02-16 07:16:50.923363-03	1	2020-02-16
2612	100.00	2020-02-01	242	3	2020-02-16 07:18:03.698886-03	1	2020-02-16
2613	200.00	2020-01-01	123	3	2020-02-16 07:20:04.596041-03	1	2020-02-16
2614	200.00	2020-02-01	123	3	2020-02-16 07:21:08.207889-03	1	2020-02-16
2615	60.00	2020-01-01	257	3	2020-02-16 07:51:35.889826-03	1	2020-02-16
2616	20.00	2020-01-01	136	3	2020-02-16 08:37:12.528446-03	1	2020-02-16
2617	20.00	2020-02-01	136	3	2020-02-16 08:38:17.118-03	1	2020-02-16
2618	30.00	2020-02-01	40	3	2020-02-16 19:00:24.615225-03	1	2020-02-16
2619	50.00	2020-02-01	90	3	2020-02-16 19:04:31.12023-03	1	2020-02-16
2620	25.00	2020-02-01	130	3	2020-02-16 19:07:29.840596-03	1	2020-02-16
2621	50.00	2020-02-01	144	3	2020-02-16 19:09:41.025126-03	1	2020-02-16
2622	50.00	2020-01-01	198	3	2020-02-16 19:59:54.551441-03	1	2020-02-16
2623	30.00	2019-09-01	83	17	2020-02-20 19:10:39.67076-03	1	2020-02-20
2624	30.00	2019-10-01	83	17	2020-02-20 19:12:55.324243-03	1	2020-02-20
2625	30.00	2019-11-01	83	17	2020-02-20 19:14:39.469206-03	1	2020-02-20
2626	30.00	2019-12-01	83	17	2020-02-20 19:16:55.974753-03	1	2020-02-20
2627	20.00	2020-02-01	200	2	2020-02-23 06:57:54.514426-03	1	2020-02-23
2628	50.00	2020-02-01	149	18	2020-02-23 07:06:18.608476-03	1	2020-02-23
2629	50.00	2020-02-01	69	18	2020-02-23 07:08:12.229352-03	1	2020-02-23
2631	20.00	2020-01-01	81	18	2020-02-23 07:24:55.213283-03	1	2020-02-23
2632	80.00	2020-01-01	71	18	2020-02-23 07:52:09.025929-03	1	2020-02-23
2633	80.00	2020-02-01	71	18	2020-02-23 07:57:32.017142-03	1	2020-02-23
2630	10.00	2020-01-01	128	18	2020-02-23 07:21:23.704189-03	1	2020-02-23
2634	10.00	2020-02-01	128	18	2020-02-23 08:02:29.766926-03	1	2020-02-23
2635	20.00	2020-01-01	55	2	2020-02-23 08:04:47.543315-03	1	2020-02-23
2636	20.00	2020-02-01	55	2	2020-02-23 08:04:59.16981-03	1	2020-02-23
2637	35.00	2020-02-01	8	2	2020-02-23 08:11:31.108258-03	1	2020-02-23
2638	50.00	2020-03-01	14	7	2020-02-26 19:25:04.662888-03	1	2020-02-26
2639	20.00	2020-02-01	72	7	2020-02-26 20:50:50.08814-03	1	2020-02-26
2640	50.00	2020-02-01	4	7	2020-02-26 20:54:19.722062-03	1	2020-02-26
2641	10.00	2019-02-01	273	7	2020-02-26 20:56:27.61547-03	1	2020-02-26
2642	90.00	2020-03-01	237	4	2020-02-28 18:53:09.680626-03	1	2020-02-28
2643	40.00	2020-02-01	127	4	2020-02-28 19:05:32.062079-03	1	2020-02-28
2644	20.00	2020-03-01	39	4	2020-02-28 19:09:45.780394-03	1	2020-02-28
2645	10.00	2020-02-01	352	7	2020-02-28 19:57:07.645978-03	1	2020-02-28
2646	25.00	2020-03-01	124	3	2020-03-01 07:02:04.900924-03	1	2020-03-01
2647	30.00	2020-03-01	52	3	2020-03-01 07:05:52.854121-03	1	2020-03-01
2648	100.00	2020-01-01	67	3	2020-03-01 07:09:27.30639-03	1	2020-03-01
2649	60.00	2020-03-01	62	3	2020-03-01 07:14:23.059145-03	1	2020-03-01
2650	30.00	2020-03-01	82	3	2020-03-01 07:18:25.105355-03	1	2020-03-01
2651	25.00	2020-02-01	107	3	2020-03-01 07:42:05.239626-03	1	2020-03-01
2652	50.00	2019-03-01	206	10	2020-03-01 18:57:28.246876-03	1	2020-03-01
2653	30.00	2020-02-01	175	10	2020-03-01 19:08:22.797959-03	1	2020-03-01
2654	200.00	2020-03-01	306	10	2020-03-01 19:12:56.175487-03	1	2020-03-01
2655	50.00	2020-03-01	196	10	2020-03-01 19:17:18.359457-03	1	2020-03-01
2656	30.00	2019-01-01	106	10	2020-03-01 19:20:24.984974-03	1	2020-03-01
2657	30.00	2020-03-01	271	10	2020-03-01 19:26:35.292977-03	1	2020-03-01
2658	100.00	2020-03-01	194	10	2020-03-01 19:31:59.833479-03	1	2020-03-01
2659	50.00	2020-02-01	57	6	2020-03-01 19:58:07.964291-03	1	2020-03-01
2660	50.00	2020-01-01	101	6	2020-03-01 20:02:45.18125-03	1	2020-03-01
2661	30.00	2020-03-01	170	6	2020-03-01 20:05:28.059708-03	1	2020-03-01
2662	100.00	2020-01-01	24	6	2020-03-01 20:51:31.138866-03	1	2020-03-01
2663	20.00	2020-01-01	176	17	2020-03-03 19:21:04.19495-03	1	2020-03-03
2664	20.00	2020-02-01	176	17	2020-03-03 19:21:30.220796-03	1	2020-03-03
2665	20.00	2020-03-01	176	17	2020-03-03 19:21:53.958804-03	1	2020-03-03
2666	50.00	2020-03-01	64	17	2020-03-03 19:23:06.693934-03	1	2020-03-03
2667	20.00	2020-03-01	77	17	2020-03-03 19:24:07.396954-03	1	2020-03-03
2668	50.00	2020-02-01	48	3	2020-03-04 18:59:48.322417-03	1	2020-03-04
2670	130.00	2020-03-01	12	3	2020-03-04 19:06:34.560057-03	1	2020-03-04
2671	160.00	2020-03-01	247	3	2020-03-04 19:08:34.989964-03	1	2020-03-04
2672	50.00	2020-03-01	97	7	2020-03-05 19:17:10.220026-03	1	2020-03-05
2673	20.00	2020-03-01	163	7	2020-03-05 19:20:58.323233-03	1	2020-03-05
2674	40.00	2020-03-01	191	7	2020-03-05 20:54:04.077308-03	1	2020-03-05
2675	80.00	2020-03-01	153	2	2020-03-08 07:05:33.988113-03	1	2020-03-08
2676	10.00	2020-03-01	60	2	2020-03-08 07:07:46.716378-03	1	2020-03-08
2677	20.00	2020-03-01	61	2	2020-03-08 07:09:40.373115-03	1	2020-03-08
2678	20.00	2020-03-01	202	2	2020-03-08 07:10:40.376055-03	1	2020-03-08
2679	100.00	2020-03-01	242	2	2020-03-08 07:12:26.120378-03	1	2020-03-08
2680	200.00	2020-03-01	123	2	2020-03-08 07:14:32.360916-03	1	2020-03-08
2682	20.00	2020-02-01	78	2	2020-03-08 07:18:46.076861-03	1	2020-03-08
2683	20.00	2020-03-01	145	2	2020-03-08 07:20:37.337359-03	1	2020-03-08
2684	10.00	2020-02-01	99	2	2020-03-08 07:22:12.701243-03	1	2020-03-08
2685	10.00	2020-03-01	99	2	2020-03-08 07:22:28.304466-03	1	2020-03-08
2686	150.00	2020-03-01	70	2	2020-03-08 07:25:21.667685-03	1	2020-03-08
2687	100.00	2020-01-01	115	2	2020-03-08 07:29:33.398498-03	1	2020-03-08
2688	100.00	2020-03-01	98	2	2020-03-08 07:31:33.046835-03	1	2020-03-08
2689	20.00	2020-02-01	18	2	2020-03-08 07:33:34.04108-03	1	2020-03-08
2690	20.00	2020-03-01	18	2	2020-03-08 07:35:51.754681-03	1	2020-03-08
2691	20.00	2020-03-01	114	2	2020-03-08 07:37:47.568187-03	1	2020-03-08
2692	15.00	2020-03-01	154	2	2020-03-08 07:39:39.050902-03	1	2020-03-08
2693	15.00	2020-03-01	152	2	2020-03-08 07:40:37.518883-03	1	2020-03-08
2694	30.00	2020-03-01	358	2	2020-03-08 07:43:55.13425-03	1	2020-03-08
2695	50.00	2020-03-01	36	2	2020-03-08 07:44:38.687303-03	1	2020-03-08
2696	50.00	2020-03-01	45	2	2020-03-08 07:46:11.32303-03	1	2020-03-08
2697	15.00	2020-02-01	47	2	2020-03-08 07:48:09.526692-03	1	2020-03-06
2698	100.00	2020-03-01	211	2	2020-03-08 07:48:47.953922-03	1	2020-03-06
2699	50.00	2020-03-01	212	2	2020-03-08 07:49:19.750545-03	1	2020-03-06
2700	25.00	2020-03-01	56	2	2020-03-08 07:50:36.899992-03	1	2020-03-06
2701	50.00	2020-03-01	168	2	2020-03-08 07:51:30.061365-03	1	2020-03-06
2681	200.00	2020-03-01	53	2	2020-03-08 07:16:47.116906-03	1	2020-03-08
2702	35.00	2020-03-01	137	2	2020-03-08 08:11:39.13477-03	1	2020-03-08
2703	50.00	2020-01-01	240	2	2020-03-08 08:13:26.555525-03	1	2020-03-08
2704	50.00	2020-02-01	240	2	2020-03-08 08:13:39.034759-03	1	2020-03-08
2705	160.00	2020-02-01	174	2	2020-03-08 08:15:37.108055-03	1	2020-03-08
2706	20.00	2020-03-01	213	2	2020-03-08 08:27:23.724679-03	1	2020-03-06
2707	30.00	2020-03-01	103	2	2020-03-08 08:28:16.443038-03	1	2020-03-06
2708	50.00	2020-03-01	88	4	2020-03-08 08:41:45.610722-03	1	2020-03-08
2709	40.00	2019-12-01	84	4	2020-03-08 08:44:13.926532-03	1	2020-03-08
2710	20.00	2020-01-01	63	14	2020-03-08 18:34:30.63185-03	1	2020-03-08
2711	50.00	2020-03-01	80	3	2020-03-08 18:58:11.117311-03	1	2020-03-08
2712	50.00	2020-03-01	90	3	2020-03-08 19:02:38.500959-03	1	2020-03-08
2669	100.00	2020-04-01	208	3	2020-03-04 19:04:29.299074-03	1	2020-03-04
2713	40.00	2020-02-01	275	3	2020-03-08 19:14:42.530868-03	1	2020-03-08
2714	50.00	2020-03-01	275	3	2020-03-08 19:16:12.798155-03	1	2020-03-08
2715	100.00	2020-03-01	354	3	2020-03-08 19:18:35.335447-03	1	2020-03-08
2716	100.00	2019-09-01	190	17	2020-03-10 19:26:40.871161-03	1	2020-03-10
2717	30.00	2020-02-01	203	17	2020-03-10 19:27:41.732738-03	1	2020-03-10
2718	50.00	2020-03-01	159	17	2020-03-10 19:30:05.892413-03	1	2020-03-10
2719	25.00	2020-03-01	130	17	2020-03-10 20:39:09.781715-03	1	2020-03-10
2720	20.00	2020-02-01	279	14	2020-03-11 18:59:17.061051-03	1	2020-03-11
2721	50.00	2020-03-01	149	14	2020-03-11 19:36:40.10313-03	1	2020-03-11
2722	50.00	2020-02-01	148	14	2020-03-11 19:39:32.812752-03	1	2020-03-11
2723	25.00	2020-03-01	314	14	2020-03-11 20:12:07.669124-03	1	2020-03-11
2724	50.00	2020-03-01	51	3	2020-03-15 06:56:06.26363-03	1	2020-03-15
2725	150.00	2020-03-01	85	3	2020-03-15 07:11:51.771518-03	1	2020-03-15
2726	50.00	2020-03-01	113	3	2020-03-15 07:14:21.268776-03	1	2020-03-15
2727	100.00	2020-03-01	150	3	2020-03-15 07:18:11.855844-03	1	2020-03-15
2728	10.00	2020-03-01	273	3	2020-03-15 08:23:32.805274-03	1	2020-03-15
2729	500.00	2020-03-01	270	3	2020-03-15 08:25:49.732465-03	1	2020-03-15
2730	50.00	2020-03-01	69	18	2020-03-15 18:52:07.880966-03	1	2020-03-15
2731	100.00	2020-03-01	104	18	2020-03-15 18:55:29.881719-03	1	2020-03-15
2732	105.00	2020-02-01	42	18	2020-03-15 19:03:17.018244-03	1	2020-03-15
2733	20.00	2020-03-01	204	18	2020-03-15 19:05:54.614277-03	1	2020-03-15
2734	30.00	2020-03-01	346	18	2020-03-15 19:07:57.918477-03	1	2020-03-15
2735	350.00	2020-01-01	343	18	2020-03-15 19:10:52.647713-03	1	2020-03-15
2736	350.00	2019-07-01	343	18	2020-03-15 19:13:15.288575-03	1	2020-03-15
2737	160.00	2020-03-01	173	18	2020-03-15 19:16:51.133893-03	1	2020-03-15
2738	25.00	2020-01-01	94	18	2020-03-15 19:19:38.185528-03	1	2020-03-15
2739	200.00	2020-02-01	299	18	2020-03-15 19:23:50.749293-03	1	2020-03-15
2740	200.00	2020-03-01	299	18	2020-03-15 19:26:58.033983-03	1	2020-03-08
2741	25.00	2020-02-01	94	18	2020-03-15 19:29:14.050704-03	1	2020-03-15
2742	25.00	2020-01-01	245	12	2020-03-15 20:06:21.681392-03	1	2020-03-15
2743	25.00	2020-02-01	245	12	2020-03-15 20:07:56.655055-03	1	2020-03-15
2744	80.00	2020-03-01	321	14	2020-03-17 18:56:15.901826-03	1	2020-03-17
2745	100.00	2020-03-01	228	14	2020-03-17 19:28:42.784101-03	1	2020-03-17
\.


--
-- Name: dizimo_dizimo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('dizimo_dizimo_id_seq', 2745, true);


--
-- Data for Name: dizimo_doacao; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY dizimo_doacao (id, valor, descricao, usuario_id, cadastrado_em, paroquia_id, data) FROM stdin;
1	500.00	doação para o festejo de Suélen Brito	7	2019-04-16 19:14:34.863103-03	1	2019-04-14
2	50.00	PARA FESTEJO DE FATIMA	2	2019-05-01 19:02:27.230251-03	1	2019-05-01
3	200.00	PARA FESTEJO DE FATIMA	2	2019-05-01 19:03:22.792151-03	1	1919-05-01
4	5.00	DOAÇÃO PARA O FESTEJO	2	2019-05-02 19:58:28.282229-03	1	2019-05-02
5	50.00	Lilia Ferreira	3	2019-05-13 08:35:48.08897-03	1	2019-05-13
6	20.00	doação	9	2019-05-26 08:00:21.962343-03	1	2019-05-26
7	10.00	DOACAO	2	2019-05-31 21:12:23.655707-03	1	2019-05-31
8	20.00	Anônima	3	2019-06-20 07:52:09.35897-03	1	2019-06-20
9	20.00	Anonima	3	2019-10-13 08:30:43.953196-03	1	2019-10-13
10	20.00	dulce maria moreira pontes	3	2019-10-13 08:32:28.271509-03	1	2019-10-13
12	20.00	Anonima	3	2020-02-16 07:43:09.358296-03	1	2020-02-16
13	20.00	Anonima	3	2020-03-15 07:07:03.930059-03	1	2020-03-15
\.


--
-- Name: dizimo_doacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('dizimo_doacao_id_seq', 13, true);


--
-- Data for Name: dizimo_oferta; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY dizimo_oferta (id, valor, usuario_id, cadastrado_em, paroquia_id, data) FROM stdin;
2	121.40	2	2018-10-27 20:42:40.335024-03	1	2018-10-29
4	51.20	2	2018-11-01 19:46:11.006511-03	1	2018-11-01
5	287.15	2	2018-11-02 17:53:12.390641-03	1	2018-10-28
6	294.25	2	2018-11-11 19:58:01.957134-03	1	2018-11-11
7	55.55	2	2018-11-15 19:54:33.247564-03	1	2018-11-15
8	93.75	2	2018-11-16 19:59:14.979335-03	1	2018-11-16
9	323.10	2	2018-11-18 08:13:02.343329-03	1	2018-11-18
10	337.85	3	2018-11-25 08:05:20.71438-03	1	2018-11-25
11	58.05	2	2018-11-27 19:47:14.399179-03	1	2018-11-27
12	85.65	2	2018-12-06 19:34:21.109938-03	1	2018-12-06
13	240.85	2	2018-12-16 08:07:16.456001-03	1	2018-12-16
14	246.50	2	2018-12-16 20:00:11.641049-03	1	2018-12-16
15	60.45	2	2018-12-18 19:26:50.190092-03	1	2018-12-18
16	101.45	2	2018-12-20 19:55:07.935576-03	1	2018-12-20
17	276.00	2	2018-12-23 08:10:23.744303-03	1	2018-12-23
18	198.55	2	2018-12-23 19:58:29.186934-03	1	2018-12-23
19	31.00	2	2018-12-27 19:33:16.091307-03	1	2018-12-27
20	349.95	2	2018-12-30 08:18:50.856027-03	1	2018-12-30
21	148.45	2	2018-12-30 08:28:56.992891-03	1	2018-12-28
22	107.40	2	2019-01-02 20:11:12.002369-03	1	2019-01-02
25	32.35	2	2019-01-03 19:38:34.598406-03	1	2019-01-03
27	447.00	2	2019-01-06 08:48:40.979748-03	1	2019-01-06
28	92.70	2	2019-01-08 19:50:18.047608-03	1	2019-01-08
29	47.90	2	2019-01-09 19:53:23.191197-03	1	2019-01-09
30	235.60	4	2019-01-10 18:47:04.136863-03	1	2019-01-06
31	42.60	4	2019-01-10 19:50:39.421905-03	1	2019-01-10
32	61.10	6	2019-01-11 19:53:23.312949-03	1	2019-01-11
33	155.55	2	2019-01-13 07:51:17.339951-03	1	2019-01-13
34	557.65	2	2019-01-13 19:32:41.710254-03	1	2019-01-13
36	146.20	2	2019-01-15 19:58:32.531429-03	1	2019-01-15
37	74.45	2	2019-01-16 19:39:40.652596-03	1	2019-01-16
38	40.50	2	2019-01-17 19:38:13.806223-03	1	2019-01-17
39	264.30	2	2019-01-20 08:01:14.984463-03	1	2019-01-20
40	214.55	2	2019-01-20 20:11:22.432231-03	1	2019-01-20
41	171.80	2	2019-01-22 19:08:36.514943-03	1	2019-01-18
42	109.70	2	2019-01-22 19:42:52.996914-03	1	2019-01-22
43	86.50	2	2019-01-24 19:05:37.957335-03	1	2019-01-23
46	18.75	2	2019-01-25 19:53:47.292605-03	1	2019-01-25
24	185.00	2	2019-01-02 20:27:26.293554-03	1	2019-01-01
23	273.50	2	2019-01-02 20:26:48.278499-03	1	2018-12-31
26	153.90	2	2019-01-06 08:48:29.514779-03	1	2019-01-04
35	99.50	2	2019-01-13 19:50:55.925578-03	1	2019-01-13
45	49.05	2	2019-01-24 19:42:11.970426-03	1	2019-01-24
47	272.55	2	2019-01-27 08:59:25.289751-03	1	2019-01-27
48	144.55	2	2019-01-27 19:46:33.348019-03	1	2019-01-27
49	100.15	2	2019-01-30 20:02:39.052094-03	1	2019-01-30
50	125.15	4	2019-02-03 08:01:21.350504-03	1	2019-02-01
51	347.40	4	2019-02-03 08:01:32.796124-03	1	2019-02-03
52	135.15	2	2019-02-03 20:02:30.236976-03	1	2019-02-03
53	87.95	7	2019-02-05 20:22:12.206601-03	1	2019-02-05
54	31.25	2	2019-02-06 19:51:58.83716-03	1	2019-01-06
55	26.15	2	2019-02-08 19:32:02.943112-03	1	2019-02-08
56	365.00	2	2019-02-10 08:19:40.047789-03	1	2019-02-10
57	122.30	2	2019-02-10 19:47:20.555372-03	1	2019-02-10
58	73.30	2	2019-02-12 20:12:03.97773-03	1	2019-02-12
59	64.95	2	2019-02-14 19:18:05.818361-03	1	2019-02-07
60	327.35	2	2019-02-14 19:21:52.636408-03	1	2019-02-13
61	81.60	2	2019-02-14 19:41:46.536172-03	1	2019-02-14
62	82.50	4	2019-02-15 19:41:33.096669-03	1	2019-02-15
64	30.25	2	2019-02-17 07:47:19.316461-03	1	2019-02-16
63	141.95	2	2019-02-17 07:41:03.347132-03	1	2019-02-17
65	194.90	2	2019-02-17 20:18:58.601702-03	1	2019-02-17
66	155.30	3	2019-02-20 18:43:47.485989-03	1	2019-02-19
67	134.40	3	2019-02-20 20:00:31.951104-03	1	2019-02-20
68	137.90	4	2019-02-21 19:35:01.694863-03	1	2019-02-21
69	44.75	4	2019-02-22 19:40:45.868896-03	1	2019-02-22
70	374.45	2	2019-02-24 08:43:29.826072-03	1	2019-02-24
71	197.50	2	2019-02-24 19:49:32.537688-03	1	2019-02-24
72	80.35	2	2019-02-26 19:48:12.516849-03	1	2019-02-26
73	48.65	2	2019-02-27 20:17:50.480845-03	1	2019-02-27
74	157.35	2	2019-03-03 07:41:36.730689-03	1	2019-03-03
75	88.10	2	2019-03-03 07:48:16.523743-03	1	2019-03-01
76	377.85	2	2019-03-06 20:38:06.651083-03	1	2019-03-06
77	46.65	2	2019-03-07 19:35:33.336028-03	1	2019-03-07
78	221.60	2	2019-03-08 20:30:22.630207-03	1	2019-03-08
79	328.95	2	2019-03-10 08:43:58.143272-03	1	2019-03-10
80	70.80	2	2019-03-12 19:45:41.238939-03	1	2019-03-12
81	448.05	2	2019-03-14 19:19:54.669572-03	1	2019-03-13
82	68.60	2	2019-03-14 19:36:24.934423-03	1	2019-03-14
83	76.85	2	2019-03-15 19:31:43.953362-03	1	2019-03-15
84	358.50	2	2019-03-17 08:08:12.413227-03	1	2019-03-17
85	194.00	2	2019-03-17 19:41:40.501757-03	1	2019-03-17
86	90.90	7	2019-03-19 19:54:33.254137-03	1	2019-03-19
87	44.10	3	2019-03-20 19:52:59.041863-03	1	2019-03-20
88	44.85	7	2019-03-22 19:34:59.097748-03	1	2019-03-22
89	247.55	2	2019-03-24 19:44:51.638849-03	1	2019-03-24
90	37.40	2	2019-03-24 19:49:37.579034-03	1	2019-03-21
91	55.25	7	2019-03-26 19:55:05.697144-03	1	2019-03-26
92	115.10	7	2019-03-29 19:16:16.866221-03	1	2019-03-28
93	51.75	7	2019-03-29 19:40:36.321088-03	1	2019-03-29
94	330.15	2	2019-03-31 08:07:38.27301-03	1	2019-03-31
95	210.45	2	2019-03-31 20:23:12.081972-03	1	2019-03-31
96	105.25	8	2019-04-02 19:44:59.240471-03	1	2019-04-02
97	79.50	3	2019-04-03 19:43:49.271005-03	1	2019-04-03
98	19.75	2	2019-04-04 19:46:02.895299-03	1	2019-04-04
100	373.65	2	2019-04-07 08:19:00.387483-03	1	2019-04-07
99	118.50	2	2019-04-07 08:18:17.282983-03	1	2019-04-05
101	305.50	2	2019-04-07 19:43:44.294765-03	1	2019-04-07
102	101.95	2	2019-04-09 19:58:09.192138-03	1	2019-04-09
103	33.20	2	2019-04-11 19:35:13.781761-03	1	2019-04-11
104	753.00	2	2019-04-13 13:34:31.67877-03	1	2019-04-13
105	342.50	7	2019-04-14 08:49:15.626267-03	1	2019-04-14
106	279.05	7	2019-04-14 19:35:50.96604-03	1	2019-04-14
107	80.00	7	2019-04-16 19:51:33.893789-03	1	2019-04-16
108	90.00	3	2019-04-17 19:52:44.750508-03	1	2019-04-17
109	232.30	2	2019-04-18 20:43:04.864815-03	1	2019-04-18
110	181.85	2	2019-04-21 09:00:13.665773-03	1	2019-04-20
111	420.50	2	2019-04-21 09:00:32.137798-03	1	2019-04-21
112	320.65	2	2019-04-21 20:28:11.928759-03	1	2019-04-21
113	30.00	7	2019-04-23 19:45:11.541731-03	1	2019-04-23
114	301.50	7	2019-04-28 08:00:34.63034-03	1	2019-04-28
115	127.75	7	2019-04-28 16:19:12.617105-03	1	2019-04-28
116	325.00	2	2019-05-01 09:08:35.877748-03	1	2019-05-01
117	502.90	2	2019-05-01 20:25:19.997453-03	1	2019-05-01
118	209.30	2	2019-05-02 20:16:21.404618-03	1	2019-05-02
119	479.05	2	2019-05-03 20:43:37.589802-03	1	2019-05-03
120	97.75	3	2019-05-04 10:11:40.67865-03	1	2019-05-04
121	418.70	2	2019-05-04 20:41:04.163055-03	1	2019-05-04
122	506.75	2	2019-05-05 08:39:49.171246-03	1	2019-05-05
123	647.25	2	2019-05-05 20:59:10.560888-03	1	2019-05-05
124	353.35	2	2019-05-06 20:29:55.053754-03	1	2019-05-06
125	287.05	7	2019-05-07 20:38:39.980722-03	1	2019-05-07
126	411.70	3	2019-05-08 20:18:36.418913-03	1	2019-05-08
127	308.95	7	2019-05-09 20:27:01.500622-03	1	2019-05-09
128	285.20	3	2019-05-10 20:22:18.562392-03	1	2019-05-10
129	253.65	3	2019-05-11 20:16:27.154658-03	1	2019-05-11
130	887.25	7	2019-05-12 08:28:56.907169-03	1	2019-05-12
131	668.95	7	2019-05-12 20:45:10.797178-03	1	2019-05-12
132	346.75	3	2019-05-13 08:27:38.474149-03	1	2019-05-13
133	2550.20	7	2019-05-16 19:38:51.099566-03	1	2019-05-13
134	80.55	7	2019-05-16 19:40:47.067682-03	1	2019-05-16
135	117.20	4	2019-05-17 19:36:35.497332-03	1	2019-05-17
136	288.25	4	2019-05-19 08:20:56.101771-03	1	2019-05-19
137	184.15	4	2019-05-19 19:38:45.743494-03	1	2019-05-19
138	65.90	7	2019-05-21 19:47:10.085611-03	1	2019-05-21
139	70.00	2	2019-05-22 20:02:55.203809-03	1	2019-05-22
140	30.10	2	2019-05-23 19:52:13.351477-03	1	2019-05-23
141	141.95	2	2019-05-24 19:40:40.37958-03	1	2019-05-24
142	357.50	9	2019-05-26 07:58:22.355773-03	1	2019-05-26
143	221.40	2	2019-05-26 20:13:33.278207-03	1	2019-05-26
144	48.65	2	2019-05-28 19:34:26.036094-03	1	2019-05-28
145	106.55	2	2019-05-29 19:57:29.774267-03	1	2019-05-29
146	34.95	2	2019-05-30 19:34:22.855878-03	1	2019-05-30
147	640.25	2	2019-05-31 20:33:51.273994-03	1	2019-05-31
148	191.30	7	2019-06-04 19:23:21.151085-03	1	2019-06-02
149	146.60	7	2019-06-04 19:23:41.475737-03	1	2019-06-02
150	46.75	2	2019-06-04 19:47:41.387335-03	1	2019-06-04
151	28.70	2	2019-06-06 19:47:01.013757-03	1	2019-06-06
152	441.60	7	2019-06-09 08:32:08.127608-03	1	2019-06-09
153	147.95	4	2019-06-09 19:38:07.074127-03	1	2019-06-09
154	122.90	7	2019-06-11 19:42:29.425209-03	1	2019-06-07
155	70.90	7	2019-06-11 19:59:11.745403-03	1	2019-06-11
156	78.60	3	2019-06-12 19:49:51.331724-03	1	2019-06-12
157	308.40	4	2019-06-14 19:07:31.636342-03	1	2019-06-13
158	24.30	4	2019-06-14 19:40:34.208739-03	1	2019-06-14
159	294.80	4	2019-06-16 08:09:13.641102-03	1	2019-06-16
160	178.40	10	2019-06-16 19:59:52.141417-03	1	2019-06-16
161	166.25	7	2019-06-18 19:50:46.028258-03	1	2019-06-18
162	31.75	10	2019-06-19 19:34:16.860465-03	1	2019-06-19
163	241.45	3	2019-06-20 08:18:02.784398-03	1	2019-06-20
164	72.90	2	2019-06-23 07:45:18.824937-03	1	2019-06-21
165	263.60	2	2019-06-23 07:51:12.116413-03	1	2019-06-23
166	162.10	2	2019-06-25 19:15:44.785696-03	1	2019-06-23
167	41.55	2	2019-06-25 20:01:28.2207-03	1	2019-06-25
168	131.00	3	2019-06-26 19:39:00.273311-03	1	2019-06-26
169	149.90	4	2019-06-30 06:57:55.746582-03	1	2019-06-28
170	315.65	4	2019-06-30 08:14:09.585386-03	1	2019-06-30
171	62.70	7	2019-07-02 19:47:59.413353-03	1	2019-07-02
172	72.55	14	2019-07-04 19:38:06.494692-03	1	2019-07-04
174	64.55	3	2019-07-10 19:40:41.39049-03	1	2019-07-10
175	108.65	3	2019-07-10 19:41:31.478876-03	1	2019-07-09
173	317.85	2	2019-07-07 08:41:55.3737-03	1	2019-07-07
176	104.85	3	2019-07-10 20:02:34.57424-03	1	2019-07-05
177	22.10	2	2019-07-11 19:52:12.87755-03	1	2019-07-11
178	142.95	4	2019-07-12 19:51:10.413945-03	1	2019-07-12
179	360.00	10	2019-07-14 08:00:03.338672-03	1	2019-07-13
180	247.95	10	2019-07-14 08:12:10.721964-03	1	2019-07-14
181	103.20	2	2019-07-16 19:02:13.022374-03	1	2019-07-14
182	112.25	13	2019-07-16 20:06:33.121281-03	1	2019-07-16
183	81.85	10	2019-07-17 19:47:43.327028-03	1	2019-07-17
184	42.25	14	2019-07-18 19:47:39.766725-03	1	2019-07-18
185	67.40	4	2019-07-19 19:42:27.891972-03	1	2019-07-19
186	325.95	4	2019-07-21 07:56:32.570202-03	1	2019-07-21
187	208.00	2	2019-07-21 19:45:23.367974-03	1	2019-07-21
188	75.05	7	2019-07-23 19:37:21.614567-03	1	2019-07-23
189	70.85	3	2019-07-24 19:42:14.193133-03	1	2019-07-24
190	44.00	2	2019-07-26 19:41:03.153074-03	1	2019-07-26
191	262.50	13	2019-07-28 08:16:44.603898-03	1	2019-07-28
192	333.35	7	2019-07-30 18:59:59.395474-03	1	2019-07-28
193	113.85	7	2019-07-30 19:02:55.285956-03	1	2019-07-25
194	112.05	7	2019-07-30 19:36:24.650178-03	1	2019-07-30
195	257.70	3	2019-07-31 19:44:49.365126-03	1	2019-07-31
196	38.30	14	2019-08-01 19:34:56.430371-03	1	2019-08-01
197	333.40	2	2019-08-04 08:27:49.780408-03	1	2019-08-04
198	102.30	7	2019-08-06 19:43:37.70525-03	1	2019-08-06
199	171.45	7	2019-08-06 19:46:44.496389-03	1	2019-08-04
200	62.00	3	2019-08-07 19:55:08.652315-03	1	2019-08-07
201	328.80	7	2019-08-11 08:25:50.720815-03	1	2019-08-11
202	390.00	7	2019-08-13 19:26:20.947994-03	1	2019-08-11
203	380.15	7	2019-08-13 19:27:06.24956-03	1	2019-08-13
204	51.70	7	2019-08-13 19:27:51.013519-03	1	2019-08-12
205	76.35	7	2019-08-13 19:56:15.125974-03	1	2019-08-13
206	150.00	10	2019-08-14 19:32:09.92641-03	1	2019-08-14
207	106.00	14	2019-08-15 20:02:55.550093-03	1	2019-08-15
208	197.45	4	2019-08-16 20:00:05.088736-03	1	2019-08-16
209	286.30	4	2019-08-18 07:59:27.654014-03	1	2019-08-18
210	260.00	6	2019-08-18 20:23:24.475633-03	1	2019-08-18
211	49.25	7	2019-08-20 19:46:46.645704-03	1	2019-08-20
212	142.65	3	2019-08-21 20:01:50.023801-03	1	2019-08-21
213	58.75	14	2019-08-22 19:50:24.880725-03	1	2019-08-22
214	72.70	4	2019-08-23 19:49:16.425395-03	1	2019-08-23
215	319.10	7	2019-08-25 14:07:23.421377-03	1	2019-08-25
216	221.45	2	2019-08-25 20:02:50.572585-03	1	2019-08-25
217	84.35	7	2019-08-27 19:43:14.356315-03	1	2019-08-27
218	83.20	10	2019-08-28 19:54:37.078162-03	1	2019-08-28
219	358.20	6	2019-09-01 08:09:45.348337-03	1	2019-09-01
220	92.20	13	2019-09-03 19:33:07.740531-03	1	2019-09-03
221	116.10	3	2019-09-04 19:32:02.8982-03	1	2019-09-04
222	265.55	7	2019-09-08 08:02:45.798156-03	1	2019-09-08
223	163.50	10	2019-09-08 20:06:10.991094-03	1	2019-09-08
224	199.25	10	2019-09-08 20:12:52.890868-03	1	2019-09-08
225	174.00	7	2019-09-10 19:45:12.693754-03	1	2019-09-10
226	108.70	10	2019-09-11 19:34:01.980354-03	1	2019-09-11
227	28.20	14	2019-09-12 19:35:23.507018-03	1	2019-09-12
228	512.50	2	2019-09-15 07:50:53.065819-03	1	2019-09-13
229	281.85	2	2019-09-15 08:04:50.319017-03	1	2019-09-15
230	132.65	4	2019-09-15 19:49:50.102767-03	1	2019-09-15
231	374.50	12	2019-09-17 19:46:52.08277-03	1	2019-09-17
232	67.35	10	2019-09-18 19:38:52.664342-03	1	2019-09-18
233	85.55	14	2019-09-19 19:30:59.955904-03	1	2019-09-19
234	211.70	7	2019-09-22 07:43:58.698193-03	1	2019-09-22
235	84.70	2	2019-09-25 19:49:14.560734-03	1	2019-09-25
236	140.20	2	2019-09-25 19:50:24.536634-03	1	2019-09-22
237	66.30	2	2019-09-25 19:50:57.495223-03	1	2019-09-24
238	39.50	2	2019-09-27 19:33:21.876645-03	1	2019-09-27
239	327.75	2	2019-09-29 08:13:20.719947-03	1	2019-09-29
240	148.45	14	2019-09-29 19:57:08.574322-03	1	2019-09-29
241	209.85	7	2019-10-01 19:36:01.252773-03	1	2019-09-26
242	65.20	7	2019-10-01 19:58:44.369611-03	1	2019-10-01
243	86.10	10	2019-10-02 19:46:48.453817-03	1	2019-10-02
244	64.15	14	2019-10-03 19:42:33.866862-03	1	2019-10-03
245	304.60	2	2019-10-06 08:07:33.3303-03	1	2019-10-06
246	105.15	7	2019-10-08 20:14:44.498919-03	1	2019-10-08
247	57.90	10	2019-10-09 19:41:12.576174-03	1	2019-10-09
248	78.10	14	2019-10-10 19:50:26.620649-03	1	2019-10-10
249	177.35	3	2019-10-13 08:03:54.949813-03	1	2019-10-13
250	31.30	6	2019-10-13 20:24:18.153342-03	1	2019-10-11
251	367.35	6	2019-10-13 20:25:32.664864-03	1	2019-10-13
252	218.15	6	2019-10-13 20:27:09.423247-03	1	2019-10-13
253	66.65	10	2019-10-16 19:45:00.318169-03	1	2019-10-16
254	32.30	14	2019-10-17 19:32:27.572369-03	1	2019-10-17
255	45.65	6	2019-10-18 19:26:03.140301-03	1	2019-10-18
256	159.25	6	2019-10-20 08:14:02.787456-03	1	2019-10-20
257	147.25	14	2019-10-22 19:47:21.016598-03	1	2019-10-22
258	36.95	10	2019-10-23 19:46:52.288124-03	1	2019-10-23
259	428.00	7	2019-10-27 08:33:02.958734-03	1	2019-10-27
260	150.45	7	2019-10-29 19:27:38.881194-03	1	2019-10-27
261	87.80	7	2019-10-29 19:44:52.328586-03	1	2019-10-29
262	104.40	10	2019-10-30 19:56:27.218212-03	1	2019-10-30
263	89.20	10	2019-11-02 17:50:46.427777-03	1	2019-10-31
264	123.05	10	2019-11-02 17:57:23.52165-03	1	2019-11-02
265	247.95	4	2019-11-03 08:05:54.699265-03	1	2019-11-03
266	140.25	6	2019-11-03 20:11:11.721427-03	1	2019-11-03
267	86.30	7	2019-11-05 19:40:35.756198-03	1	2019-11-05
268	139.50	2	2019-11-08 19:12:12.733647-03	1	2019-11-07
269	88.00	2	2019-11-08 19:42:30.10887-03	1	2019-11-06
270	67.45	2	2019-11-08 19:42:54.935661-03	1	2019-11-08
271	307.90	7	2019-11-10 08:03:01.972062-03	1	2019-11-10
272	232.05	10	2019-11-10 19:57:37.746753-03	1	2019-11-10
273	63.75	7	2019-11-12 19:30:40.317369-03	1	2019-11-12
274	350.30	7	2019-11-13 13:14:19.189835-03	1	2019-11-13
275	23.90	14	2019-11-14 19:26:31.132341-03	1	2019-11-14
276	69.15	2	2019-11-17 07:11:45.535703-03	1	2019-11-15
277	215.30	2	2019-11-17 19:52:25.381072-03	1	2019-11-17
278	70.35	7	2019-11-19 19:51:07.901193-03	1	2019-11-19
279	169.10	17	2019-11-20 19:51:44.148175-03	1	2019-11-20
280	44.45	14	2019-11-21 19:47:27.784704-03	1	2019-11-21
281	324.90	4	2019-11-24 08:13:52.007469-03	1	2019-11-24
282	50.25	2	2019-11-24 19:17:49.925731-03	1	2019-11-22
283	152.30	2	2019-11-24 19:43:17.977577-03	1	2019-11-24
284	195.15	7	2019-11-26 20:22:35.678071-03	1	2019-11-26
285	253.10	17	2019-11-27 20:28:18.31729-03	1	2019-11-27
286	87.05	6	2019-11-29 19:40:29.78318-03	1	2019-11-29
287	227.20	2	2019-12-01 07:43:29.200596-03	1	2019-12-01
288	159.15	6	2019-12-01 20:38:19.666368-03	1	2019-12-01
289	69.10	7	2019-12-03 19:17:16.038677-03	1	2019-11-28
290	138.00	7	2019-12-03 19:55:51.116862-03	1	2019-12-03
291	125.10	10	2019-12-04 19:55:09.117235-03	1	2019-12-04
292	42.30	14	2019-12-05 19:45:06.667163-03	1	2019-12-05
293	237.75	7	2019-12-08 07:59:46.001008-03	1	2019-12-08
294	200.75	7	2019-12-10 19:57:03.68312-03	1	2019-12-10
295	100.25	17	2019-12-11 19:49:56.829606-03	1	2019-12-11
296	26.75	4	2019-12-12 19:47:56.477914-03	1	2019-12-12
297	604.35	3	2019-12-15 07:31:23.341888-03	1	2019-12-15
298	307.70	3	2019-12-15 07:55:23.627028-03	1	2019-12-15
299	223.45	6	2019-12-15 19:57:12.381741-03	1	2019-12-15
300	55.90	10	2019-12-17 19:47:18.052301-03	1	2019-12-17
301	87.55	2	2019-12-18 19:58:38.242747-03	1	2019-12-18
302	58.30	2	2019-12-20 19:37:44.263334-03	1	2019-12-20
303	223.00	2	2019-12-22 08:19:29.624857-03	1	2019-12-22
304	177.20	6	2019-12-25 20:18:56.29233-03	1	2019-12-25
305	123.50	3	2019-12-27 19:51:38.622972-03	1	2019-12-27
306	197.70	3	2019-12-27 19:58:37.412088-03	1	2019-12-27
307	197.70	2	2019-12-29 06:58:37.533582-03	1	2019-12-26
308	437.75	4	2019-12-29 07:53:53.519929-03	1	2019-12-29
309	286.60	2	2019-12-29 20:05:12.107189-03	1	2019-12-29
310	361.90	2	2020-01-02 19:35:19.45946-03	1	2019-12-31
311	91.60	2	2020-01-02 19:59:26.883328-03	1	2020-01-02
312	354.00	3	2020-01-05 08:39:55.319526-03	1	2020-01-05
313	185.85	6	2020-01-05 20:11:34.47199-03	1	2020-01-05
314	86.10	7	2020-01-07 19:51:07.996158-03	1	2020-01-07
315	66.20	17	2020-01-08 19:40:12.550797-03	1	2020-01-08
316	81.30	14	2020-01-09 19:27:52.910717-03	1	2020-01-09
317	40.70	2	2020-01-10 19:43:47.732907-03	1	2020-01-10
318	322.60	7	2020-01-12 07:55:39.809751-03	1	2020-01-12
319	223.10	10	2020-01-12 19:45:29.170802-03	1	2020-01-12
320	137.40	7	2020-01-14 20:01:55.056476-03	1	2020-01-14
321	54.55	17	2020-01-15 19:54:55.102416-03	1	2020-01-15
322	33.95	14	2020-01-16 19:37:47.522177-03	1	2020-01-16
323	41.00	6	2020-01-17 19:49:05.229557-03	1	2020-01-17
324	222.45	6	2020-01-19 08:12:12.120915-03	1	2020-01-19
325	196.65	6	2020-01-19 19:44:00.532587-03	1	2020-01-19
326	98.00	6	2020-01-19 20:06:46.700813-03	1	2020-01-17
327	55.65	14	2020-01-22 19:33:50.680828-03	1	2020-01-21
328	104.95	14	2020-01-22 20:02:50.683367-03	1	2020-01-22
329	67.00	7	2020-01-23 20:02:21.105342-03	1	2020-01-23
330	88.55	2	2020-01-24 19:39:29.131921-03	1	2020-01-24
331	361.60	7	2020-01-26 07:57:50.769596-03	1	2020-01-26
332	175.30	10	2020-01-26 19:56:54.736805-03	1	2020-01-26
333	47.85	2	2020-01-28 19:56:25.301691-03	1	2020-01-28
334	244.70	3	2020-01-29 20:12:47.017101-03	1	2020-01-29
335	191.66	3	2020-02-02 07:42:09.619207-03	1	2020-02-02
336	193.30	6	2020-02-02 19:46:56.282693-03	1	2020-02-02
337	66.60	6	2020-02-02 20:07:07.083915-03	1	2020-01-30
338	51.95	14	2020-02-04 19:48:33.674873-03	1	2020-02-04
339	118.40	7	2020-02-05 20:02:30.662263-03	1	2020-02-05
340	125.30	7	2020-02-06 19:33:19.671885-03	1	2020-02-06
341	142.95	7	2020-02-07 15:41:57.261142-03	1	2020-02-07
342	272.10	2	2020-02-09 07:56:47.125688-03	1	2020-02-09
343	153.30	14	2020-02-09 19:59:28.034817-03	1	2020-02-09
344	124.15	2	2020-02-12 19:23:03.073744-03	1	2020-02-11
345	16.25	2	2020-02-12 19:34:35.676793-03	1	2020-02-12
346	274.15	10	2020-02-13 13:13:21.193454-03	1	2020-02-13
347	35.95	14	2020-02-14 19:40:48.471935-03	1	2020-02-14
348	231.65	3	2020-02-16 08:00:09.854022-03	1	2020-02-16
349	174.35	3	2020-02-16 19:40:56.359783-03	1	2020-02-16
350	61.40	14	2020-02-18 19:47:37.550042-03	1	2020-02-18
351	121.10	3	2020-02-19 20:14:09.942036-03	1	2020-02-19
352	38.20	17	2020-02-20 19:41:04.305995-03	1	2020-02-20
353	38.00	2	2020-02-21 19:35:23.049189-03	1	2020-02-21
354	190.80	2	2020-02-23 08:09:04.133208-03	1	2020-02-23
355	342.40	7	2020-02-26 20:26:00.140014-03	1	2020-02-26
356	58.00	7	2020-02-28 19:38:22.105836-03	1	2020-02-28
357	243.90	3	2020-03-01 07:51:45.207772-03	1	2020-03-01
358	172.80	10	2020-03-01 19:36:15.853802-03	1	2020-02-27
359	222.40	6	2020-03-01 20:17:10.76871-03	1	2020-03-01
360	73.90	17	2020-03-03 19:33:29.633837-03	1	2020-03-03
361	59.20	3	2020-03-04 19:31:26.076696-03	1	2020-03-04
362	192.10	7	2020-03-05 20:12:47.990683-03	1	2020-03-05
363	87.60	2	2020-03-08 08:31:10.221323-03	1	2020-03-06
364	321.80	4	2020-03-08 09:02:14.827609-03	1	2020-03-08
365	260.50	3	2020-03-08 19:56:53.981283-03	1	2020-03-08
366	142.15	17	2020-03-10 20:05:26.100815-03	1	2020-03-10
367	62.35	14	2020-03-11 19:48:37.251076-03	1	2020-03-11
368	27.75	17	2020-03-12 19:52:42.813323-03	1	2020-03-12
369	531.15	3	2020-03-15 07:04:52.381358-03	1	2020-03-13
370	323.20	3	2020-03-15 08:11:27.886753-03	1	2020-03-15
371	212.90	18	2020-03-15 19:36:39.866138-03	1	2020-03-15
372	100.05	14	2020-03-17 19:53:15.587152-03	1	2020-03-17
373	66.00	19	2020-03-18 19:46:22.939417-03	1	2020-03-18
374	46.15	7	2020-03-19 19:42:19.290878-03	1	2020-03-19
\.


--
-- Name: dizimo_oferta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('dizimo_oferta_id_seq', 374, true);


--
-- Data for Name: dizimo_tipopagamento; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY dizimo_tipopagamento (id, descricao, paroquia_id) FROM stdin;
1	Espórtula	1
\.


--
-- Data for Name: dizimo_pagamento; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY dizimo_pagamento (id, valor, descricao, cadastrado_em, tipo_id, usuario_id, paroquia_id, data) FROM stdin;
1	50.00	Missa celebrada pelo Diácono Antonio	2018-11-16 19:57:49.439001-03	1	2	1	2018-11-16
2	70.00	Missa celebrada pelo Diácono Orlando	2018-12-16 08:08:18.899735-03	1	2	1	2018-12-16
3	50.00	Missa celebrada pelo Padre Irailson	2019-01-20 07:24:48.680989-03	1	2	1	2019-01-20
4	70.00	Missa celebrada pelo Padre Iranildo	2019-05-05 08:14:24.298945-03	1	2	1	2019-05-04
5	70.00	Missa celebrada pelo Padre Sergio	2019-05-10 20:22:58.104234-03	1	3	1	2019-05-10
6	70.00	Missa celebrada pelo Padre Eudo Costa	2019-05-17 19:26:42.692328-03	1	4	1	2019-05-06
7	70.00	Missa celebrada pelo Padre Ailton	2019-05-17 19:27:11.011976-03	1	4	1	2019-05-07
8	70.00	Missa celebrada pelo Padre Clemilton	2019-05-17 19:27:41.540343-03	1	4	1	2019-05-09
9	70.00	Missa celebrada pelo Diácono Ribamar	2019-06-25 19:16:14.396672-03	1	2	1	2019-06-23
10	70.00	Missa celebrada pelo Diácono RIBEIRO	2019-07-19 19:48:06.086084-03	1	4	1	2019-07-19
11	50.00	Missa celebrada pelo Diácono Baco	2019-08-28 19:55:22.533778-03	1	10	1	2019-08-28
12	70.00	Missa celebrada pelo Diácono Orlando	2020-01-08 19:50:41.834163-03	1	17	1	2020-01-08
\.


--
-- Name: dizimo_pagamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('dizimo_pagamento_id_seq', 12, true);


--
-- Name: dizimo_paroquia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('dizimo_paroquia_id_seq', 1, true);


--
-- Data for Name: dizimo_telefone; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY dizimo_telefone (id, numero, tipo, operadora, dizimista_id) FROM stdin;
279	(98) 98729-3966	CEL	OI	314
2	(98) 98791-4541	CEL	OI	3
3	(98) 3223-3194	RES	OI	3
4	(98) 98897-2806	CEL	OI	4
5	(98) 98852-4075	CEL	OI	5
6	(98) 98851-2772	CEL	OI	7
7	(98) 3243-6028	RES	OI	9
8	(98) 98436-8846	CEL	OI	10
9	(98) 3253-4934	RES	OI	11
10	(98) 99608-1032	CEL	OI	12
11	(98) 98840-6473	CEL	OI	13
12	(98) 8835-8546	CEL	OI	14
13	(98) 3243-2242	RES	OI	15
14	(98) 3251-7059	RES	OI	16
15	(98) 98818-9734	CEL	OI	17
16	(98) 98199-0178	CEL	OI	18
17	(98) 98161-6542	CEL	OI	19
18	(98) 98884-3860	CEL	OI	20
19	(98) 98838-3332	CEL	OI	21
20	(98) 98858-4138	CEL	OI	22
21	(98) 88888-8888	CEL	OI	23
22	(98) 98840-1407	CEL	OI	24
23	(98) 99909-3616	CEL	VIVO	25
26	(98) 98167-1676	CEL	TIM	27
27	(98) 98721-4206	CEL	OI	28
257	(98) 98117-9915	CEL	TIM	288
258	(98) 3223-4888	RES	OI	289
30	(98) 98892-9198	CEL	OI	31
31	(98) 98818-4772	CEL	OI	32
32	(98) 99611-2020	CEL	CLARO	33
33	(98) 3232-4994	RES	OI	34
34	(98) 3253-5270	RES	OI	35
35	(98) 9933-2861	CEL	OI	35
36	(98) 98819-8529	CEL	OI	36
37	(98) 98419-5115	CEL	CLARO	36
38	(98) 98973-3502	CEL	OI	37
39	(98) 3253-5270	RES	OI	38
40	(98) 98815-0088	CEL	OI	38
41	(98) 98180-7911	CEL	TIM	38
42	(98) 98833-8277	CEL	OI	39
43	(98) 98116-1331	CEL	TIM	39
44	(98) 3249-2158	RES	OI	40
45	(98) 98852-7782	CEL	OI	40
46	(98) 98774-3161	CEL	OI	42
47	(98) 98828-2272	CEL	OI	43
48	(98) 98845-3637	CEL	OI	44
49	(98) 98443-7311	CEL	CLARO	45
50	(98) 98864-2013	CEL	OI	46
51	(98) 98824-0481	CEL	OI	47
52	(98) 3243-9005	RES	OI	48
53	(98) 98875-0896	CEL	OI	48
54	(98) 8863-1466	CEL	OI	49
55	(98) 98845-4082	CEL	OI	50
56	(98) 98875-4228	CEL	OI	51
57	(98) 98739-1906	CEL	OI	52
58	(98) 98821-2252	CEL	OI	53
59	(98) 99604-6300	CEL	OI	54
60	(98) 99604-6300	CEL	OI	55
61	(98) 3243-4662	RES	OI	57
62	(98) 98872-2186	CEL	OI	58
63	(88) 98161-4344	CEL	OI	59
64	(98) 98843-4719	CEL	OI	59
65	(98) 3243-8010	RES	OI	60
66	(98) 3243-8010	RES	OI	61
67	(98) 3243-1984	RES	OI	62
68	(98) 3232-3084	RES	OI	63
69	(98) 9970-3842	CEL	OI	63
70	(98) 3232-7862	CEL	OI	64
71	(98) 98916-9483	CEL	OI	64
158	(98) 3249-2851	RES	OI	141
159	(98) 3231-7576	RES	OI	142
75	(98) 3249-0385	RES	OI	67
76	(98) 98804-0385	CEL	OI	67
77	(98) 3231-7197	RES	OI	68
78	(98) 99983-3997	CEL	OI	68
79	(98) 98187-5862	CEL	OI	69
80	(98) 3243-4185	RES	OI	70
81	(98) 98838-9294	CEL	OI	70
82	(98) 98917-4142	CEL	OI	71
83	(98) 99963-5830	CEL	CLARO	72
84	(98) 98867-2572	CEL	OI	73
85	(98) 98859-6331	CEL	OI	74
165	(98) 3243-0554	RES	OI	148
87	(89) 98879-2455	CEL	OI	76
88	(98) 98924-1775	CEL	OI	77
89	(98) 98816-5877	CEL	OI	78
90	(98) 98780-6973	CEL	OI	79
91	(98) 98873-0203	CEL	OI	80
92	(98) 9000-0000	CEL	OI	81
93	(98) 3221-3769	RES	OI	82
94	(98) 3243-3634	RES	OI	83
95	(98) 98883-7528	CEL	OI	84
96	(98) 98738-4610	CEL	OI	85
97	(98) 98877-8199	CEL	OI	86
98	(98) 9000-0000	CEL	OI	87
99	(98) 3243-7686	RES	OI	88
100	(98) 98913-9210	CEL	OI	89
101	(98) 9000-0000	CEL	OI	90
102	(98) 9000-0000	CEL	OI	91
103	(98) 3223-4276	CEL	OI	92
104	(98) 3231-7197	RES	OI	93
105	(98) 98896-8649	CEL	OI	93
106	(98) 98887-5533	CEL	OI	94
107	(98) 9613-7023	CEL	OI	95
110	(98) 99973-3356	CEL	OI	98
109	(98) 98310-0000	CEL	OI	97
111	(98) 98843-4105	CEL	OI	99
112	(98) 98129-8897	CEL	OI	100
113	(98) 3243-7243	RES	OI	101
114	(98) 9000-0000	CEL	OI	102
115	(98) 98841-0415	CEL	OI	103
116	(98) 3232-2274	RES	OI	104
272	(98) 3253-4623	RES	OI	306
118	(98) 3232-1869	RES	OI	106
119	(98) 98718-7679	CEL	OI	106
120	(98) 98807-5120	CEL	OI	107
121	(98) 3231-6869	RES	OI	107
122	(98) 98411-0327	CEL	OI	108
124	(98) 98114-3957	CEL	OI	110
125	(98) 3243-8851	RES	OI	111
126	(98) 98335-2514	CEL	TIM	111
127	(98) 99617-2500	CEL	OI	112
128	(83) 3243-7822	RES	OI	113
129	(98) 9000-0000	CEL	OI	114
130	(98) 3223-2404	RES	OI	115
131	(98) 9000-0000	CEL	OI	116
132	(98) 3223-4888	RES	OI	117
133	(98) 3223-4888	RES	OI	118
134	(98) 3243-9289	RES	OI	120
135	(98) 98701-4355	CEL	OI	120
136	(98) 9000-0000	CEL	OI	121
137	(98) 3249-5723	RES	OI	122
138	(98) 99616-6652	CEL	OI	122
139	(98) 3243-5051	RES	OI	123
140	(98) 98851-3468	CEL	OI	123
141	(98) 3223-4914	RES	OI	124
142	(98) 9000-0000	CEL	OI	125
143	(98) 3243-3201	RES	OI	126
144	(98) 3243-7820	CEL	OI	127
145	(98) 3243-7200	RES	OI	128
146	(98) 3251-7310	RES	OI	129
147	(98) 9000-0000	CEL	OI	130
148	(98) 3221-2702	RES	OI	131
149	(98) 3221-2702	RES	OI	132
150	(98) 3243-7242	RES	OI	133
151	(98) 98840-2251	CEL	OI	133
152	(98) 3233-5989	RES	OI	134
153	(98) 3231-7576	RES	OI	135
154	(98) 98709-1455	CEL	OI	136
155	(98) 9000-0000	CEL	OI	137
156	(98) 98917-9416	CEL	OI	138
157	(98) 99621-2488	CEL	OI	139
166	(98) 3243-0554	RES	OI	149
161	(98) 98808-5347	CEL	OI	144
162	(98) 9000-0000	COM	OI	145
163	(98) 99961-9149	CEL	OI	146
164	(98) 99621-1134	CEL	OI	147
167	(98) 98824-2824	RES	NET	151
168	(98) 3243-5195	RES	OI	153
169	(98) 98836-8474	CEL	OI	155
170	(98) 98803-6399	CEL	OI	156
180	(98) 3243-5710	RES	OI	165
172	(98) 3256-0471	COM	OI	158
173	(98) 98843-7447	CEL	OI	158
174	(98) 8215-7682	CEL	TIM	159
175	(98) 98129-8897	CEL	TIM	160
176	(98) 98804-0697	CEL	OI	161
177	(98) 98199-1919	CEL	TIM	162
178	(98) 98155-6133	CEL	OI	163
179	(98) 98603-8470	CEL	OI	164
181	(98) 3223-4847	RES	OI	166
182	(98) 98745-6221	CEL	OI	167
183	(98) 9914-8133	CEL	OI	169
184	(98) 3243-7699	RES	OI	171
185	(98) 98875-6969	CEL	OI	172
186	(98) 99964-0946	CEL	OI	173
187	(98) 3243-9329	RES	OI	173
188	(98) 98826-4289	CEL	OI	174
189	(98) 3221-2702	RES	OI	178
190	(98) 3221-3722	RES	OI	180
191	(98) 98844-5643	CEL	OI	181
192	(98) 98852-5225	CEL	OI	183
193	(98) 3251-7184	RES	OI	184
194	(98) 9000-0000	COM	OI	185
195	(98) 32234-8888	RES	OI	186
196	(98) 3223-4854	COM	OI	187
197	(98) 32432-5225	COM	OI	188
198	(98) 3253-4550	RES	OI	189
199	(98) 8893-9596	CEL	OI	190
200	(98) 98711-0501	CEL	OI	191
201	(98) 98885-5606	CEL	OI	192
205	(98) 98920-0079	CEL	OI	195
203	(98) 3223-2929	RES	OI	194
204	(98) 98600-2027	CEL	OI	63
206	(98) 98852-2360	CEL	OI	196
207	(98) 32340-0000	RES	OI	197
208	(98) 98867-6259	CEL	OI	198
209	(98) 98868-7709	CEL	OI	199
210	(98) 3243-7107	RES	OI	200
211	(98) 99611-2020	CEL	OI	200
212	(98) 3231-3573	RES	OI	201
213	(98) 98824-2824	CEL	OI	202
214	(98) 3253-5228	RES	OI	203
215	(98) 98780-2907	CEL	OI	204
216	(98) 3237-3373	CEL	OI	205
217	(98) 3223-4811	RES	OI	206
218	(98) 98828-6138	CEL	OI	206
219	(98) 3243-7294	RES	OI	208
220	(98) 3243-0554	RES	OI	209
221	(98) 3243-5682	RES	OI	210
222	(98) 98712-9973	CEL	OI	211
223	(98) 99601-8333	CEL	OI	213
224	(98) 9992-8894	CEL	OI	216
225	(98) 98893-7962	CEL	OI	217
226	(98) 98886-0605	CEL	OI	219
227	(98) 98848-8428	CEL	OI	220
228	(98) 98884-3860	CEL	OI	225
229	(98) 99964-9241	CEL	OI	226
230	(98) 98871-3430	CEL	OI	228
231	(98) 9000-0000	CEL	OI	235
233	(98) 98811-4768	CEL	OI	241
234	(98) 3243-5051	RES	OI	242
235	(92) 99165-9260	CEL	OI	243
237	(98) 3243-1495	CEL	OI	245
238	(98) 98783-2810	CEL	OI	248
239	(98) 99902-5031	CEL	OI	252
240	(98) 00000-0000	CEL	OI	254
241	(98) 00000-0000	CEL	OI	255
259	(98) 98844-6949	CEL	OI	290
243	(19) 19999-9999	CEL	OI	257
244	(98) 99969-7720	CEL	OI	258
245	(98) 98714-0503	CEL	OI	259
246	(98) 99902-6652	CEL	OI	260
247	(98) 9000-0000	CEL	OI	262
290	(00) 00000-0000	CEL	OI	341
249	(98) 3243-5672	RES	OI	270
250	(98) 98726-3481	CEL	OI	271
251	(98) 98817-6442	CEL	OI	277
252	(98) 98491-5255	CEL	CLARO	280
253	(98) 3271-6474	RES	OI	283
254	(98) 8105-9900	CEL	TIM	284
255	(98) 3275-2745	RES	OI	285
256	(98) 99902-6714	CEL	OI	287
260	(98) 98727-8987	CEL	OI	292
261	(98) 9000-0000	CEL	CLARO	293
262	(98) 98734-1533	CEL	OI	294
263	(98) 98834-0093	CEL	OI	295
264	(98) 3231-3621	RES	OI	295
265	(98) 98414-9972	CEL	CLARO	296
266	(98) 98719-1954	CEL	OI	297
267	(98) 8866-8663	CEL	OI	299
268	(98) 8284-3493	CEL	OI	300
269	(98) 99907-1171	CEL	OI	303
270	(98) 98877-8199	CEL	OI	304
271	(98) 98845-4188	CEL	OI	305
273	(98) 98856-0191	CEL	OI	307
274	(98) 98848-8428	CEL	OI	308
275	(98) 98810-4392	CEL	TIM	309
276	(98) 98198-3956	CEL	TIM	309
277	(98) 98141-6464	CEL	TIM	309
278	(98) 8224-4645	CEL	OI	310
280	(98) 98880-7110	CEL	OI	315
281	(98) 98449-7998	CEL	CLARO	316
282	(98) 98479-8969	CEL	OI	317
283	(98) 98848-9196	CEL	OI	321
284	(98) 98839-2546	CEL	OI	322
285	(98) 98230-0380	CEL	OI	324
286	(98) 98454-5803	CEL	OI	326
288	(98) 98856-1400	CEL	OI	338
289	(98) 98745-7805	CEL	OI	340
291	(98) 98207-1145	CEL	OI	342
292	(98) 98907-5190	CEL	OI	344
293	(98) 99611-6509	CEL	OI	346
294	(98) 98741-4189	CEL	OI	347
295	(98) 99970-8280	CEL	OI	349
296	(98) 3232-1869	CEL	OI	350
297	(98) 3232-1869	CEL	OI	351
298	(98) 98875-3325	CEL	OI	353
299	(00) 00000-0000	CEL	OI	354
300	(00) 00000-0000	CEL	OI	355
301	(98) 9000-0000	CEL	OI	356
302	(98) 98436-9956	CEL	CLARO	357
303	(98) 98727-8102	CEL	OI	358
\.


--
-- Name: dizimo_telefone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('dizimo_telefone_id_seq', 303, true);


--
-- Name: dizimo_tipopagamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('dizimo_tipopagamento_id_seq', 1, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('django_content_type_id_seq', 18, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-09-10 18:02:16.670571-03
2	auth	0001_initial	2018-09-10 18:02:16.843749-03
3	admin	0001_initial	2018-09-10 18:02:16.924847-03
4	admin	0002_logentry_remove_auto_add	2018-09-10 18:02:16.969911-03
5	contenttypes	0002_remove_content_type_name	2018-09-10 18:02:16.995908-03
6	auth	0002_alter_permission_name_max_length	2018-09-10 18:02:17.005294-03
7	auth	0003_alter_user_email_max_length	2018-09-10 18:02:17.022935-03
8	auth	0004_alter_user_username_opts	2018-09-10 18:02:17.034029-03
9	auth	0005_alter_user_last_login_null	2018-09-10 18:02:17.04583-03
10	auth	0006_require_contenttypes_0002	2018-09-10 18:02:17.04796-03
11	auth	0007_alter_validators_add_error_messages	2018-09-10 18:02:17.060535-03
12	auth	0008_alter_user_username_max_length	2018-09-10 18:02:17.075521-03
13	autenticacao	0001_initial	2018-09-10 18:02:17.09148-03
14	autenticacao	0002_auto_20171103_1042	2018-09-10 18:02:17.104068-03
15	autenticacao	0003_auto_20171105_1054	2018-09-10 18:02:17.126216-03
16	autenticacao	0004_gerenciamentogrupo	2018-09-10 18:02:17.152178-03
17	autenticacao	0005_auto_20180525_2136	2018-09-10 18:02:17.179736-03
18	dizimo	0001_initial	2018-09-10 18:02:17.237975-03
19	dizimo	0002_auto_20171014_1629	2018-09-10 18:02:17.293825-03
20	dizimo	0003_dizimista_estado	2018-09-10 18:02:17.345327-03
21	dizimo	0004_auto_20171102_1703	2018-09-10 18:02:17.400024-03
22	dizimo	0005_auto_20171122_1027	2018-09-10 18:02:17.504393-03
23	dizimo	0006_batismo	2018-09-10 18:02:17.539629-03
24	dizimo	0007_auto_20171124_0956	2018-09-10 18:02:17.592338-03
25	dizimo	0008_doacao	2018-09-10 18:02:17.692776-03
26	dizimo	0009_auto_20180211_1038	2018-09-10 18:02:17.758071-03
27	dizimo	0010_auto_20180211_1104	2018-09-10 18:02:17.836165-03
28	dizimo	0011_remove_dizimista_paroquia	2018-09-10 18:02:17.903965-03
29	dizimo	0012_dizimista_paroquia	2018-09-10 18:02:17.929599-03
30	dizimo	0013_auto_20180211_1210	2018-09-10 18:02:17.963912-03
31	dizimo	0014_igreja	2018-09-10 18:02:17.974756-03
32	dizimo	0015_auto_20180330_1747	2018-09-10 18:02:17.997195-03
33	dizimo	0016_auto_20180330_1747	2018-10-17 21:22:33.757877-03
34	dizimo	0017_auto_20180525_2150	2018-10-17 21:22:33.841084-03
35	dizimo	0018_auto_20180604_2103	2018-10-17 21:22:33.919409-03
36	dizimo	0019_auto_20180629_1051	2018-10-17 21:22:34.13761-03
37	dizimo	0020_batismo_hora_batismo	2018-10-17 21:22:34.224688-03
38	dizimo	0021_auto_20180908_1558	2018-10-17 21:22:34.349891-03
39	dizimo	0022_auto_20180919_2147	2018-10-17 21:22:34.410688-03
40	autenticacao	0006_perfil_paroquia	2018-10-17 21:22:34.435942-03
41	autenticacao	0007_atribui_paroquia	2018-10-17 21:22:34.46006-03
42	autenticacao	0008_auto_20180923_1614	2018-10-17 21:22:34.496859-03
43	dizimo	0023_auto_20180919_2219	2018-10-17 21:22:34.505009-03
44	dizimo	0024_auto_20180923_1514	2018-10-17 21:22:34.517656-03
45	dizimo	0025_auto_20180923_1525	2018-10-17 21:22:34.628632-03
46	dizimo	0026_atribui_paroquia	2018-10-17 21:22:34.667659-03
47	dizimo	0027_auto_20180923_1538	2018-10-17 21:22:34.859524-03
48	dizimo	0028_delete_igreja	2018-10-17 21:22:34.866712-03
49	dizimo	0029_tipopagamento_paroquia	2018-10-17 21:22:34.890659-03
50	dizimo	0030_atribui_paroquia_tipo_pagamento	2018-10-17 21:22:34.914239-03
51	dizimo	0031_auto_20181008_2221	2018-10-17 21:22:34.952618-03
52	sessions	0001_initial	2018-10-17 21:22:35.006173-03
53	thumbnail	0001_initial	2018-10-17 21:22:35.051181-03
54	dizimo	0032_oferta_data	2018-10-29 21:22:30.138113-03
55	dizimo	0033_doacao_data	2018-10-29 21:22:30.205147-03
56	dizimo	0034_pagamento_data	2018-10-31 22:21:18.644021-03
57	dizimo	0035_auto_20181116_2052	2018-11-16 21:13:05.300842-03
58	dizimo	0036_auto_20181221_0922	2018-12-21 09:53:06.513341-03
59	dizimo	0037_atribui_data_dizimo	2018-12-21 09:53:06.653963-03
60	dizimo	0038_auto_20181221_0926	2018-12-21 09:53:06.679831-03
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: infobits
--

SELECT pg_catalog.setval('django_migrations_id_seq', 60, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
ndvz934sh8wxree4bmyb9guoaqflgcqk	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-10-17 22:13:11.893061-03
dvkxahmay1t11o6li8677by2oi0rocod	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-10-21 08:24:21.112744-03
9xffp5x47ironhiyjrgin6zfcbwcnqz4	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-10-17 22:17:50.966279-03
b8kwwna6ckrb105lgp8n4t2yzvwvwp5z	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-10-23 21:45:57.803373-03
vocbimvifw9c3qldgdqkq46fsb240laz	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-10-27 20:53:43.152324-03
lhr9vl33cwaqial5s7muqitxc6kppadh	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-10-23 00:56:17.788721-03
tp0vw2vivkezq69bl65higwt7ms0p7db	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-10-23 22:43:34.319381-03
6uvqeuryvr7sv76u2a185saovy5udlwi	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-10-28 07:25:53.100922-03
dvlxon55i832oev01884zi1yq0teje7k	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-10-19 10:27:36.066676-03
dwjbiexrjuswj7ckc78lghvfx2tt4oxc	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-10-24 20:58:11.406469-03
wlgc9crlnrrq73w4yksrg3xdden8hejp	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-10-27 21:40:30.479851-03
u7zfn8u4c2ahs0d8yu4ydyxutgy9pycv	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-10-24 21:21:32.033244-03
smp85kjcnnki46t17w2kx3x5toiam54p	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-10-19 21:02:57.619028-03
0p4snl726a6z1oo50vwsivx0686qv4uy	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-02 18:12:45.06617-03
jtf1y5j0xh2swjhljf72lqntfz2qvqx6	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-10-28 08:12:45.128074-03
9sdxbne11x0oxwwko3cnwl1bxxsnekno	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-04 20:03:06.996234-03
58z2hkyrshy73hae9nc3wv6o8y9322ke	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-10-24 22:30:57.277121-03
otn38zkad5klwehhn5bhnc60lvfsozm1	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-10-28 08:26:38.899256-03
nms1hz0auwwyyr7hh666tusvwayb475e	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-10-24 23:11:52.142128-03
qyfxboil3m99ok8x2szzk2got9phfzxl	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-10-31 21:34:34.892985-03
v9fy1udv308czkalup91qnul2kavawjh	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-10-24 23:37:45.88773-03
nd8xgt4tf4yer9oue0w5uphn3yj1srkz	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-10-24 23:42:39.95751-03
j5mmwca5y036gooon95lv6xlvyl4bctg	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-10-31 22:21:09.198199-03
5gwls2dre9spuypnu1dg7u81el8a3l0r	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-10-29 22:10:52.778327-03
sgjuh0fe4csi38rn668yb9dfkqdgau8y	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-10-31 23:06:55.340145-03
3aubeg1cv3mcne0k0r919mn0m6xufef3	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-01 20:30:42.387178-03
oyy5h00dwydn342aikddui3rqrwv4uni	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-10-31 23:15:02.059558-03
zmuqlgwyprzs5nrj41b7kd9uok7gqaam	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-02 18:57:51.559286-03
i94bynn7ps5tjt7k72cnbgb90wtopef4	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-10-31 23:18:55.810985-03
jjcf3pmz7w0z711wybpmwn6jclc6i14m	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-10-29 22:44:00.514439-03
ici91q4p13eur6vr3hwjf0szot8hgp3b	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-11-05 21:21:03.608747-03
9l9hgbsd54n10v8ha1dlutucu3oy9y5s	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-04 20:50:27.845983-03
y2hnu1o25awryfsuchrcnukrddo5ohh9	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-08 02:40:59.658518-03
ks5ys6zpchsjkkcctgp78q4oz5gwb0j3	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-11-05 22:17:30.150084-03
4mvf5438e7k4e3pxilgpyenion73k8af	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-11 08:37:49.804551-03
49292tqk6hd05zyw0qk1yl69062ec3gv	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-11-05 23:11:42.661559-03
jt9mfveflc0yw97cfoaxk6377s57qtb2	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-11-07 21:30:28.536093-03
44dsax5jfymov9ws6tkry1yngsovjatt	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-11-05 23:29:04.707604-03
bd64dq0h1lpzpazgznkzdzdxb7ftdms4	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-16 19:40:16.254755-03
9jt3hje1fwijb8y8q2xr5s07t38e0tlv	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-11-05 23:55:14.809303-03
dz9j42oj1j7oe6bkq30tfg79u72yeolx	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-09 19:27:04.251422-03
gu6urb6fa8le9ei7s4pxblfcjmljzlon	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-11-06 00:01:20.064866-03
vkn6nnlumelvy3nx5eekcl7gwb4jugfl	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-08 20:14:55.950565-03
xcrhgonuy4jy8f0mq9yjunutqu46pl5j	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-18 07:30:33.187538-03
wbosiors5yo79fpgowagbg133y6ewzba	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-15 19:49:51.334168-03
hyc8zwy6b9tqvj2zvh4nl4r8qqzwewd4	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-11 19:57:17.739763-03
t51plp4hjfr839u9fdwvs3l3xxu8deu1	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-11 20:19:47.209131-03
0z8du1wdpwexvginkqb1oygzyobgy0h4	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-11 20:42:33.15445-03
0ncw3hn8i67mhmyw1w2nparufez570hj	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-23 19:38:40.456035-03
9wxc6oqeumqgs7gf8elhdry9ic3pv7n3	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-16 20:29:03.429218-03
6f9aa3d8t77skcno4ie9b7cn26j51bi0	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-18 08:26:24.57494-03
xncn2rbdxbiaggu16u1tducuhv80bgyp	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-11-16 20:49:28.972426-03
0wpmlyukt46jl9lkixuiibhl2qrynnz5	YmE2NjJlYWQ0ODM1NzlhYWQyZmRkZWExZDc1NjcyNDMwMmQxMTJiMDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNDAwMDNmZDBhMDk0Njg1NmViYzdiZDYwN2MwYTMwMGNhNTcxNmM1In0=	2018-11-25 07:56:53.954624-03
2tb0sfxnqcymy4c2ecc9onsk5lyu0rzy	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-27 20:11:05.676761-03
18klgwo4dpbhxljwblozrula6fci6n6o	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-11-30 17:39:53.011401-03
znc95h3lh0q8xh5wjgiws5kz1swdycmj	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-11-16 22:01:35.861893-03
gcbp70wnfwky944bqwq91ws597kaw3x5	YmE2NjJlYWQ0ODM1NzlhYWQyZmRkZWExZDc1NjcyNDMwMmQxMTJiMDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNDAwMDNmZDBhMDk0Njg1NmViYzdiZDYwN2MwYTMwMGNhNTcxNmM1In0=	2018-12-02 07:39:33.938267-03
eipsphupd40ihs5ck1hv0hhn6waa5298	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-16 22:03:05.830661-03
a13xdj8cimkvrgkp7qoh6isydajqqba2	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-12-04 15:36:35.405819-03
eakuoul1btteanaqgwkg7kw443ntl9w8	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-12-05 09:15:55.582361-03
hzm84rp8g9vq6jg6wirdsbu6edat51t4	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-06 19:58:11.044903-03
ocrdqo4q3bsw981snyxdvyajxdm50rhp	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-14 16:16:03.026078-03
21svvmm8qsxqrkm7oijo49q44rnrzyze	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-16 08:07:17.907824-03
ovsj6hnhhrih9fg92jkyvf14n25fkrxp	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-16 23:57:57.787833-03
4erw8ahxieon6xu8m2qjbbjlc3cybn2v	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-18 15:11:41.382527-03
4omf2d7jmp84t7xoc5pun8sjxmhxo182	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-12-21 10:38:34.97199-03
b3nj52ex1g8ncpmgz4moywxwkd8apomw	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-23 08:32:04.991381-03
kb1mz0x05y5muyuu0gvoo94rcati25q3	YmE2NjJlYWQ0ODM1NzlhYWQyZmRkZWExZDc1NjcyNDMwMmQxMTJiMDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNDAwMDNmZDBhMDk0Njg1NmViYzdiZDYwN2MwYTMwMGNhNTcxNmM1In0=	2018-12-26 20:10:13.145452-03
xerkwmyi8c1f0retliyk3bcdow98gx01	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-30 07:42:49.268658-03
mjm802jmnnrbuh5rl1s39pugsw9sm77g	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-27 20:17:43.303325-03
w6genbokm69bgwnz9w7ye4h35uyuioon	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-30 08:36:51.304339-03
udpy1w973sg05z9xatfcunvspipjl246	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-02 19:57:31.808402-03
3ga6y0a47uhpte1902txx17y9jxc2fsr	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-15 23:06:00.928198-03
e93bn1379hojm0ud0kef819d01zi2xd1	YmE2NjJlYWQ0ODM1NzlhYWQyZmRkZWExZDc1NjcyNDMwMmQxMTJiMDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNDAwMDNmZDBhMDk0Njg1NmViYzdiZDYwN2MwYTMwMGNhNTcxNmM1In0=	2018-11-25 08:12:08.557619-03
u36oercqyqyx0cecjukrj56j1ifbsat2	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-30 19:40:50.990437-03
90c8u6upjnow32kta4ftfkptt3z0bcay	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-02 07:59:44.703663-03
h5i7l0hnp4ng9b57ol3i9ca5w0j7fawr	YmE2NjJlYWQ0ODM1NzlhYWQyZmRkZWExZDc1NjcyNDMwMmQxMTJiMDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNDAwMDNmZDBhMDk0Njg1NmViYzdiZDYwN2MwYTMwMGNhNTcxNmM1In0=	2018-11-25 08:19:51.41226-03
4yyz6sytm761ff9wlzjgupf814d62uzn	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-12-04 17:11:30.001354-03
sow9v2j4x2e1sixs0fri0xukvcm0pq3x	YmE2NjJlYWQ0ODM1NzlhYWQyZmRkZWExZDc1NjcyNDMwMmQxMTJiMDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNDAwMDNmZDBhMDk0Njg1NmViYzdiZDYwN2MwYTMwMGNhNTcxNmM1In0=	2018-12-02 08:31:45.757785-03
u23dgjhlo79rp5zyxa0grlkj2l0suvuh	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-05 12:15:45.598665-03
d7j7r4wcr5b4ay1dgqjqvil66fsf001r	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-04 20:20:59.535016-03
4qw6lk7l3qje3d0kiyf89roh7f1vzbfw	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-09 20:29:32.309981-03
lyynlu1zca2fupx8gxya40n1l7hof6zc	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-16 08:52:25.970198-03
elghmxo9esg4yva8p9law5tyvjvoh5h2	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-12-18 15:17:00.993894-03
2fmxd4fws6eabkgzcdbhpx51zmwuwnv0	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-05 14:21:54.114725-03
zxwuzjtfyxn83mbbdqcar8jr6nemon6r	YmE2NjJlYWQ0ODM1NzlhYWQyZmRkZWExZDc1NjcyNDMwMmQxMTJiMDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNDAwMDNmZDBhMDk0Njg1NmViYzdiZDYwN2MwYTMwMGNhNTcxNmM1In0=	2018-12-19 19:41:51.98423-03
93s44dzgdogazjwyywo1ef261qr5mygs	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-16 19:05:52.129196-03
lpgkl2obs0khgejo8bm8yaysg0gq512m	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-20 19:57:15.663219-03
g970htrqsviakqd3ku4q6ks3o58nyciw	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-16 19:57:21.997707-03
ojb8lu8vbx81891chlwspwlwom7pamxb	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-21 12:04:19.718749-03
fpola7s4xvx7p3zep1euyjw7nq8gkmvb	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-16 20:44:53.615466-03
qi86rvz859ps5vlhjbzgmijij8g3ynvi	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-23 20:08:03.163433-03
2wr0jzdewy7ql2icewmcu31m3k3odk4h	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-20 20:50:36.45076-03
xaot0mn8ct62gcen9mkxbm5uaylnrxt4	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2018-12-18 16:03:43.254371-03
n6bpimnbjtruci6ohxxeanf6g6sklu8a	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-18 16:04:38.388978-03
h4obkernrapemc80ik2x3reahvt4c8fq	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-18 19:40:19.257017-03
stqo0ue1q07mkglx0dar6ib9i29j0o68	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-11-16 00:50:32.549431-03
a1rm55552rzrgofqui0kbcde21o8r3kf	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-18 20:29:38.2673-03
kitl6n1omo4akdio3r101l57lxx0t7xw	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-30 08:13:24.171015-03
4tg3zth6jozfa82kaf82sxi22nl89x5m	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-23 21:05:51.893875-03
ar77wxxzbnu4f3o6s420wuezk3ykxapr	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-02 20:44:39.0441-03
wbju24lymrs0b0xnth5h6xzzl6eselrk	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2018-12-30 09:24:22.817705-03
sz91bubkyj99cro9xmcdlxmz0on4a01v	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-02 21:11:02.725203-03
wxxnk6z2yybyz6ov5ru8sotdx0w8uc9i	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-06 07:57:20.234439-03
bdgj5yogzaohp0twcgr4x8g8jeike0zr	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-06 09:00:42.275615-03
0fosggdlbbxabi4md5s463e2io0tpk4l	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-01-03 12:10:27.906783-03
tvkmboz9my6v8u843moxyjyzojeres2b	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-03 20:22:57.38847-03
ppv7oiw290we2sdj7vg94xlcw2o4hvrj	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-03 21:28:12.892694-03
wiurh1o6vxea9de3d6yd36cahrgr5jo9	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-06 09:48:53.572264-03
ch0sti8o6wvjm77j8re3wp4hunhcokgf	MTZiMmRmYmZjYTA2ODEyOTg0NzA0NjViMDcwYzQwM2UwYzQ3NmRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOWRjZGY1NzhmNzg3M2MzOTYxNGJhZmI2ZjA5NGYxNWE4MWFhNGI4In0=	2019-01-06 21:14:24.746771-03
1o2r1aslkxc9c32x0venvr484haqet37	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-08 19:48:51.310927-03
215lh6az2blpuehy7xvdmwrub1zouuf4	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-08 20:34:32.718917-03
99apu8iprijwe8n27jya05gplzfa430w	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-09 19:39:29.720467-03
utplcsbw7zn5qfgd1d5855rpyulp82lz	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-09 19:43:17.241997-03
pon44am5mz1aua4hove3tuljdyh9hdf8	MGIwZTA5ZmE1MDM1NzFmNjhiMjEzNTVlNWJlYjlmNGQ1ZmYwODQ1MTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDQxYjU2N2ExZjhkY2M1YWJkZmRlMTQyZTRmMGVjYzFiMDYxYzUyIn0=	2019-01-11 19:32:53.400426-03
gqdt61cbjqz1o2n2hwqn3o03e7w67b1p	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-13 07:40:03.017459-03
37h9njdy4rb17u1nlo76rdfv33l7p86q	MGIwZTA5ZmE1MDM1NzFmNjhiMjEzNTVlNWJlYjlmNGQ1ZmYwODQ1MTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDQxYjU2N2ExZjhkY2M1YWJkZmRlMTQyZTRmMGVjYzFiMDYxYzUyIn0=	2019-01-10 19:30:56.178431-03
hzof99cpft716ijtr3hfsj5k88myfdk1	MGIwZTA5ZmE1MDM1NzFmNjhiMjEzNTVlNWJlYjlmNGQ1ZmYwODQ1MTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDQxYjU2N2ExZjhkY2M1YWJkZmRlMTQyZTRmMGVjYzFiMDYxYzUyIn0=	2019-01-10 20:24:53.241363-03
cdpipm75fhdcx55wn66dsez451xrfaih	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-09 20:07:48.871676-03
iua4jfrl0p8j1n88oplzygbkvdzwyut9	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-15 19:36:00.756001-03
bfb389shm5ojewod2l2dl67shmkxyskm	NDA1NTVmNTdiYTk1ZDc4NmM3YmZmMzQyNjc4ZmQ0MTc1MTRkZjVjYjp7Il9wYXNzd29yZF9yZXNldF90b2tlbiI6IjU4YS1iODVhZjc3Y2I4OWZiMTVlNWZhZCJ9	2019-07-24 09:25:35.178547-03
l9gk0hrwba5sobawetgh00fnn7rcctws	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-11 19:54:55.135669-03
b18o2ar727hfiv8nl1chpqflzszehies	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-16 19:35:50.407078-03
nc3dbny5ezkegkgezk4wv7u3gowp4m5w	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-17 19:27:24.719064-03
ucqdbzgwmhmxbba6x4ho8vm0gpmpzokz	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-20 07:42:55.759521-03
sxbpjpyipd2yllagc9ac4m72n66avock	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-13 19:42:20.259052-03
rfkqeoz919r5pqs3b1jar75cmzr8k3nq	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-22 19:47:11.953256-03
ncakqeoyh350h2sk2d718nuc416krdno	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-23 19:39:12.422049-03
c7mlxdgi7mpbrupgia77arzn1pew2fq3	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-24 19:44:04.81686-03
2w47cnu0xs3qomfw2a0wlp5gbxyw3i47	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-25 20:08:23.896161-03
q7eov0v4p1bv6sphgq0mdjuyyg2fccwg	MGIwZTA5ZmE1MDM1NzFmNjhiMjEzNTVlNWJlYjlmNGQ1ZmYwODQ1MTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDQxYjU2N2ExZjhkY2M1YWJkZmRlMTQyZTRmMGVjYzFiMDYxYzUyIn0=	2019-02-03 07:45:11.521549-03
q1romghhdq2zla4ctjzv2b833tuejznc	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-27 07:46:48.011271-03
azndmf1p03h1k20hwo9rojo675khx8r7	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-27 19:10:49.694224-03
at06q0loc8bx9jdmloamo7abkt6u5g86	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-05 19:29:56.516651-03
cjvb742p5m5f03bfq6u2ccsfv9q3k84h	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-06 19:23:19.644963-03
0m2xspieu49j0c13p2amyez0wexlkte9	YTcwZGU1ZDI4MzkyNTllMTM0MGJlMTU0ZmFkYjVmYTA1OThjNzU5OTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZjAzMTYyMjdjOTE4ODZkZmQ0NmQxOWU1YzYwOWQ4ZjZlY2ZmZWNjIn0=	2019-02-05 21:04:07.348088-03
opqlyhd0mthg8x9vjf1nxj7wtp9a5q2f	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-06 20:20:17.178656-03
22wmkptvjkkyotgtv1l2v7u68qs4aqir	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-08 19:39:09.153007-03
wknpjkp085fjx8wmbikaempebfd4137e	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-10 07:47:52.602941-03
9wcfecr9m5vnsfdbpvs2grj15s47nztr	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-12 19:32:33.806821-03
k738esm3ep723qpu907gn3a4yujap4bc	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-12 20:23:28.530147-03
thbr9oysfavr4m778qhpqwzhk2114ehr	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-12 21:09:11.3301-03
3a5z0kx41szprni3yk7bvf6aeup5zqr4	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-10 19:41:29.898095-03
dbj95fdpg337ljhvg1oqj8l5am2rh49u	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-10 20:32:02.726936-03
ii9vouxk177l6phw2d32k5xpqmy6pcux	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-14 19:51:46.923562-03
8i96w6u5ctggqdlmaf8b0tscbzp2pi6o	M2EzMTYwNDI0MDNjZjczODA4NGYwZmNlZDQzMGVlODg3MzQyODc2Mzp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NWM1MzJkZWFlZDk1ZmNmMjc3N2RkNGM2ZGI1ZDdhOGI5MGNmMzA2In0=	2019-01-11 20:01:44.324145-03
l8ikk4mp26strnc543nh93kjc92fevee	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-11 20:48:53.26374-03
fl4mlb19q5ziafdctmvp81b6hxan3njs	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-16 19:38:18.155402-03
i1na675sq8vd2f9xc2sujm71hsg8zy8l	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-17 20:23:03.867584-03
l7v8j7t1cej34tua1550pb63md63s1xu	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-16 19:47:39.525859-03
2o18l1qbwga7qj9wj1ezjlwtpb13gavh	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-20 08:45:59.967156-03
gmazh0s5r5lmlvkbfuisg6lyj45t4mh3	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-16 19:55:07.415903-03
rft9gd0imnvqxva4iu5gpmsusrk1n8mt	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-23 20:24:38.755339-03
t6ees1gz2w4a0razqonsy7lsukcxccsi	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-20 09:23:08.662268-03
od4lulcl22x5gmwjpnch096opyv9zrkz	MGIwZTA5ZmE1MDM1NzFmNjhiMjEzNTVlNWJlYjlmNGQ1ZmYwODQ1MTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDQxYjU2N2ExZjhkY2M1YWJkZmRlMTQyZTRmMGVjYzFiMDYxYzUyIn0=	2019-02-03 08:32:23.507755-03
gmufzekbys58plx2lv3f3vhjni32haow	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-20 19:24:24.488516-03
f6k31dh4vbh4x5kx6dcgf7z94qg9hltp	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-23 20:36:08.481353-03
e0dvjegrc9bu3malv5pivzd2afar58eu	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-20 19:37:19.353422-03
neeud7r5zngqt03o6q5s9vtoa8oe7mnf	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-05 20:16:23.253292-03
mhm1mcnweypkms75wpb8ifwgix9htwhs	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-27 08:55:33.981874-03
q8b6eu9bxbi08ao0hthbopn6pakb9670	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-01-30 19:51:22.51557-03
40ae4vssxhl8wluof4gw8vm76tvttn77	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-27 09:43:30.904563-03
zlhtyp6q568k0o8waht87un07p9kcehu	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-03 19:35:52.631009-03
8wjprbdzrmppqa1frjlqo20sv9av3ddt	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-27 19:10:49.596492-03
ao2v5g4016hdoheu8hm2arybro85aeux	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-30 20:46:46.297509-03
rmxxx3ioosw7emzhtenqadshcrxq9gi2	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-27 19:32:41.566768-03
nfsp6pufifjc574joslw35qts4grcqca	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-10 08:33:32.340798-03
a8q5koo95c2kjme3cc6lpryw9ew54rf9	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-01-27 20:31:08.073289-03
s4tx8hhlh6ncpy088nf7oua58gchb620	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-03 20:21:06.46337-03
wl51r4h2p7xj54ly8wycfcgxdyox0clt	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-02-15 10:03:33.481282-03
hf2hidlrl8dx07k1vatjcqol9a0dletb	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-17 07:45:54.430301-03
tfx2ivbpmrhm2ozx5disoshn072qqy0v	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-02-22 18:18:26.293164-03
lvfs9s339qs33crvxb0fhnphkqepjye3	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-02-23 10:57:01.99652-03
5iwvqeqott0ueyfc8ide7ie0ga0sy3um	OTIwNjhhMDY0Y2RmMWNiODI2YWNlNDc5YzZjODA3NTVlMmM3MTI2ZDp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmN2FjOGYyMmI4MjNmZWVmYTY4ZjE0NWQ5N2Y0MTcxNTMyYzgyYjg4In0=	2019-02-24 07:34:05.006873-03
6sttqpzvw08js1uinvn4qp83b0ppjnnu	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-02-27 09:30:31.185663-03
mcsfl26l01cqkunsnfgaprklikqz9woj	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-03 07:31:15.443661-03
ajsaebil0mfqjrjaxgzxm2q1vh2i58ct	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-06 19:13:35.437629-03
sgiq5wzq3jop1i3xdszhhzcccwo782ch	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-10 07:39:22.095061-03
xwz8usu12fjxnctnqjnzqgf5dfw8nzf6	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-31 07:37:52.312373-03
xlypngrr5pj80oe9iffw92vl5yr9cbkh	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-17 07:47:14.314818-03
770arwnn3go2n2fdlyebifxygmqnwr6q	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-04-03 10:46:24.042906-03
vmk6l30ypl862mta770sxockn2cxly4k	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-04-07 08:03:11.717687-03
12lnnpjsduhxzdohbs9evwse11kh0x2b	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-04-11 09:54:14.392104-03
s5swilm8ivilt6002gnvqm2qck1khf35	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-04-16 10:44:38.230429-03
426zkybz3s7xex5t0ah652za4i2j9mux	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-04-21 07:43:51.514142-03
fz27jhbsn9omzlnjdckql1ydjegw08b9	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-04-24 18:00:57.658148-03
lenalk55b7gtjprteme3ha5je4at7qfb	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-01 07:48:14.490264-03
14jgl45hr6sm67or6noyw22yg8d7q0i3	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-05-04 09:34:18.095899-03
gf6topkocezfdpnsxrpc960mxmqz44yu	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-03 20:13:14.08861-03
noddzv4i36cq0jlgra6alpp2spnfeu2a	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-05-04 19:10:33.213031-03
4dcnnn4enbeh811pw1jq42031u05eah0	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-02 20:19:30.97767-03
sgnn9t2j3p18abfaxw1axbqf8w2cjcnd	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-05 07:41:30.41624-03
jvg0wj6l41jap9a8g8mg5sjbf04onqag	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-05 19:15:13.248698-03
bsvidseocufvqq67ocp3vulivtmuoxf3	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-03-01 09:42:11.843985-03
7tmf65y0ri64a268nc3bt7lifn16no6q	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-17 08:32:08.39938-03
0okovk4oyj99t4gl3xww0f5fpjn1n941	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-02-19 17:48:45.20249-03
aeqcvuet0q4swb1le7g4dlrtj695sbhn	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-17 08:42:08.261766-03
slhqvekjhwwaq0a7d8e8em5jpqjqub8f	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-26 19:33:40.748765-03
4h5rbxx4amsa083tp5z4q1ywiktj0g5p	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-03-08 09:18:52.363237-03
meydaijsc0e98rs0ks05l4axptxjcjaa	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-02-20 19:26:09.772018-03
6ysiv43avoztza2iwvc14vhzsb0surmx	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-17 19:36:24.923648-03
8fey08iq0kybjoo0hjjsxxasoz7h2660	MDQ1ZWYxYWNlNGMwMmYzNTdiYTAzZTg4MWIyYzRlODJlYTA0YWU1MTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlM2I1YWU5OWE3ZGI0YjUzY2U5MWJhNmY0NmQxYmRiMTI3YzQ2MTBhIn0=	2019-02-21 19:33:07.478131-03
l041fsd130dk2z6aquexgrlesp66fcqj	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-17 20:43:57.592363-03
heg111rtwwuzq2dc0wv6lhs85tclp54i	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-02-20 20:44:57.543046-03
xlqi6y6zydkmzju3mqznnb2osc0uxtmj	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-24 08:34:09.81243-03
puyxkhgz37o4tccmczvtmqtazkk1f265	MDQ1ZWYxYWNlNGMwMmYzNTdiYTAzZTg4MWIyYzRlODJlYTA0YWU1MTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlM2I1YWU5OWE3ZGI0YjUzY2U5MWJhNmY0NmQxYmRiMTI3YzQ2MTBhIn0=	2019-02-21 20:19:47.636459-03
0nxfa06t1tsqjw70d6cgzrgxip5amzmb	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-26 19:36:38.007589-03
v32srpxuzxhlt0kdopfbbgz877eatr3v	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-24 09:28:09.966074-03
2ohhr3e4h2udjtubicltqw4vhbnlai6z	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-03 08:26:22.112923-03
795rz09uvc9crzrvfnhq73uvwv5e33p7	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-24 19:34:43.30125-03
s912kiulr0mvb8ni8jvyxdelzvo5scks	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-26 20:26:27.907278-03
wtwkrhrb2jrfqvlc8k8cf231zubttugv	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-24 20:20:25.778132-03
r30trtz3aggbov1cy0gu3wi4h0inuyuz	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-06 20:00:28.339092-03
0lhkiubayl4r3vgerumfae8x7q8od89p	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-03-07 15:50:19.139142-03
eevqxtlztrxwnni1ptbrzaed4jvi37d2	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-06 21:04:41.666882-03
afhfpfv5a6a7y78fdd8zy5dgv5iwxkc3	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-10 08:24:24.390593-03
zvhizkff3ufsyr3me5x3zaaykoa4lvdi	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-12 19:39:14.524622-03
roz276ell1uedif8lp7a5uifcb9m4b3b	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-10 09:10:13.095034-03
f5an222wbvqrd55dq8hsq01i8h63eue7	MDQ1ZWYxYWNlNGMwMmYzNTdiYTAzZTg4MWIyYzRlODJlYTA0YWU1MTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlM2I1YWU5OWE3ZGI0YjUzY2U5MWJhNmY0NmQxYmRiMTI3YzQ2MTBhIn0=	2019-02-22 19:36:19.950794-03
829jcq346xewwbbsc5q28texjihmqtn6	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-03-16 16:02:20.827118-03
zgxqp0effltr7niz6yur5ti8kt2habna	MDQ1ZWYxYWNlNGMwMmYzNTdiYTAzZTg4MWIyYzRlODJlYTA0YWU1MTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlM2I1YWU5OWE3ZGI0YjUzY2U5MWJhNmY0NmQxYmRiMTI3YzQ2MTBhIn0=	2019-02-22 20:24:37.678563-03
f70hjeiiz2b8xg8dhwilhwby7p3rmmjv	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-07 19:35:05.49566-03
0964eywxzb5o6p7t6rcg7p6q29h0098x	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-12 20:30:03.223465-03
670jwmb5rmndoqtdezy0vsa7bfyzq0ww	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-08 19:48:46.749469-03
uefn10ug7fcondeo5q8m0q9t2lrk886i	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-17 08:35:48.444849-03
9m1qifet3b8s5jfeo5jb3vc9kuwppaxj	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-08 21:07:17.975119-03
eq65d8k5vkahw7wgczpwsqpmp7b72vkr	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-03-20 11:55:37.736806-03
plmn7jjvb2qeu1nlwd7plnzvn6yjvid3	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-01 15:29:37.03697-03
sgyojcxl6m8h5butmvuknim2odz0ikhn	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-03-22 20:17:49.667522-03
tvmuynnjeh98hwamowhysln933prpihu	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-03-29 10:17:52.814154-03
d014mbzs2jasdmvss3bkcrp7zjmcwxv1	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-27 19:59:22.860992-03
7dgeq881pekcz4v00nqywqfi4p695zq2	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-31 08:22:16.677117-03
n2fk5p51lg3m5nbfnouteyjl38xv93nq	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-27 20:44:33.690235-03
7mprofbt7xxwmgthyzhwjt5nuiceq8oj	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-04-07 08:49:48.890211-03
ae1kr490ti9q422dhznw1xh14tteswjh	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-27 20:58:47.969439-03
nlza7w28qpi3iejpfkar9f2jwp634toy	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-04-14 07:51:33.752788-03
ntq0u7qh670b9lqqzvxriiiaud5vilvz	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-04-17 19:15:15.391725-03
oexjmoxhcemiuxarefkmydbgxj5fr8za	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-04-21 08:30:47.881571-03
2tpgggs9qiuzc03lwgz0sef1l5wkk1ov	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-04-18 21:33:14.055766-03
8n83u6w2fimeg77aluj4s524hw1nc6c3	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-04-30 10:55:49.832017-03
6hfxji5sqgam56f5vu3qxcb9aafj1tgu	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-01 08:33:36.524699-03
yua4m4d3i19z8wq7qkidjp8osn24xxwp	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-02-15 17:03:16.143004-03
ad2hh9yzap6i78l2fh2p738pdoplheb6	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-07 19:49:05.277439-03
41g6aolqnry18utz7d3xutt3ipfrf15t	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-12 20:32:22.825981-03
t2sib95r6tzg81dgulddw84ti280ei26	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-07 20:39:30.478807-03
s5fjl3ysozhcwfjpgh5j6ul0w67rsolr	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-03-13 10:47:13.488282-03
i6872fdmfmdsf6kh26e7c4cti0ovjls8	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-03-14 16:51:35.497643-03
4mng1cg4tvfo04xubfspohyf4fyhh0tn	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-15 19:39:33.310302-03
xh5t8uo76he4q81vde3cc1tokzt746ur	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-03-16 16:49:49.625208-03
f35xll2d01jpo5e3bhejui24sexwiqm5	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-14 19:58:44.149746-03
43ku11lmut79sh5mn1454qg6dcnyiwhm	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-15 20:31:21.823837-03
og7ajojvbs1mac0xb2llww8y2hizp4qh	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-17 09:20:51.371508-03
x5rptgpvg0p5j0cpvdsdw8fb1v1vkhg0	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-26 19:53:54.478607-03
xqfs134cfviwg2785vm14w0k3emp05dv	MDQ1ZWYxYWNlNGMwMmYzNTdiYTAzZTg4MWIyYzRlODJlYTA0YWU1MTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlM2I1YWU5OWE3ZGI0YjUzY2U5MWJhNmY0NmQxYmRiMTI3YzQ2MTBhIn0=	2019-03-17 19:15:18.890092-03
0sa72nsnxpr0jmxi9e9j42lzzn1td8ka	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-03-20 19:41:03.44237-03
ul9g62parbw8njrjpiqg7z2qww9ij13x	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-17 20:26:26.891537-03
qn0phkppwbxqjz8m9c3ptjfo6kpruau3	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-03-30 15:39:00.456022-03
xn03dw9xlh4f4u296qvquzms4ul466lw	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-03-20 20:37:20.137147-03
e2ysklgunr8lq1yap1alkmbkwzdczlmb	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-26 19:55:51.588289-03
hjnb409dzfrdfa2x0bapip9x1vpebtwt	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-31 19:48:06.055174-03
jal6n5383q52os4qvz77ss1cxq55jd5l	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-03-26 19:56:29.856911-03
vi1cgzb8c1jxkjrxzi1ywf174c26h809	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-04-04 20:21:36.623697-03
wtxtnilkw24xqfxuj28phqp5vojj5er3	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-03-19 19:56:42.811905-03
8e0h7w3fyki0zky0g6lvjwpcve4kw3x8	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-03-19 19:56:52.316937-03
5yh4dexathbqeeywha05ake4jiu9acg4	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-03-19 20:44:37.49237-03
0smrpizavvcr22ducqg1axss3wxw9l71	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-02-15 19:41:06.883189-03
dkq5601o00l1fm7hg8psk6qupdh92a0i	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-03-29 19:43:54.196037-03
7t2cnova1k75qprg0cejk4vwf7jse42j	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-03-16 16:49:49.658266-03
fbmivvuggojyje5okpkb3uhzz1s0w7b4	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-03-31 20:38:19.753875-03
hth3mey0zw353j4ih3qbcpmqv6jwe198	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-03-30 15:39:00.658266-03
24hvwvf744a78go8h6158d2kwjs648l4	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-04-07 09:34:58.964228-03
aofzuhboecwsmq49vdiexofh7qjj91n2	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-04-03 19:26:48.768326-03
afz03k7zkyx4y702obtr3o9yq1f7kobs	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-04-09 20:39:47.792417-03
yt4i2zi5vvel5txd78d4za3bfciuso8w	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-04-11 19:28:29.332921-03
m7t7388kyamnsxry02dki5ngl9e0xc62	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-04-16 19:50:52.255145-03
shtpvao326p1u1mjas565bjpi4yh84xi	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-04-17 20:15:42.574793-03
9oxe4utl1vbyut7gjet4sr12pmi6qt80	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-04-21 09:44:44.077693-03
161ghmpady5z2scjisbbbhid281ijk52	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-04-23 19:37:53.653125-03
xfi3miagguyhr0bmbqsh1mkre8zgmt5v	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-04-28 08:44:44.562065-03
mrxw213hdvizynj33jhwka3xz6r1ga6z	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-01 09:53:03.797698-03
ouwher53oixgpwwm3hqjr876slk649lp	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-05-04 10:04:04.7012-03
ukju5cvcbwpp4kebrvrzjojrgfic4hoa	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-03 21:14:28.435671-03
ln4bp354s04kbt5huy0etl0yk1z0tb2y	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-04 19:56:13.003135-03
4azvwcmsl3pq74gwtghjprhkfcdisszd	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-05 08:58:16.796186-03
72l1qm9zn64f30x86e6f1w4vbupbcde7	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-05 20:03:31.148019-03
ff33zsk1gxesqim6yrn3id49yy16b9la	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-06 19:30:33.432226-03
39nsuoaj8jzfqa7igjfr2rgkxx80vo7p	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-06 19:52:06.61577-03
dmj59y8xi54dkqcmw5ncqvgb04ah8tc0	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-05-12 07:44:08.534096-03
j8kjse5q9ewne88ii6kwik9clslve1ln	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-05-08 11:24:59.820673-03
mypezfsw282za0gsmwz1elyafthsvssn	MDQ1ZWYxYWNlNGMwMmYzNTdiYTAzZTg4MWIyYzRlODJlYTA0YWU1MTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlM2I1YWU5OWE3ZGI0YjUzY2U5MWJhNmY0NmQxYmRiMTI3YzQ2MTBhIn0=	2019-02-15 19:43:58.788376-03
1i4xqkgjk6770rmg46521cgfizufod5o	Y2FmOTczZWE4NzAzNDAzMDViMDQ5MTY4MjBkZTNkNzg4YjQzYWRkNzp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OWI3ZWZhOWFmNmUyOTMyNWVmMTRhNTQ4NTg4NWI4MzE5NjBmZGM2In0=	2019-04-02 20:16:11.039344-03
p4eumddjdm09i5v4uj6o0c7hge7eb7ea	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-04-13 12:12:50.875382-03
5u7gy6xo04sw0hhz0t0o42cm2y2dhzv9	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-04-03 20:29:56.820439-03
fws7lwko2xuzgszc21ruenqlpzyyoe3j	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-04-21 10:07:18.412325-03
6d26evuzgu5f316gvwhoxv9yxuf93hmq	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-04-13 12:33:06.27579-03
xfspcvfc5tu179v58t1d4fwhammb5c3e	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-04-23 20:29:13.883281-03
8otsm3xzrp2yhg4t119zd4bab8f3mzyd	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-04-05 16:38:05.459968-03
kijuoyxnz5yng8eccle7m66xubrjij7t	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-04-13 13:00:39.762763-03
q28j67k9xz01tyqz2c34ipbw7zemkbas	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-04-21 19:54:47.95961-03
isqvo098itolv3onxr3wg2v7lz4sgdh7	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-04-13 14:14:06.039796-03
f7mn412xcjs2ha7pqllfrrtxyjvx80vl	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-05-01 19:10:00.035964-03
fu9xzlix23ztbilcdxhbhlv21vg5vx0y	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-04-13 16:03:07.488802-03
ejr6tclpz78fwq63t1u9ctz8sjt9cwq3	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-04-21 21:12:35.68375-03
it99pagk3if6gis0jqg62sxn8vh5l217	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-04-28 16:29:35.620463-03
pxkyaqrmnkvrfjm0e4ps6t68efv0jiva	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-04-14 09:10:52.731438-03
uo37s7fm8nphq4y00fcl9zrw8ovrsfxe	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-05-02 17:02:34.864835-03
dhgwr7f8pnj59ujh2x53scvpht6xkt76	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-04-14 10:11:53.921933-03
8tny7q6281elghff5qpkcrn4tyvg30vu	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-04-28 17:22:35.05537-03
xw6jviqqn7typr1p3wmib612w7m6ps97	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-04-14 19:18:13.690134-03
9gy398fvlrraiznm58cyejtfoey9404b	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-01 19:24:11.637594-03
v2ek76go87stteqbitevbqjutpwenshd	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-05-04 10:37:41.943477-03
218ycuicdclv17jddm8ao6484jx8mmdq	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-01 19:44:18.083002-03
m8cuhv9sdx9f7opaggw7g4f3wy6oozfr	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-04-14 20:20:16.659077-03
rgxv6j6uu704e01dd7k0j5n6m0wum1we	MDQ1ZWYxYWNlNGMwMmYzNTdiYTAzZTg4MWIyYzRlODJlYTA0YWU1MTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlM2I1YWU5OWE3ZGI0YjUzY2U5MWJhNmY0NmQxYmRiMTI3YzQ2MTBhIn0=	2019-02-15 20:34:26.833132-03
90yoogt93mzojkxo93brqkruk9jxkg41	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-01 21:09:59.98951-03
vlx1mic185akz7jju9qkg9uazg9t3pl4	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-04-21 21:12:35.685574-03
zgg7uhctejuqtjwn1wc94f8r2kjsoeqr	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-02 19:34:09.635081-03
i959odynupjupbst2f2zwtb1tysuge25	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-05 09:43:49.614997-03
x7im4pqkc1zzngi6ida6goolu51zuqi3	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-03 19:53:15.77626-03
t8ficficx3pa04cwp6hk9q47c3v1pm00	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-06 19:46:33.920749-03
ku653adfxjrmv51ze52nq7rrytv8gtu1	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-05 20:58:17.376699-03
dkh6rgno2257x6lxnb99r63a1v7g8vsh	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-04 21:25:46.444993-03
llqp7t62h67rnj991chhmauiwp6h0pkq	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-05-12 08:35:16.03513-03
0og3peexueh75nr5cqzwepz0p5fhmdij	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-05 21:43:23.429734-03
uucvnf8gsiwgr6rsf2ao07tmgi7h73nr	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-05-09 20:06:20.689888-03
68uygn3eh875b33iafqp3a0avgwp8bjd	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-05-07 19:57:28.07392-03
6izwnskjcem837sv65gsz7l1nv6qz8we	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-05-09 21:11:27.19049-03
tcvodwrxy59xm0zy68dc93h6zgnb8iq0	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-05-07 21:23:15.691441-03
rwra5lykel7ybd7aqcslmqg8qrlu7v8s	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-05-09 21:13:39.325824-03
z2npjzxg1prypzzxxrk79hekpeeu3io4	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-05-08 16:57:37.576475-03
azb9ogmtggcf1b3g80wtdjaxtz955fjc	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-05-13 08:20:57.154392-03
hb7uu2z6hfybjkh997cf00bev77kyos1	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-05-08 19:29:58.399433-03
f1hne5apk3i2lcvjjure0xhpnxen3s2f	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-05-16 19:50:57.67831-03
xvb4hbvc3vdcdqkbjihm7uqg77mn21bb	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-05-08 20:07:36.445516-03
opf4m2v2exiqql2241p67c5rg0psw6bw	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-05-10 19:50:49.456566-03
9of5446zm6k7i2g1r691lt4tv8p5otn8	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-05-08 20:19:38.735042-03
ov4qstn7urcg91txy3ddk33mrlpi51du	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-05-08 21:17:53.834316-03
i2rgneg8ektstwpy4esrmqhd2pacjmxg	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-05-10 20:42:16.249004-03
wtkbph4p6phw0bpf0h3qtslaxqubuic6	MTBhNzQzOTQzMGU4M2EyMzk4MTRjOGVmNzAwM2I0NjI2OTUzMmRjYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MDliNjhkM2NiMWFhNjdhZTRmZWEzNjM2NjFkODI1MDJhZGJmZThhIn0=	2019-05-19 08:07:17.538337-03
g75x7yeoc94a8b35eohrsi5t54dhkh8a	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-05-11 19:31:21.752709-03
06671wejepjjutjggspdycshelyumscj	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-05-12 09:22:38.467747-03
ey6khqrba4kpopufwf7ezjcx8xo9g66c	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-05-11 21:00:54.055576-03
gqyephsntbhw3yqnl4v056wugbmj0lau	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-05-13 09:12:12.077772-03
pzpapmptg4ymqfk4xwvklj4uwox43zeb	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-05-12 19:45:49.576858-03
tevcf1r6m8bmtjtwaptynkayvzzl48j8	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-05-16 20:22:54.811111-03
58sxjrrflwba3komuzeog4mdg5rqfxzv	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-05-12 21:14:39.625384-03
34w4aw2k5fx8d7lnhk676nauq6swx17z	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-05-21 09:09:57.542992-03
5fjv9idnan5lom96shlrgx8qdcdy9e1c	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-05-22 17:39:39.086361-03
12qqvbf4yqj6yj96btq3epqmx865gha3	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-05-23 10:40:07.921475-03
ixt0itwc8908i3yxqlr1cx8svt8q3m61	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-24 20:25:20.316673-03
e6ewrt282tx658r402bef1092li1frn3	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-05-25 09:04:55.17342-03
wsb17q66hcfu7s86pbq6h4opk3m623hw	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-05-28 15:30:42.352001-03
7wubkphta1nnzgvtpe3kpvxcnv8k5mb7	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-05-29 15:11:20.447087-03
hbkcjtczuwgq6tm8ik9rzqi4sq9q6eaw	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-05-30 10:19:40.34909-03
jc3bw1d5lvp45ncawa4bq9hu9hvktu1w	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-06-01 10:11:15.997231-03
nipjkf4dtgcs73kp7frz6zxi6jc6hnbi	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-06-02 08:08:23.950919-03
jd7wnlbr37m2hmsp56q6odhsdfi0ohip	MjRmZjI5MWMxN2MzYzg5MDlmNTFlZDAxYmNkNjk3MjcwZDdkYWFhZDp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjZkYjQzYWU5ODJkNTIxNjRlNzE1M2IzY2M0MDhhOGFhYjY1NDYxMSJ9	2019-06-09 07:49:53.71371-03
nxkqb8om3l30mb5hx6wzjfsscyb817f3	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-06-04 20:18:23.842994-03
d64bdf320kazschh3jdk30fn0kga52v7	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-06-05 14:54:30.934819-03
df0botv5k0cygng7xxkkd3xzolslxpr4	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-06-05 20:37:10.913672-03
72x40a1lw6d26o4wbp98wldhuk66ix5p	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-06-06 20:31:37.223872-03
jd090q9kunyrxzsd7rh7ogl0iiz1y2ie	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-05-10 21:27:19.209091-03
jj5lqyqam1kblsimwixm6g7axre09idq	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-31 20:07:14.110945-03
gy19mjlpcc96yykr8gdao9b2i00hzlbk	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-05-18 15:29:39.220391-03
c81z6nmelx221cddl95kl8ltynvo1nul	MTBhNzQzOTQzMGU4M2EyMzk4MTRjOGVmNzAwM2I0NjI2OTUzMmRjYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MDliNjhkM2NiMWFhNjdhZTRmZWEzNjM2NjFkODI1MDJhZGJmZThhIn0=	2019-05-19 09:01:07.437325-03
9ads2pv6rdfpyulu9n7n8hs4b3o2qubi	MTBhNzQzOTQzMGU4M2EyMzk4MTRjOGVmNzAwM2I0NjI2OTUzMmRjYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MDliNjhkM2NiMWFhNjdhZTRmZWEzNjM2NjFkODI1MDJhZGJmZThhIn0=	2019-05-17 19:50:11.863503-03
yx35zpqczi0rp29x42amuda5brgm3gm0	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-05-21 10:39:33.45282-03
vsqlq56ufkaq3tvdzcnz2rnesnom2lar	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-19 19:07:24.184628-03
tftawdjrbd603i7n1084qw413lzfcxbo	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-22 20:46:52.180601-03
cytn9jovf0e66gxtw2clyenloa7fxg79	MTBhNzQzOTQzMGU4M2EyMzk4MTRjOGVmNzAwM2I0NjI2OTUzMmRjYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MDliNjhkM2NiMWFhNjdhZTRmZWEzNjM2NjFkODI1MDJhZGJmZThhIn0=	2019-05-19 19:24:19.929331-03
13jdogpn47udegu0ltzkcr187dqjuukm	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-23 20:36:18.199852-03
9uvmokygl2hy8xzce4nhjbus1c103to6	MTBhNzQzOTQzMGU4M2EyMzk4MTRjOGVmNzAwM2I0NjI2OTUzMmRjYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MDliNjhkM2NiMWFhNjdhZTRmZWEzNjM2NjFkODI1MDJhZGJmZThhIn0=	2019-05-19 20:23:13.946165-03
0uge3qber2wv95jkrfniqzlepvj17alj	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-05-25 10:11:02.510018-03
bglcm6v9h4czpbk73gdifw8vx7jaeofx	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-05-21 19:54:13.244269-03
f9ysvgjyigbpxyrkp6u4uxnn9ga5dgf1	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-26 08:09:20.73743-03
z630znbzjtrci5ry0aabhk3zs4lbepey	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-28 19:38:16.402073-03
kzyfij8795e2naiviqvq9520ben63byl	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-30 20:18:54.553535-03
93xyi9l8izqulot09uczm6jfeeqltimm	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-05-21 20:23:58.124761-03
63uu9e06hg4dojs9d5d3bdhrabhglrlu	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-28 20:25:50.519844-03
s2r3xsmna9ffuqjbdgcz6xzwstdiz7a2	MDBlZDJjZGQ2NDRhYWM1OWQ4M2ZjYmE1MjljNDMxMjhjYTU5OWZjNjp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZmJmMDY4NGE2ZThhMjNhNWI4YTFhMzk3NTU0ZTI5NWE5YjA3NDMxIn0=	2019-05-26 08:18:25.805393-03
i5tvlh9z565st3csn7xvei2dk3hvjeuo	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-06-02 08:08:23.952752-03
wh5n4eg5f6b7rihw6gm8q5bup9154zro	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-06-09 08:35:27.489374-03
dam390sfrv5yjbvlpcyxk5ddwef2cyfh	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-26 19:49:40.731088-03
ua4im2ggjrvbypcsdycay0ytddsh9osl	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-06-06 11:25:39.621973-03
l99ljh2nn4mtha2cg09225ak430kzd9c	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-06-06 20:42:31.968536-03
xsitqg0l4u6a1l1gzkd0rbfrcu3z85ra	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-05-10 21:29:20.885312-03
ljv9lqot12zdhvpk9gyvo2jq25474hfc	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-06-06 16:34:00.737789-03
eiuyu7tl65a1zmm21up3d7mgw8ly6zdn	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-06-02 08:54:14.126657-03
lx6o40yyr1cnf2wacql60ba0872dywao	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-06-11 10:13:57.60046-03
hxpy3p7kbvo08ge3x4x2rxcbpm4h78t3	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-06-02 19:45:35.737515-03
yq3q1tn6wrs8ga0fonqsmutyzooizynl	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-06-09 09:27:56.52018-03
5f7u44e43jpxs92h5b1qmxzwkx800npb	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-06-07 15:43:44.703313-03
xo0y6zycondvpj2hgy31qnq2932j9t8z	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-06-09 19:30:13.473956-03
b5868vls262zsmnfako9dubcql7ltclu	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-06-09 20:22:53.35955-03
ylt5rvdapl2qpvubva5ettxxueu9fs8v	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-06-14 19:32:46.190318-03
btrwpipuadzs1njxgxvc3dqbu7mhyegc	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-06-12 19:29:29.932659-03
7s14jdk8smoldxez3juvjolamtfou3lq	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-06-11 19:28:25.853753-03
rwxkhq0lqfhlk9c1ms3ruvemlvgkvv3e	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-06-11 20:20:45.972465-03
vff9vskmh46c4g6e58auk9bmknflkte9	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-06-12 20:20:36.741088-03
awcvsur6pb16ensopw3dd9yr5j5x8qp1	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-06-14 20:25:25.397192-03
m4msxtc51e2tvh4bih0smsbkw7nluagb	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-06-16 07:37:17.532834-03
h4jm92bb1sn1hcqn4p1dlalk30rkjz0a	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-06-16 08:31:23.132322-03
4jkyhtb42yrfiedexl2jdnx9rg0s24jn	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-06-16 09:20:13.896328-03
fk8bjsauer6kpz6i6jtr84u1qzz73mi2	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-06-20 07:40:36.45886-03
5e7ae4phknrnzyzi8ct2oh5acffi1b9d	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-06-16 20:07:02.186771-03
yxtcahxvf7usiwezoogoi3i0cyl702us	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-06-23 07:48:17.560647-03
j9zvfrrg4t8cqvn89xp830csus49335a	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-06-16 20:47:05.67026-03
tz85l8lcu4whd6eskddtlkg8gwffrm1o	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-06-18 17:42:17.334743-03
hdfr8ea3erqunywb47xq4uwrmp124bc3	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-06-18 18:05:30.325858-03
2zdzqohbdw7xthgk3g5rf1mjjoraer2g	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-06-18 19:38:50.573047-03
dq7qqmojl4tqg1an15o1jkt5ixdokh32	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-06-28 20:58:32.359942-03
fu3h21bstx6qyzwy3fy1o2zmvfu7jnek	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-06-20 08:35:16.443395-03
qr39v03tb3r5mnzjbh2uxsq4uzfgez9k	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-06-23 08:35:43.899906-03
ggkl145l1rw7jkr38nogvdwel3cdh9h3	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-06-20 08:36:23.250955-03
j2numqcmbg8zsconbakyqzzdiidr89vw	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-06-30 07:42:21.333391-03
m6qxdqax7ik8uykh1tvs3177gbi0xtax	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-06-19 17:18:45.689745-03
7qov2lvsj35hpa7urrds4leml969dcar	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-07-07 08:07:51.349425-03
3c1ny0sxhvob5xhtz20a7139ehnaxgs0	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-07-16 09:05:04.361637-03
xrha178sjsfr649xdcrgtt9kg0lbguoz	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-07-10 20:39:23.927593-03
k838aeirniizoe943698200s4q452dwp	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-07-13 12:22:43.952723-03
59wjqw6burgy1ww54h25j2dcqxeorkkm	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-07-16 13:14:45.690469-03
w07ubgslsb1ckewurrkrdx3i3a8314ip	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-07-17 11:27:16.716841-03
9vc1c7hondxiwy2ups8bd1rxnzmj5o66	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-07-18 14:42:35.510526-03
08hx8r8sukrq57qggm2owh0hccj59r3b	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-07-18 20:32:04.731248-03
3qg970oled07npd7wms9z01j5ipht6y5	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-07-19 11:45:25.746287-03
0fdxnno81oc0vx44iue5vrcwoik2heu6	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-07-19 20:27:15.349846-03
d2c64e0us3kyc5su1mnrnmxbyj4cniyp	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-07-20 16:20:20.122735-03
lyv0387x2twa4u8w8wgdvuna1wiba0lz	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-07-21 07:45:13.645632-03
6orcsr8t2ugz9pobxwvqocy83jb6yj47	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-07-21 19:46:35.769321-03
ysrdtxe3p9gbbfbyqo5v92fgjbskn08p	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-07-26 09:33:00.318589-03
vg4mk7mnlcczh4g837xpji0dhy3xvsmh	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-07-23 20:40:45.033847-03
n6a2u7dxz86rxntocqg54kmqc002as1s	MjMwODE4YzhiNzgyODY4MzA3NTU1M2JiYWIwMjA4NDJhYTJjOGY4Nzp7Il9hdXRoX3VzZXJfaWQiOiIxNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzk0MmExNmIxMWRmYWY0ZDFlMjJjOTIyMDczZTYyZDE0ODk2ZmYwMCJ9	2019-07-24 09:38:42.337391-03
wfny24zboschrsgi2oaxipfxn2gil7gg	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-07-26 20:33:18.207591-03
n24xrjjcjeuc9bhvhvypj9yaxb1de6s2	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-06-18 19:46:54.484664-03
f89bg9mfr0lc28osfevdg28kgkod82wj	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-06-25 15:32:55.167632-03
qhmgqs61roj9nw42awuzc3me2gbzn8oa	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-06-30 08:58:59.39754-03
pxv0dprlsh8hdu3yrmwzdjyi7b4gmswg	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-06-25 19:59:29.188862-03
mlixgu4371fgt6aoo5vt0a6k0xut2vvq	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-07-03 10:33:25.948497-03
u86tpx3ik4hznt3mmnwe46s6xuwt7h11	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-06-25 20:17:26.678516-03
64f4ofxwyz3f2vlwwt2cgpckwzx12gc9	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-06-26 11:20:31.853969-03
q6jphjtu6uwtax6zwim2b67watpdpe3w	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-07-05 15:32:56.092-03
e0p9gchtlysfmqa2ossvnqc2xk4b8zpa	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-06-26 20:23:34.255952-03
0j5wl8ddfhqdsh19843c0ccv832siz0x	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-07-03 11:19:30.582071-03
t8pd09sr4jss10o3om4iual178iwsb94	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-07-07 08:53:26.024768-03
m35s8ojn08dx292poh8k25m66n97avxj	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-06-25 20:47:58.019025-03
u5tohwan6y6be4w85bnxoh5fl4750w0j	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-07-02 19:44:48.885584-03
cz3ug2ze6mod2a3t2icck9mlqm4up43s	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-07-03 14:18:08.555712-03
vtychh3is7st2pdohvuqmme8jmidjl48	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-07-02 20:32:32.918847-03
qku1pumj0q3fybss5336j50kxs52n5ng	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-07-09 10:18:49.764421-03
aeuvjnrkrdpgcci1f8bkw2q4dz8sau59	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-07-11 20:36:45.26601-03
5ezc683cjsc4d63kq24iz17nxi3yig8j	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-07-09 11:49:17.263744-03
g1b8ewxq66k5kq41huxepo8cqjrilhel	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-07-14 08:30:57.451899-03
27h0igbm1waw7qebjihsl0mrk5r6wppx	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-07-16 09:29:33.333533-03
6jt2z59jec35zoaqjn4rnic0kjxvjfi0	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-07-12 19:20:19.13512-03
62iodejdpw11f4pmbkfkgum2hchk4rd2	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-07-10 16:41:03.789578-03
bkevrbj5m9ixq71k3lczxggkjmq7qqow	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-07-04 19:56:11.24994-03
vj11ugors6qp1yobltu8nqju4m60o05p	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-07-04 20:30:24.870059-03
veomgry4dysjagz7inf926qyzmtieaam	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-06-18 20:35:10.801938-03
0dj7w07g3s032d3snxs9zemyyotu5tjy	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-07-10 19:43:07.320331-03
zc4atac0o2ndp9jpo8bi1g4v2yjzxcdv	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-06-25 15:32:55.248083-03
6xnnb7iox58idik8wcpxqfg2dgur1u2g	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-07-10 20:43:15.058068-03
3jx0lzci19ddug01vwil1lfxdwke8vyz	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-07-12 20:27:50.479517-03
dp4maao79u4mssa6g7i7mah4rou9fy6e	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-07-17 20:32:19.466536-03
z7cike9y3ml0986raux86puhzqz8nk7k	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-07-16 10:05:44.265444-03
a4vlieluvlx4jafilsbzdr3mjccjd2yq	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-07-18 19:18:36.638682-03
ud0n6a64ct5wazkr5am5fxvt24sdma6b	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-07-16 18:15:28.26982-03
bftlu2f30z8f1ec74nrb5fbpwzce83ck	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-07-19 19:40:10.367804-03
silur049ztmae5tm57k72j68hlyjx9rb	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-07-16 19:45:07.313945-03
pkwf1joo6ju4le2iiqbonrzj6qc2rulw	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-07-21 08:41:18.356884-03
c9b6tb81tj7y1antj1rgfj442r44wm2g	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-07-16 20:07:45.78964-03
oag5lf0gc6idprh0hckum8l6mwmujlaz	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-07-24 09:25:26.157925-03
08yb579ml8wpkqf31aq7zkmdgchuh8ci	MjRmZjI5MWMxN2MzYzg5MDlmNTFlZDAxYmNkNjk3MjcwZDdkYWFhZDp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjZkYjQzYWU5ODJkNTIxNjRlNzE1M2IzY2M0MDhhOGFhYjY1NDYxMSJ9	2019-07-16 20:51:02.230755-03
8zc2anpluw9q54xvnw9qqtqg8ijntgap	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-07-21 20:30:07.572476-03
nomprnbi45i1ngo4jcv4ndex9p8rf56j	MjRmZjI5MWMxN2MzYzg5MDlmNTFlZDAxYmNkNjk3MjcwZDdkYWFhZDp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjZkYjQzYWU5ODJkNTIxNjRlNzE1M2IzY2M0MDhhOGFhYjY1NDYxMSJ9	2019-07-16 20:53:30.01232-03
wamgn6236pg313vzrsgndb65rtsw9urd	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-07-26 20:25:32.798172-03
3k602kmgsp3wq5nm7i3oobhyn5w7c8ai	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-07-23 23:46:21.835132-03
zxi87v912uxqctuqmgvl1f9yau11w5w6	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-07-24 20:26:49.574018-03
jkf2947shsvuwmlcx4fr7hquo515f5bi	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-07-27 16:23:29.580718-03
6x6w06jd6w2a20rnwek1staazfy36fth	MjRmZjI5MWMxN2MzYzg5MDlmNTFlZDAxYmNkNjk3MjcwZDdkYWFhZDp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjZkYjQzYWU5ODJkNTIxNjRlNzE1M2IzY2M0MDhhOGFhYjY1NDYxMSJ9	2019-07-28 07:39:46.715909-03
akgxkdr3kwjaqj1lb348uztulzpoopkw	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-07-31 16:12:32.590665-03
xw3m4l1fywyduwtwv2k8jbkcatpcdcbj	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-07-28 09:29:11.441862-03
6ea4680n5hw3x9i7tdph775idqua32pn	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-07-30 19:39:47.705568-03
0dmkhysdj6m345ml8eonpwgxncee48em	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-08-01 19:58:33.937913-03
4ybvcd1wqd5thm2211w8qgzebu2owi91	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-07-31 19:25:09.686298-03
celn80v9136779ybo3vsp4dws6lfa7fn	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-08-04 07:38:03.143289-03
xm80oizqaszfg7eflqtxukp7uvulmqt5	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-07-31 20:29:23.816574-03
sqcafpqxuny3gzkqfy45yon9s5wxbwx5	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-08-04 08:38:17.383795-03
wq08wfi3j5zx1x6w9d9tvsg4t0jyjgtb	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-08-04 09:12:08.349638-03
h67yotiiwcrkg4hnajt6uhqbbijus5tf	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-08-09 09:13:05.556339-03
pg8qiexv5cuk1j3xjggtk6rxg8icogzk	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-08-06 19:47:02.709585-03
fiwj20z6m9msxt1qn52zb8o7amkzjfgp	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-08-06 20:32:32.110236-03
m6p228xsv36l9pkul6i0yxwzkks9lu71	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-08-10 12:43:45.106167-03
f4sdyrlglnqolm312479uem2gkbql7t7	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-08-10 15:40:38.860293-03
f9k69lh4rqbe31w6ciux73jceofd0wlo	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-08-07 19:31:17.562407-03
3f67hpa76vi7f2si2m6k8jfea63zy9ve	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-08-11 07:36:42.229348-03
vz9geswdqyeu34fg6i1ingoyaq3ev206	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-08-11 08:05:32.836186-03
m1zkgbiswyiigtck0mrs3oxj8r8xvaf7	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-08-11 09:10:06.437323-03
9c5xceifwt7f1j7bwjb95e9wx190flt7	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-08-18 07:49:53.636353-03
rsq6aiuqy0ylv0izrxcu03y2fbc5re20	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-08-20 19:50:47.71127-03
09havgcjblbp427cjff35jfl23v67fe5	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-08-22 20:34:40.376185-03
9390agcodluncmvvpkrabzap971perzp	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-08-07 20:37:26.947494-03
nkmaef9cmb5ox5vi1zj6lrulp07iaoto	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-08-25 07:42:33.514727-03
wg5cwbzuxrq1k97k8gp8md5p21z1grj9	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-08-13 11:52:50.22609-03
1bg0mvzdadhh4il167v1ir9giw0rbjsu	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-08-13 16:49:25.393024-03
lruaonn6wckcygjrrdts3i6jtzi1zyu2	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-08-13 19:53:30.214065-03
bqgaw9nf3kyubuhdxh5arn1nbskrkphr	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-08-13 20:40:46.10375-03
usx8x1td2wr78dlt808l9qtn1nleoeae	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2019-09-01 08:11:21.097428-03
95n79oek57qkfyv54sygrog3y1ka4e5a	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-08-14 19:32:20.36009-03
k98uz7zdjoqr1u27sjmzr0t1wi21dexh	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-08-15 19:51:00.433297-03
n7bq3thggtttqtqldjlln2o08kt9wksw	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-08-14 20:17:41.068734-03
my6gpt8zulm2hhpk4bq6ln3tn4gbah3m	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-08-18 08:44:14.517513-03
kz03bw5jmp8ioy5eq026d40derz41ycv	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-08-14 21:06:49.399801-03
rf8qyiz5u74jye0bx5kv5uzd0dyu9o2i	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-08-15 20:29:03.279922-03
rkvacqb16l5fsehqr993k2sssovsh4iz	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-08-21 15:59:21.322074-03
9kh9kc1pm2htq708dul8be8y5qyhb9n0	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-08-16 19:56:46.660396-03
ko92niilenkk5u4mlxtwb86dts5moyrz	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-08-23 19:50:17.670298-03
qkjxwe9cmanxea43uldr9n4xzli3qwjb	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-08-16 20:43:38.183713-03
smglfl8k40srccxjo4wm5pqkwx3350pc	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2019-08-18 20:05:12.908882-03
8cmh4j2nxt4bgkjgbi501bp7clqlo2i6	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-08-21 19:37:07.388853-03
xmivdl8045y1k88idz8y6b2bbfqc1mkx	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2019-08-18 21:07:51.70765-03
zorv70kj9i3iozqmxokr7gvw8b8xvqhj	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-08-25 09:07:19.18676-03
tqlh5p4v6i7mc8wn7u258s1qh8mqejf7	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-08-21 20:46:22.417823-03
5l4c2vxl9s52lguyvrli2fe2nhy7csx0	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-08-27 19:47:37.597376-03
lv76xzt4rgrxkjdwpjdpk9c6nneg3w96	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-08-25 14:52:11.592733-03
lnq4gfbnd2a629mld0k8f27dogc77urn	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-08-27 20:53:33.547159-03
4lne8schblo22amj8kwhno4n5i59utki	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-08-25 19:35:42.213023-03
qtyoe0wzntm37ldmbgqigqh5j1cyculc	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-08-28 19:51:04.848021-03
fklq78hrxcc58u7txkk247l71e97j17a	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-08-25 20:47:11.790585-03
ppc36zprrptt5023a1sedtggibpq69iu	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-08-28 20:38:08.680291-03
z8o4o1mg3cxomoladyyh0cggdwr6tvb8	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-08-28 20:49:01.620115-03
fzxau82roadefgu7kc5kishlrdxy3any	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-09-08 07:51:00.97571-03
po9hctn22p2k2m6kzk4ox6ydp9kgsc4a	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2019-09-01 09:00:19.166763-03
c06pd52j4ff7bzw9m94pfzt8boi9jial	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-09-12 09:29:57.325845-03
z4ddp3y4whcz4hh49ei0cuzuklf93l0i	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-09-14 10:14:49.537093-03
y7zdqi81hi2gyv4n5o8dt3n619d2yzdf	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-09-15 07:50:12.57575-03
4qol5es4ugih89altj8wgnuxjiodwxpq	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-09-21 09:40:25.303285-03
zgotbm4nykgs1gzc1ybv6srzyuryo8jh	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-09-18 20:09:48.41143-03
l1rqh2abz1j5zelv3rzlpusm5xe8fbmt	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-09-22 07:55:34.009388-03
h428b0msxxdiacxov6jsanivt42jvr84	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-09-19 20:17:55.445196-03
mqwezgzuswjgti63ja92xp85kzas5bcl	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-09-19 20:32:25.857689-03
79qdz30dwbukv7trq569aqa0ikby867a	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-09-22 08:06:55.433554-03
wt9ew9hdfkp3ybey8iwfjhlmb86mv1z5	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-09-24 09:15:13.089699-03
r0cs6lay0mhg170w70vpffny29ut69xm	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-09-25 20:02:59.121006-03
x80exivjqvjpym2fyiiki0t5etent9ao	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-09-24 20:32:48.643507-03
pfiwvaq2ir3dly5f85pom7nb37a5p50a	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-09-28 09:07:49.16922-03
arkqewcnwfcffc8qmhmez4mrmqxgs5rc	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-09-29 07:47:35.898579-03
g761b2d3ao8cb5wgsmv28dadwlnswem5	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-09-29 08:30:29.090868-03
9x15ivujiacvtoh2g5a5fr0umvm7ig51	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-09-27 19:56:20.318357-03
eqt2vjqgav2xpktc7hgj8ys7vh4v34wo	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-09-29 20:32:31.928562-03
z6399av9ypujc3da3rrfvyoxdce6mjxh	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-10-06 07:40:53.266684-03
h9wkqcy97a72i46nn86izappmx7r8ds3	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-10-01 15:04:06.846358-03
x0lgonpq8qymuxx4a14sqelgzhbxstbg	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-10-02 10:20:15.674173-03
2728e07vd68pt8zgwppksnzw9vr7pmyi	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-10-01 20:04:59.728039-03
yzxf0qtlcr9igjk5ht33mis8wqgvlhii	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-08-28 20:49:38.393423-03
sd38h77ugf6yoh6nc1bk65388x0e7leu	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-09-03 10:35:47.305914-03
tp8brikyg3e3uphlq8yoo9m9p0oyjlod	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-09-08 08:47:25.745142-03
bf339p6trh6w54u00p0yqgg0ygdq6dzg	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-09-03 17:04:05.992572-03
98zk6crmj794ssr3noiam0ics89bojgu	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-09-13 10:07:07.775246-03
bcv5ll1ry7kmpt6j7nh5ruegj438eyvb	MjRmZjI5MWMxN2MzYzg5MDlmNTFlZDAxYmNkNjk3MjcwZDdkYWFhZDp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjZkYjQzYWU5ODJkNTIxNjRlNzE1M2IzY2M0MDhhOGFhYjY1NDYxMSJ9	2019-09-03 20:07:07.647386-03
4yazzuoz1kwctddzpl5gylw8kz67i071	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-09-08 19:17:47.260078-03
mnpxqppricv0khxv4zt5zrkthzu23xrv	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-09-14 11:31:49.68644-03
2yjlfn5gnhe9g5i1x8asn11laxerl598	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-09-11 19:36:29.998011-03
4ssa8tt1lsj12rq2pj9ncmayu148dzb4	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-09-15 08:35:36.119617-03
3vph2hy5ltnlin17t7yehmjcfuqbs7kv	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-09-04 19:47:34.986221-03
ryojht71a0kt2o30z8d2wslnxt7e0eov	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-09-08 20:04:30.923024-03
hlzpvqp354rant95ikbbpiu4251o9uqj	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-09-10 20:00:18.108717-03
a8hv9tvd4j5qhkir123dauzjjq197l2c	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-09-08 20:48:39.666091-03
ne1uwx47r5qqu466uzctmcpbqrc28us4	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-09-11 20:26:57.71142-03
fno8nht97c08vermk6gwoil55wb2afov	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-09-08 20:57:24.349603-03
y3zde1apms8zjogdapxl4mgc9eahnlm7	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-09-10 21:00:16.815922-03
hjfboaaattg1ou8bdz518w7yw769z4kj	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-09-14 15:37:05.734665-03
1haabn4ph8xpczf335jdc574tpa49m01	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-09-19 20:02:37.037114-03
mext2v04wxte83ytj9o7xuwc4s8pt3h0	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-09-14 16:55:34.089001-03
xynacrds2zi2pc9m5qhmk975pxbbd07f	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-09-15 19:14:30.83968-03
nie2i6ehpyqt2ftxblqlxg141tmugeoy	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-09-21 16:11:26.484439-03
0h1ejvvitynd74t1zvz9lecip0i4gw1r	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-09-15 20:34:37.837545-03
8wg0khxjotcy7jtjforv25k77iiqwt8e	YTkzYjgwNzg4NGJjNjdkYTE5YTgwNTIxN2I2MWMxYmRiOTU1MDE0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjdmZGMxNzU1NTQ4NzI1NTdhNDQ5YjIxZDM4MGU5YTc4NmY3M2JiZiJ9	2019-09-17 19:41:19.651087-03
f39nd5981m1rz813zxnbzfu9q9rponc5	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-10-04 10:34:55.155187-03
ockcfjyx2jxkqpm9pz6u3j8huj5x4fx4	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-10-06 08:26:15.74444-03
oq0okeq0lc6ce11mgblie64ba8q87540	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-10-10 09:55:17.111262-03
0pa0sbfnwhorvn9xlqpwg46pxuyaudyt	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-10-13 07:34:12.370797-03
9ulylsio535tiofd5u5ohzgrg2powy4o	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-10-18 09:46:36.690353-03
iu6tcmo2k6a81nprzuzpzqoytv7f3vuf	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-10-19 09:55:32.63828-03
51puplbtsov7fubsmws40poa9wqymycq	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2019-10-20 07:54:05.55171-03
f5japgknqkbs05o7ao3lfljx1g92ocf6	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-10-25 08:57:40.045252-03
zw8m6jfvc95i190zk5e113u2c5m1m5dh	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-10-26 09:29:29.388164-03
2ywo6zf3cprhfrhrqdd3wi3xpmuom3co	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-10-27 08:10:43.571853-03
b467mjtjm46uilg4q3mkekpsi0raw8qt	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-10-29 09:52:36.776361-03
r73w3n5oc76gotazq1wu4t9om4lqh8w7	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-11-03 07:44:26.171195-03
kdszj3zzfv8z3i07ucnfhkf5vci4rlm2	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-11-02 18:20:43.055721-03
gcx6ey9ir0ohdv341tru6lfcyfbelqz8	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-11-05 19:44:28.494407-03
0fb4f90tc71dmfpho5b7kzjbnrhml6uu	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-11-08 17:57:10.742488-03
jjfum95vly2i1ojuetdkdaq1yrchbjr7	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-11-09 15:37:30.048042-03
p3c3eljz2iizdppqf2y9b2bmawweao3a	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-11-10 07:48:22.031106-03
7qsiu261as6gf37jiauxvso2kwxz6ouy	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-11-14 12:04:30.806862-03
8e8xspcren9idtofquvp0rzexl0bgl0t	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-11-17 07:42:58.474504-03
n98pjhfpxhyezabbmm5dx25c5man1y98	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-11-20 12:17:26.017105-03
3m3m8neausq4yy38m1idp935p3oxe0ys	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-11-21 09:58:25.153641-03
w1bt9ggmuy0kdi6kt4gt3cvkdw035m7k	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-11-24 07:46:47.325166-03
6rotswv2xlzfqqj8m9evyeeucxhli583	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-11-24 19:58:36.092269-03
o4goqrvvhxpnbag6jz4oyez54ozgzwtn	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-11-27 09:38:11.928055-03
b8wur71k8emccbldiblo5h38ixw1hg8x	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-10-06 09:07:28.071819-03
j7edz91dzoksfr3jnpeqfmeefmd205pz	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-10-11 11:37:36.190404-03
txkt6dglsbgtsy8idv6sxn8jh8hfyc0z	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-10-13 08:48:29.286149-03
2miuo7p4qakwa4m2pmce4zfkoqlxmkqg	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-10-08 20:01:06.997842-03
sjao5lvk4nf28h03cgjf344qzbvj1g08	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-10-09 19:31:57.00555-03
67yub8o1yggkha967zz79bo4ecgtsgon	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-10-08 20:47:04.031196-03
mwydhp9p19yusm140z2fq9eh2ednev0e	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-10-10 19:59:28.923666-03
hns9hhnpyt64antq9gas2wsbxhiorxqi	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-10-17 19:42:51.594679-03
7tt1au4tivk4qfrtf78i6ijcbf78hqg2	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2019-10-13 19:38:27.026035-03
4cfieny5ka64u8p64gosudkngyawf99f	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-10-19 14:36:02.06212-03
ifvqre42kb4yq2w55gr2o4bl1cq745g4	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2019-10-13 20:25:36.392926-03
3v19fp1wpxeqk0w5qw8sg7utv3e91qvh	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2019-10-20 08:43:56.886407-03
y42emrffkw69qtwsbeakozft8enpinbu	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-10-22 11:23:07.433024-03
0v94bushzmdq47rf2noakjk759lomo8z	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-10-23 19:43:19.760524-03
4tjzdvhbnrbaz0kjdm1pg0afk8fpf6en	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-10-26 11:49:17.193015-03
0bxbpxbl5ywfrln8dratjzqgrdm4eew9	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-10-16 19:45:45.958558-03
6qsdr6kswmdn61hi1gfct6pzcqry3gv2	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-10-27 09:16:12.034434-03
8lq9b6yu1qdsx969wkjp132623as8f5t	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-10-18 17:25:53.554049-03
kuhgbt5ic2p3wgi19vd3sahyairtxjw1	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-10-22 20:33:44.111153-03
zn1xg17qt9h2j2gsma8ptu0qtsqoweq3	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2019-10-18 19:36:45.099851-03
4xqz3jofm2c22vegf2ydver2epzagzz5	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-10-26 15:11:35.078357-03
hbs0kx9xzk2jxvgjrvin6pccw0t3gblc	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-10-29 19:56:10.71961-03
b4nxgof90dn67h4co16nl2klo63s8gqo	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-11-03 07:55:14.843162-03
ry3g0inw563ii0hf9vojaragngrjff65	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-10-30 19:44:19.455451-03
shxgsnj98mffe953yvw28u6hijxal06t	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-11-05 20:29:58.748003-03
2uhjxx6iin8k9jce4eeka6vdc8x9qcsc	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-11-03 08:44:34.454345-03
v3v84d2ab6o937cabiske10v5w2uo8sg	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-11-08 19:55:06.058525-03
ubqriplb34ifez06pndpl5xaq1vbamf1	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-11-09 16:36:32.960431-03
9m9yvgutx3mj40lywg47yk51ddoh4mwx	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-11-10 08:47:38.950275-03
19p91at3todth85rhu6m9ygktqgusnyt	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-11-14 20:10:41.327537-03
nta65gkvxl4txitueg4smlve1jkugubp	ZWMyYWIzNGViNGJjMGU5ODJlYmMzZDA2NGRjZTQ5YjRiZWE0YzZkNDp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDhjMGUyYzQ5Yzg3YTM5Mzg2YmE0M2VlOTUwOGJjZDY4ZDRiZmQ3ZiJ9	2019-11-20 19:38:25.700089-03
fu2i3oq2yeto58ae9jca51w005hcdtq0	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-11-17 08:44:21.235649-03
pyi66qhp36apzh3fgtn0clp9t3dxr7ka	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-11-21 19:47:39.934965-03
hwxsi6cv1q5ep44zsyujedca65cxpc53	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-11-24 08:36:50.392649-03
3iipj1ldo1bmeoequ4plncd747usb46s	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-11-28 11:12:21.15585-03
nhm5tc0c1936wiylgtpxt9lp04023iyq	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-11-24 20:49:07.612348-03
n75gsejov63wqndtmb6j7psmpwoy4j3g	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-11-26 10:55:55.464882-03
095wh7yc3xveebgs4bgu8fq35za97f1x	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2019-11-29 20:24:42.378126-03
fod425gjc1lzgmb0d1gfcnlku5p5dnji	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-11-26 19:54:02.09519-03
8semtpqeqpcn3s8u3tjp07vttw3n3smc	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-11-26 21:03:18.224118-03
8taqiqwao1ncy5b9j8vo0yfemkzubzim	ZWMyYWIzNGViNGJjMGU5ODJlYmMzZDA2NGRjZTQ5YjRiZWE0YzZkNDp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDhjMGUyYzQ5Yzg3YTM5Mzg2YmE0M2VlOTUwOGJjZDY4ZDRiZmQ3ZiJ9	2019-11-27 19:36:18.45668-03
q9rjzdn94bgfvotw4dsuuu2h6sg6i0cu	ZWMyYWIzNGViNGJjMGU5ODJlYmMzZDA2NGRjZTQ5YjRiZWE0YzZkNDp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDhjMGUyYzQ5Yzg3YTM5Mzg2YmE0M2VlOTUwOGJjZDY4ZDRiZmQ3ZiJ9	2019-11-27 21:02:46.490042-03
t6pfgo20p0664kttwbnx6tg6z9dc6pbp	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-11-30 08:44:32.236011-03
ycezorlncgexduf5bqkwfdacwjalfxcq	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-11-30 12:38:04.476356-03
glbes3bew1466hziobsr468stm5zjvvu	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-11-30 15:33:22.74683-03
cy5raxd6a47k3xdbkwivmmak419iy0c6	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-12-01 07:54:16.722593-03
ov5liiabh42lgvqbwaez1od1y64y2cvk	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-12-01 08:42:28.887284-03
rpycfzipn985y75bnldhnp3is43p8aiz	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-12-01 20:30:23.265338-03
lgxbh619fi0xxfglh43r4fgsl983624y	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-10-03 19:37:00.72898-03
xnrusylhqjuzngxi983gwhj27eomhetj	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-11-03 08:48:18.589007-03
f0r3f0nosyeeyztc571gox5l869qdqbk	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-11-06 09:58:29.437983-03
lb3y9tv3ul6jz8kwsl281vv32g3u4u5p	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-11-03 09:02:50.025404-03
jtzl1bxj93xxp6anyaolcomn46sucrx8	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-11-07 11:28:41.768961-03
7wv7l3sruvpaex8q94l58lclcu3kckqh	ZWMyYWIzNGViNGJjMGU5ODJlYmMzZDA2NGRjZTQ5YjRiZWE0YzZkNDp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDhjMGUyYzQ5Yzg3YTM5Mzg2YmE0M2VlOTUwOGJjZDY4ZDRiZmQ3ZiJ9	2019-10-30 20:54:17.812066-03
immvdo2mpn0x71k9s9h3up8d02zsydi4	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-11-03 09:31:48.721536-03
57707a04vtj1ll1xyklbk0ow9ds60d8p	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-10-31 16:34:10.67854-03
mzj08n74z3qd8i2mav4x1861cd1bbndk	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-11-08 20:27:07.051014-03
0h47fzea1mwmstfxifwdnn7tdgr2v1jm	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2019-11-03 20:05:38.496401-03
5re53rl77rn3fob3ki6bztunhne56101	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-11-10 19:22:42.484535-03
80pozi4z27yorj7r2t9a9kl0c8d08qsg	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2019-11-03 20:55:07.937917-03
ug01n3kdr5gb04pb2qiwfk9x2lzaje0s	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-11-06 19:22:46.424056-03
hmfbul072fl7toirbck0yv8usvxtpksu	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-11-13 11:19:23.716278-03
xcq5gryw3sjub4fmt922wgt4n1nqkwu1	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-11-10 19:55:41.52133-03
yamvumlyxreakfksft8ibwp1drkyqz3f	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-11-17 19:19:40.517525-03
cael6xj4wfzz020mco4cmo52ewzmfopz	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-11-10 20:42:08.95219-03
wm3dtc33t5oz5p7apvn2uazhtc9f73rl	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-11-12 19:46:11.589922-03
bueb8qv187bc43p459e7tey2io43il8e	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-11-13 12:08:16.324825-03
hhipumvilcsai2fupv4w3gu46ou8yqrt	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-11-19 19:38:54.916251-03
lruszbsdd04rfvurlojayy0a8l21qux3	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-11-13 12:34:35.1117-03
qbwry9mhnnwno6usvuo8cvq2c7aggdl4	ZWMyYWIzNGViNGJjMGU5ODJlYmMzZDA2NGRjZTQ5YjRiZWE0YzZkNDp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDhjMGUyYzQ5Yzg3YTM5Mzg2YmE0M2VlOTUwOGJjZDY4ZDRiZmQ3ZiJ9	2019-11-20 20:36:07.276435-03
dxaywevx5lry4ixaf7pfehh7ko46b5sj	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-11-13 13:58:59.445083-03
ka8dzoa9lwwmm9zylc075ex1tfg0tyah	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-11-17 20:42:24.859427-03
yanf5g1srmere9k8orizjfqixplxhrzu	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-12-05 09:17:04.685439-03
4pnkakegmat4p18br8b0g9a0h6hovyqy	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-12-08 07:39:45.372124-03
rtwlrd6sxtxhbn5zqdi48jp15mvcfft2	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-12-11 19:21:18.472982-03
yau4q4vu2it2h4wn111zjd9hhhuggbhq	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-12-12 15:48:09.127162-03
8wjkq5payxqlykuclegljmefz4qcglj4	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-12-13 10:04:19.057499-03
6a21z0k5cjpysjobfzomtusc3i1zy7x3	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-12-15 07:31:34.306891-03
rxt8ye05l2g5p9aoff8nxs5fdl42h18m	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-12-22 07:42:28.679853-03
5n5lkrfr19uclvfl5nqlr075auex0a9z	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-12-19 17:44:21.290212-03
ivlbp10s91193t124q9q8mj5aph3ia2l	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-12-20 14:48:48.318619-03
1xs76nsevem8s148aegyo8lf8wrztcgo	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-12-22 08:47:07.732393-03
1uv3ok65gj1i95uxq9urgdbnkll4yx8j	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-12-20 19:47:43.829603-03
h9tb348ce2wihtvle8nn7adqk5jdh18g	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-12-25 19:37:07.067736-03
qpa9u3fe6hp0vqmef5cnfnrqhlb4umld	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-12-27 13:30:46.264653-03
3yntg3ua8onbyooc5n1cz83pf2tnjle0	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-12-27 13:37:30.416447-03
tsvemt45fjtugue4w9ub4bse1bko6mf8	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2019-12-01 21:49:44.120212-03
1tl6f1yt7o5wqngm770ayn2iukk6em0c	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-12-04 10:52:50.583646-03
qxtd4cgyqvak6eorb1gxqm4qmlkq1lp9	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-12-06 12:09:26.535039-03
amps2o2561y7klddlveocz0rkvggiqfk	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-12-08 08:25:30.487079-03
fj16v7662qz4nvt7ia1klebp5kgmbtgd	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-12-05 19:34:56.539106-03
civ4n8etpkdcclvy9k3vevpa40djx7n1	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-12-03 19:44:19.380432-03
hkgz1d201ymp430i35knu8ml31ufm9zq	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-12-04 19:18:08.880465-03
sj3u0mvrqxh87lypge7i7s9m5o20h2u9	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-12-03 20:23:25.803161-03
gvx9o3hrj298mx21hc0vxa0dak1p2ol9	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-12-12 19:58:08.095196-03
9oe4tx3uut9r7rfiraac7vmjy922n2dm	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-12-03 20:52:21.10688-03
ehehv7vnixfwhqn4r2lub1112gu49i42	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-12-04 20:17:52.539316-03
m5g5vuqr50ne1f8uha81x9pncti9lato	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2019-12-05 20:20:56.809305-03
i78w04vypximviqbh0r8iam949f2z6cw	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-12-08 09:11:11.353212-03
87evto5f7aubtqnd7tscfr2hvnbry9lg	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2019-12-06 15:27:46.24577-03
vsk5sqsbqg7tpyz8tztbqt25ejshlh5a	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-12-15 08:17:47.146128-03
tiyxl0fb18txa634ecs1hfgcnpdhwnzw	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-12-22 07:45:07.755823-03
8l10xijtp5h0bdovkza456nbqwe08atg	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2019-12-25 21:03:22.040107-03
ev3ap605lvxntsrk9c03gjxicy2byp03	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-12-10 20:01:10.214692-03
m74ku0yjlqpqn2pyivspivy3i021daow	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2019-12-17 19:56:09.877296-03
qqpl6s0u4b97hmk0zhrfenyiusroq1hj	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-12-10 20:51:16.250878-03
6o7dpouga2vec1hbnxvva9gl8pkv71gu	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2019-12-15 09:07:31.027415-03
snqqpfs1fh8fiwxcjxcdyg7p14k8dzft	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-12-18 20:12:20.02841-03
bxegvxlh1h8e68hq145aei99f7jhrxop	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2019-12-15 19:34:31.097963-03
55qeexsbrjw691jxecdpm2t51ih68bx7	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2019-12-15 20:23:08.196044-03
nawnhoywxe8coavlu7pk2dh5kq66cb7y	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-12-29 07:42:22.655054-03
9f2a701xyoaaysbiljwmb1vnf3tblubq	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2019-12-29 08:28:30.254304-03
bzf06we3zhell60ya45w8h98gkj28zy6	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-12-29 19:43:30.555741-03
zn9eyuiegx2wz90pj88of3e0yuzvqciy	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-12-27 19:24:18.283022-03
sn49jlwf4xu1o087y8r4t24cbxt3bvsc	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2019-12-29 20:49:54.989527-03
8ys7jwvit622du2789n91sq00gauh2bw	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2019-12-27 20:10:00.978986-03
rv6nx3d8l6lwxg8v2uvja8wz1fm1vfnu	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-02 09:24:25.533756-03
tkr6o79jkvz9m95884oaqgshm8wmboej	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-04 09:14:49.241972-03
pe5ecsxj9ol2v1b2zsaloa1pso91kriu	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-11 10:13:58.693676-03
uy3p729307ey09237tz2671x9pj4vi1b	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-08 10:05:14.059575-03
mwq7vebj0pyjzkceuimen9yxedvll4g1	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-01-02 19:57:33.289771-03
uelex7wmp0of9yl8tkp0l02xkcc2cou2	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-01-12 07:49:03.87308-03
5am17k8spwedmj9yyu52pufgkus0om1u	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-03 14:45:25.939343-03
7n5poli5vip5eamp6m8dzkmt6pxyccud	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-01-05 08:00:32.467092-03
1pg995v2p99byn4ugia6692i0ykhiaba	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-03 15:35:15.123492-03
rtxjtk8sqi6j44iecptabc8ivo4oz2az	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-08 11:24:12.521262-03
5e5dtkpw1u2pj7rphcn60cov26ark78h	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-03 16:21:54.492949-03
m3iwavjpsoi2e9ebif82uu3tgptgis2e	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2020-01-05 08:46:27.80022-03
29sbkwh3s8hhqfandt5irpshbjzbongy	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-01-09 20:00:07.469103-03
qx98z325gyx06h3mapcgtbrwtv875hrv	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2020-01-05 09:36:32.893068-03
23t959ka3p01v1bd6sfysx1a1zmj65ro	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-01-07 19:34:22.036764-03
2jdel54b9ujipe60zuxbjwj5ojee1d1f	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-01-05 19:43:50.600076-03
6aeox2jjbxpc9iqfullzo3slq1feyx2h	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-08 15:13:30.877546-03
53y5xhqi8v07kuycf51gojs2tuea976u	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-01-07 20:23:24.974716-03
kh7iozv29pj36uj2j4a9mlsy5zgrsc8m	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-01-10 19:44:19.097063-03
ppgisr24jmmftkd0y9gg0dk37wyhc0u8	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-01-09 20:28:22.505881-03
nb008zou6y4b3eyjxjskz2qrduytlt2j	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-18 11:31:40.494035-03
fd2ca2ev064bt8q9ld97w817ylujwkcn	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-08 16:22:31.618071-03
qxe29ip7vr7hscx0e1dw6bazlj8wvs6p	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-01-10 20:37:40.728309-03
g2yr7vq3v4nvmibrgnvyte49ykbffwgt	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2020-01-19 08:16:36.502496-03
dunebgtvcs8dzm79wl7i692m8joetcwh	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-11 16:58:54.869962-03
4a7svetpeitamdunwh0csn37k6iaiyw8	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-21 11:27:54.055358-03
9yd04xceliq2q16exgr84xwfz3d4s6j1	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-22 11:40:17.974743-03
1kqoq5ll0vi6t5bts13lfkvsh30zmmbs	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-01-08 22:03:53.78812-03
vsszupy3aqmkhpt1hsyd2sttjo9wo6wi	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-01-02 20:39:41.061703-03
mavjpel8nz3crm5wjiyd7jwgt97fvcmw	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-01-23 20:02:24.118247-03
xlj3n9ebv7sumf1fqdcdup5sg5eeu68c	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-01-12 08:37:34.18577-03
kxw6qxs4kejbqre6kwu80kaqpfgzm6wn	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-14 17:04:42.330963-03
5iihtqffeiyrvmbed3a82w9id9ee0l27	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2020-01-12 19:47:50.133648-03
ujizplqp9hjs6m2s3o2yi4kmgn2q6012	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-01-22 19:35:10.803072-03
q6dyl8cjsnncgh6xexa544pmqrtkqb7v	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2020-01-12 20:48:34.021303-03
rycjavk7a1qssi2ipidnbpg3xu2uaege	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-01-14 19:51:43.665036-03
h7351z385xdml4hpjpob5z7kx1u25w0k	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-01-22 19:35:10.805014-03
y65mnvqsif253zcdu1wi6i0hnc7duf17	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-01-14 20:46:31.142454-03
1z7q6cv2ehbyf5nqwvw95mcv421m6q7o	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2020-01-17 19:53:48.948677-03
j35vee14m00b86n8m1p6vdibmmqwzoog	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2020-01-19 19:50:41.570822-03
fxmr2t1huxvijdx35rt7uoxrdsffrzjp	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-01-16 20:03:49.15644-03
750ecjjigsoivi6c7pqvfxhpwxbzkm9f	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-01-22 20:21:32.70367-03
ocbp17965e7w5515gggobq3tnye11at0	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-01-22 20:46:52.806129-03
9am14nfzvtbbcyfx2v060v3f8xxafpup	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-01-23 20:47:53.15425-03
64hy7yrtf5n2vwg0tpo340x5xm6ln7rc	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-01-24 20:24:03.729012-03
kzbiv3kdoujkhsnpxkrzd0nhbdo7or7u	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-01-26 07:36:31.385187-03
mx02a0rao7n64bjl10cdfj4fmsrk9hur	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-25 12:03:17.178567-03
kizpguapoj4hjp2ig4elald33ininbyf	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-01-26 08:42:30.955217-03
wadu9p255xaejfzqgayxjow6xf4ivh6j	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2020-01-26 19:41:34.191496-03
h1cu2j52q847zl5jkkv9wovnttwvmlmw	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2020-01-26 20:27:32.988017-03
5nnpfzz1t9c2wpxa8bq2yzawf5nlzj9b	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-31 09:45:37.125446-03
84k94s0clzdi8w2u9eai739sahlgk7tg	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-01-28 20:08:24.481458-03
rexogydu5cz16imazacdyq2e3drc91jt	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-29 09:50:09.687431-03
oo7lr8ylm1xxdqpuj7ljoi40fg27ygwy	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-02-01 09:35:36.769626-03
43h9fl07m1fm0rhiglpnnef8hxwh3ecj	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-01-30 15:51:36.398981-03
fhd07o3kk6fvu81pytergwpvuqof7w9v	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2020-02-02 07:38:42.833593-03
8ljz31xh4cuow1k4tdrgv4he17m5v0i0	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-02-04 10:21:45.800256-03
ygitodbh4k780kb5ls02hroxs3cn3l5s	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-02-05 19:30:19.011337-03
zzd5m73domqx2z72yj2msdu8y9v4uai7	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-02-06 20:01:28.734824-03
u5j9hutgqsb8gm0hn53janrzowj5v2qj	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-02-07 15:40:25.123755-03
fwrbutsadp210porih4wzsko4i6ytufh	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-02-09 07:46:16.773402-03
0q64up4iexfg4zzbaaqv4hrzhgr1jvan	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-01-31 20:57:55.760353-03
k1rph6ltji7yxf7y8080aj3jnik8tqyq	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-02-12 19:44:33.762643-03
ifclvouft31i9ckr6jai56q5dp9a667o	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-02-13 12:51:16.158897-03
j9h7otkixqnmd01upnxkaxj7n0j86p4u	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-02-14 20:25:15.586357-03
szwahwjp5lqodrhn2wyct1zwgtlxadsj	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-02-15 19:08:59.379005-03
kjjfm7wv2axfkpefeesn0ywq5g70jsda	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2020-02-16 07:37:55.103369-03
ubsuyndefk8laedt1q8egothtotevpfp	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-02-18 19:51:29.81203-03
0u2aw2czsapw18loqa2pr3hiize1rva8	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-02-19 19:27:49.72076-03
b1gttiw5wiv2p9ss1djq26in5drskmik	ZWMyYWIzNGViNGJjMGU5ODJlYmMzZDA2NGRjZTQ5YjRiZWE0YzZkNDp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDhjMGUyYzQ5Yzg3YTM5Mzg2YmE0M2VlOTUwOGJjZDY4ZDRiZmQ3ZiJ9	2020-02-20 19:49:45.147519-03
85h871odg7lqqmyyqosol0tn40icmpm2	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-02-21 19:53:31.488832-03
fhjz66k0s4elly4uow0vcky38bqdi1ew	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-02-26 19:50:37.030106-03
7tdxi8y6g1uzpu7mhj9cdxkbt6aonlc2	ZWMyYWIzNGViNGJjMGU5ODJlYmMzZDA2NGRjZTQ5YjRiZWE0YzZkNDp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDhjMGUyYzQ5Yzg3YTM5Mzg2YmE0M2VlOTUwOGJjZDY4ZDRiZmQ3ZiJ9	2020-03-10 20:10:04.534841-03
7rxa0z9ssewmdcqv5qgz1klpv6g41jrk	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-02-04 19:45:07.359198-03
i5tafsmnxytme9slmq3gfm4q0n9iy3o6	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-02-05 20:41:58.841684-03
8cjx42peesgon6mtp7hf4ajhdi6sy9my	MmFkMDQwYzk0ZDAwMDhjMWM0ODhmOThiMWI4ZDUxZGJlNDE4ODdiZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZjQ3YTg3YjAwNzBhOWRjNDliMmE4ZDViZTk2MjU0Mjk0NDc3MzNkIn0=	2020-02-01 16:00:21.343444-03
us9omwyzc47mb5cdwq872e4hmxwd10ms	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-02-02 08:33:34.339046-03
6ymrs201ed0b91nwkojbc629ezv6nj51	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-02-04 20:33:09.043989-03
oem3da8h70hpbt7pb2wlmikswnbbtefg	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2020-02-02 19:36:41.062437-03
gjngr02pilerskpgbuzcxwws1m0949tt	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-02-07 16:26:01.078927-03
fciqptnm3hdm43yesx6i3r53r1ot8nwk	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-02-09 08:41:31.529121-03
qjutub445oe625x4hlumyv4sf9mtt6fh	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2020-02-02 20:51:12.695361-03
bipkrl4qqe1j23m0jig52y3mh53qm5t0	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-02-07 16:26:37.400557-03
2crrq7wg7ydrj43hidgauenfq603xnfk	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-02-12 19:47:50.627232-03
pr5475n9cwdlpz9ny4qlzrm19z144tt6	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-02-09 09:12:36.752839-03
5hmbrgs0vnj3hqzm4ug3ao23tjxsbt42	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2020-02-13 13:57:51.930527-03
1uhf3lylrn32vpgekbq0ha0q364y25bz	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-02-15 20:59:37.381169-03
6wf6jeyfm3uivch9f8nmqozgh4udkymh	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2020-02-16 08:25:51.352052-03
fyfaz2nz9o4g1kc8zqp6s39q8vlhhyjk	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-02-09 20:02:36.268117-03
noom9clfxfzejn9vyo1czqe7i92cf5l1	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2020-02-19 20:52:42.135551-03
3dsxuy0f84p72vyx4x1wapthgk7ivyea	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-02-09 20:16:00.833245-03
jck60loho4pz5sah1eh3zwnij3jmo8hc	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2020-02-16 09:17:14.0612-03
3uratyy916tvjzvr7he6tigpgucm7y8g	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-02-09 20:24:17.999586-03
di100hmpqnvun0z9xvh7vka8fqot8s9z	ZWMyYWIzNGViNGJjMGU5ODJlYmMzZDA2NGRjZTQ5YjRiZWE0YzZkNDp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDhjMGUyYzQ5Yzg3YTM5Mzg2YmE0M2VlOTUwOGJjZDY4ZDRiZmQ3ZiJ9	2020-02-20 20:24:43.399748-03
axfejomss2wkoxe9qapkv31nai1apwx5	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-02-09 21:18:28.740378-03
sn8flh396p1r3rg29ydjhcn17ggrwbff	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-02-16 12:13:57.186402-03
0i61vu9kddl6btuohzr4io9eofbxo8w4	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-02-16 16:15:23.745644-03
kyz9j66pg4w2whwrpfggbfl0tunv52qy	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-02-16 18:09:44.486734-03
p3ldpl6hv5muuwj9928ts5m7qgmujckr	ODY0YmJiYThhOTg5YjI5MDNkODRjZTJjOTJkNjk3NzcwOWY3MzA1Yzp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGFjNjRmZDk4MzkxNzc3YzA1NmJjOThkOTA1NmI4NGRiMGM5MjA1NiJ9	2020-02-23 07:48:44.864881-03
zmcpwo1hcpi5dni1eu2l9xdoivmac30n	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-02-26 21:02:54.489542-03
mx2rntof8a2lka1poieehj6ohs63mghg	ZWMyYWIzNGViNGJjMGU5ODJlYmMzZDA2NGRjZTQ5YjRiZWE0YzZkNDp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDhjMGUyYzQ5Yzg3YTM5Mzg2YmE0M2VlOTUwOGJjZDY4ZDRiZmQ3ZiJ9	2020-03-10 21:22:59.445957-03
mllataum06ghgh18qsnpivwsikwbiwvr	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-03-11 19:42:23.362472-03
ayw3vbxb2e236fcnq5hir6hpfzh224pf	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-03-11 20:37:15.727301-03
46fnxiwso1lkym5um7onhr81h74uci11	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2020-03-15 07:39:39.16947-03
hzoiizkg3n3omktlu276g9cx4v29jnw0	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2020-03-15 09:07:59.971604-03
g8tfm0a8qqfu2pu97qar39tdx1oirjvw	ODY0YmJiYThhOTg5YjI5MDNkODRjZTJjOTJkNjk3NzcwOWY3MzA1Yzp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGFjNjRmZDk4MzkxNzc3YzA1NmJjOThkOTA1NmI4NGRiMGM5MjA1NiJ9	2020-03-15 19:35:37.494541-03
qql7wmnhslct32t2ph4n8lceargiflk1	ODY0YmJiYThhOTg5YjI5MDNkODRjZTJjOTJkNjk3NzcwOWY3MzA1Yzp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGFjNjRmZDk4MzkxNzc3YzA1NmJjOThkOTA1NmI4NGRiMGM5MjA1NiJ9	2020-03-15 19:46:52.225742-03
i6l2n3s2r80d3hj57u7wqjrvfcd8pt5z	ODY0YmJiYThhOTg5YjI5MDNkODRjZTJjOTJkNjk3NzcwOWY3MzA1Yzp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGFjNjRmZDk4MzkxNzc3YzA1NmJjOThkOTA1NmI4NGRiMGM5MjA1NiJ9	2020-03-15 20:23:41.096311-03
5fhvo09vln0gpcanemkhptq6fa1tlpm2	YTkzYjgwNzg4NGJjNjdkYTE5YTgwNTIxN2I2MWMxYmRiOTU1MDE0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjdmZGMxNzU1NTQ4NzI1NTdhNDQ5YjIxZDM4MGU5YTc4NmY3M2JiZiJ9	2020-03-15 20:49:57.300947-03
1u1eykc354ktzd1kzctmkuw0hjw26ur8	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-03-17 19:30:38.356019-03
r1sx585smk5xsl0sx4lnyf924g7sryka	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-03-17 20:12:39.245324-03
y2oa98v5263vjybmm11fu7duki0kc6gb	ZTc1NjM2MzNmM2JhZDRkYTAwNTYyMWYyZTUyYTZjMWQ1NTU2Njc2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTAwMjlkNzQxZDAxOWRkMDUyZmNhNjkyYTRhYzkxMjE1YWJjZTJhZCJ9	2020-03-18 20:28:28.129286-03
ujnsl1y05uamunsy3520duwn46yt16cw	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-03-19 19:49:42.074893-03
nuufrldb5j9p3h1dtoxqn0wh8osowfcs	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2020-02-16 19:44:04.95701-03
8m1ety19oxleayoje04ltzohlbgyf52z	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2020-02-28 19:37:19.354314-03
4x766lv42ux9523s9xyyp8hv2b16vli5	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2020-02-16 20:44:18.867711-03
fs1xcytwjk3qoljfkk5bdiy7zxol688a	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-02-23 08:46:27.563461-03
zfu1qayloih09nvrkc74d6fj70rwbosb	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-02-28 20:23:09.97087-03
bgck4g043a4ldcgfy1cshm8jebsjjz8v	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2020-03-01 07:46:10.627143-03
xnl7or8t9d2rx6nmx9gpk4ovhhxhlyo8	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2020-03-01 08:42:43.529328-03
oks2xdxadf99ngz7kt3ljc3taps1hibl	NDdmYjk4ZDg3NDRjYjMyMTdhMmU3NDZhNTBkODY4NmM0N2JkN2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwNGJjNDFiNDdmNjMxMzVjYWVmOThjOTE5MDYzY2YxMWFjNjA5YyJ9	2020-03-01 19:39:15.455435-03
zijacyi6m7y20bqq34j392lp81twq3ti	YTQ4MTU4ODZmMWYyZjIwODlhYWVhMTNhYzVjZjBhYjk0Njc2MjQ2Njp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQ2MDE4MmM0YzM5M2IwZTJmNWVlYzk0MmRlZWNjOTg3MDkzYTFmIn0=	2020-03-01 20:42:04.663848-03
ptlujxdypvwv6mqpaaq2mfqmqxciqmnf	ZWMyYWIzNGViNGJjMGU5ODJlYmMzZDA2NGRjZTQ5YjRiZWE0YzZkNDp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDhjMGUyYzQ5Yzg3YTM5Mzg2YmE0M2VlOTUwOGJjZDY4ZDRiZmQ3ZiJ9	2020-03-03 20:05:19.554037-03
ftwhifj1j3t3jj1btd4jmfqbqho5guu3	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2020-03-04 19:43:59.786225-03
zv0hox2kj6lfons1v7vz0ur5bj2ixbi0	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-03-05 19:56:37.555807-03
sh7dmcn3xu9khd9liajmzu0oxcuhsn5g	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-03-05 20:56:08.61295-03
jvhdz2rirvknrukcmw9r3i34gri6v8e0	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-03-05 21:37:51.926202-03
10w912tbpekikc02l2bcm6ckbxhu4wnh	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-03-08 07:49:26.897901-03
tzijzllfdncoazgx9b44nozc8d1c8xse	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-03-08 08:34:54.537615-03
owhu2kcwwo2uodn644k7ub9p1c58gqy8	YzBmZDNkYTg4YTVkZTIyMGY4NWJlYzBkZmE1NjQ5NTUxNWM2ZGRkNzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYmI5MWY4NjAzNmIxMTJkZDliMDg5ZWUxODM3YTA0MTY5ZDU1M2ZlIn0=	2020-03-08 09:26:05.506712-03
0ns449ccs4keba98xdpqswuk2avsraux	ZDE2OTExZGNlYTI3ODllN2FiMjI0NGM5OGEwOWE0NjgwYzM3NmZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTk5Zjg1OTUwOTA1MWM2MDcxZmE1MWUyMjIxZjVmYzg3YmYzNzY3OCJ9	2020-03-08 19:17:48.143411-03
2qhza2naba6q1w68qc97w4thh3mhx79f	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2020-01-29 19:25:45.120115-03
bll9bbbkze0a3bclarfldp9vm2sue46c	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2020-01-29 20:50:24.380534-03
30wmdt3kf328uuze8y3i4qbtmwvu9ptw	ZjFkOTIwNzYwN2I0OWM1OTgwYjc4Mjk0ZDhiMDZkZmNjODAyNmQxNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGVjMDg4YWVlNmJkM2RiMDExZDJhMWNkNGEzZDBiMzk0MzM2Y2M5In0=	2020-03-08 19:56:58.257445-03
wqb8tsrggllt7mxcvm9tc3zhza8umkm0	ZTEyNzVlYWY2NDE0NjdkYjgwZmFmYzgxNzUyNTc5NGM5Mjg4ZDc4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y2YWI2OTdkMmJjNDE2OTIzY2U1NzI0N2M5Y2ZhZTFhZTE3OWVlIn0=	2020-03-08 20:42:15.559529-03
8eu7kea6nyqbw5ittde7tydumfkbtl19	ZDBmNmQ5MzlmMzg5NzMxYzU0ZmRhY2FkZjEwNjAyNmRlZjEwNGQyZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzFlMTIxZmU3ODc4Njc1YjUzOWVlMGZlMGRjZTM2MWQxN2RlZjNmIn0=	2020-03-09 12:28:14.246382-03
9kihgcz64r25l5rgx3jivwbf62i2id79	ZWMyYWIzNGViNGJjMGU5ODJlYmMzZDA2NGRjZTQ5YjRiZWE0YzZkNDp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDhjMGUyYzQ5Yzg3YTM5Mzg2YmE0M2VlOTUwOGJjZDY4ZDRiZmQ3ZiJ9	2020-03-10 20:10:04.407689-03
\.


--
-- Data for Name: thumbnail_kvstore; Type: TABLE DATA; Schema: public; Owner: infobits
--

COPY thumbnail_kvstore (key, value) FROM stdin;
sorl-thumbnail||image||f7b2ee63fbdde44ee0adb5434e7f7ce4	{"name": "usuarios/fotos/eu-2014.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [295, 394]}
sorl-thumbnail||image||4b44e35a0a55dd9874221f6aa947ac62	{"name": "cache/f9/a4/f9a4e97f66f1d5e2470d842534b867a5.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [200, 200]}
sorl-thumbnail||image||1b529bec98ca1ab1930e79dff7466105	{"name": "cache/69/4f/694f8d58db6af2d5b9c83d9918540537.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [225, 300]}
sorl-thumbnail||thumbnails||f7b2ee63fbdde44ee0adb5434e7f7ce4	["4b44e35a0a55dd9874221f6aa947ac62", "1b529bec98ca1ab1930e79dff7466105"]
sorl-thumbnail||image||9cb0d20ae14f4bb0356b64ee8af22296	{"name": "usuarios/fotos/download.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [226, 223]}
sorl-thumbnail||image||623493c3e40e5ca8f32233c931ac74ee	{"name": "cache/62/2a/622a07bf339364477e34857d6bcecdec.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [200, 200]}
sorl-thumbnail||image||7cf47abac911c114db1d044d66fbfa04	{"name": "cache/84/e8/84e89303a5b798413b3bc6d868c3efab.jpg", "storage": "django.core.files.storage.FileSystemStorage", "size": [225, 300]}
sorl-thumbnail||thumbnails||9cb0d20ae14f4bb0356b64ee8af22296	["623493c3e40e5ca8f32233c931ac74ee", "7cf47abac911c114db1d044d66fbfa04"]
\.


--
-- PostgreSQL database dump complete
--

