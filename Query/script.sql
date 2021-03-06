USE [inventario]
GO
/****** Object:  Table [dbo].[unidad]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[unidad](
	[codigo_unidad] [int] IDENTITY(1,1) NOT NULL,
	[nombre_unidad] [varchar](50) NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_unidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[unidad] ON
INSERT [dbo].[unidad] ([codigo_unidad], [nombre_unidad], [estado]) VALUES (1, N'Litro', 1)
INSERT [dbo].[unidad] ([codigo_unidad], [nombre_unidad], [estado]) VALUES (2, N'Libra', 1)
INSERT [dbo].[unidad] ([codigo_unidad], [nombre_unidad], [estado]) VALUES (4, N'Onza', 1)
INSERT [dbo].[unidad] ([codigo_unidad], [nombre_unidad], [estado]) VALUES (5, N'Quintal', 1)
INSERT [dbo].[unidad] ([codigo_unidad], [nombre_unidad], [estado]) VALUES (6, N'Sixpack', 1)
INSERT [dbo].[unidad] ([codigo_unidad], [nombre_unidad], [estado]) VALUES (7, N'Lote', 1)
INSERT [dbo].[unidad] ([codigo_unidad], [nombre_unidad], [estado]) VALUES (8, N'ssss', 0)
SET IDENTITY_INSERT [dbo].[unidad] OFF
/****** Object:  Table [dbo].[suplidor]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[suplidor](
	[codigo_suplidor] [int] IDENTITY(1,1) NOT NULL,
	[nombre_suplidor] [varchar](50) NULL,
	[sexo] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[telefono] [varchar](15) NULL,
	[estado] [bit] NULL,
	[fecha_de_nacimiento] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_suplidor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[suplidor] ON
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (1, N'Hewie Juszczyk', N'Femenino', N'hjuszczyk0@wix.com', N'(203)-731-7601', 1, CAST(0x26240B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (2, N'Fabian Fletham', N'Masculino', N'ffletham1@csmonitor.com', N'979-382-9889', 0, CAST(0x61400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (4, N'Savina Scolland', N'Femenino', N'sscolland3@opera.com', N'735-699-9588', 1, CAST(0xC1400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (5, N'Elsie Elcott', N'Femenino', N'eelcott4@upenn.edu', N'379-116-6463', 1, CAST(0x903F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (6, N'Chloris Cremin', N'Femenino', N'ccremin5@who.int', N'158-203-1028', 1, CAST(0x57400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (7, N'Marita Pullar', N'Femenino', N'mpullar6@godaddy.com', N'996-520-5384', 1, CAST(0xCA3F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (8, N'Janie Sinclaire', N'Femenino', N'jsinclaire7@ted.com', N'828-501-7793', 1, CAST(0x783F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (9, N'Cyrille Farlambe', N'Masculino', N'cfarlambe8@vimeo.com', N'134-484-5059', 0, CAST(0x3F400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (10, N'Tawnya Tesauro', N'Femenino', N'ttesauro9@slashdot.org', N'802-326-7028', 1, CAST(0x5A400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (11, N'Alida Bains', N'Femenino', N'abainsa@gmpg.org', N'671-342-6695', 0, CAST(0xB4400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (12, N'Grissel Garrud', N'Femenino', N'ggarrudb@wikia.com', N'414-935-6074', 1, CAST(0xB53F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (13, N'Seamus Majury', N'Masculino', N'smajuryc@example.com', N'177-124-8678', 0, CAST(0xBD400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (14, N'Alisun Sekulla', N'Femenino', N'asekullad@netscape.com', N'366-253-3759', 1, CAST(0x05400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (15, N'Barbie Broxton', N'Femenino', N'bbroxtone@spiegel.de', N'244-149-3296', 0, CAST(0xCE3F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (16, N'Alyson Craigheid', N'Femenino', N'acraigheidf@skyrock.com', N'983-695-3591', 1, CAST(0x8C400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (17, N'Sarine Doughtery', N'Femenino', N'sdoughteryg@reference.com', N'214-730-2318', 1, CAST(0x07400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (18, N'Richmond McKnish', N'Masculino', N'rmcknishh@blogger.com', N'615-100-5638', 0, CAST(0x71400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (19, N'Jocko Toe', N'Masculino', N'jtoei@psu.edu', N'887-230-1648', 1, CAST(0x06400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (20, N'Cassandry Jacobi', N'Femenino', N'cjacobij@list-manage.com', N'918-463-5653', 1, CAST(0x1C400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (21, N'Ralina Rowlinson', N'Femenino', N'rrowlinsonk@dell.com', N'463-651-8615', 1, CAST(0x71400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (22, N'Salvidor Nowell', N'Masculino', N'snowelll@cnet.com', N'564-881-4704', 0, CAST(0x8B3F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (23, N'Hillel Stranio', N'Masculino', N'hstraniom@home.pl', N'558-430-9748', 0, CAST(0xE83F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (24, N'Dorisa Quayle', N'Femenino', N'dquaylen@gov.uk', N'902-429-8894', 1, CAST(0x8F400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (25, N'Merissa Lymbourne', N'Femenino', N'mlymbourneo@harvard.edu', N'252-803-4144', 1, CAST(0x0C400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (26, N'Joseph Pomeroy', N'Masculino', N'jpomeroyp@miitbeian.gov.cn', N'691-160-8704', 1, CAST(0xEB3F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (27, N'Rosabella Agerskow', N'Femenino', N'ragerskowq@netlog.com', N'147-110-8609', 1, CAST(0x7A3F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (28, N'Cosme Leafe', N'Masculino', N'cleafer@tinypic.com', N'716-693-7681', 0, CAST(0x33400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (29, N'Lari Scholefield', N'Femenino', N'lscholefields@mapy.cz', N'571-383-3290', 1, CAST(0x18400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (30, N'Tandi O''Dooghaine', N'Femenino', N'todooghainet@washingtonpost.com', N'329-116-8980', 0, CAST(0x8A400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (31, N'Ursa Gemmill', N'Femenino', N'ugemmillu@de.vu', N'199-856-9283', 1, CAST(0xD5400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (32, N'Hewe Silburn', N'Masculino', N'hsilburnv@biglobe.ne.jp', N'809-981-3844', 1, CAST(0x10400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (33, N'Jean Cuniam', N'Masculino', N'jcuniamw@bigcartel.com', N'400-535-6458', 1, CAST(0x80400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (34, N'Meier Postlewhite', N'Masculino', N'mpostlewhitex@craigslist.org', N'215-951-1088', 1, CAST(0xB13F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (35, N'Kory O'' Scallan', N'Masculino', N'koy@dmoz.org', N'554-858-2594', 0, CAST(0xBA400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (36, N'Jonah Pimblott', N'Masculino', N'jpimblottz@1und1.de', N'474-152-7874', 0, CAST(0xA5400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (37, N'Alessandro Creasy', N'Masculino', N'acreasy10@bandcamp.com', N'966-556-0130', 1, CAST(0x28400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (38, N'Kaine Banaszkiewicz', N'Masculino', N'kbanaszkiewicz11@senate.gov', N'410-412-9839', 1, CAST(0xF03F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (39, N'Myrilla Spadaro', N'Femenino', N'mspadaro12@cbsnews.com', N'460-433-9818', 1, CAST(0x6C400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (40, N'York Jacob', N'Masculino', N'yjacob13@naver.com', N'432-325-2565', 0, CAST(0xB5400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (41, N'Seamus Grindley', N'Masculino', N'sgrindley14@infoseek.co.jp', N'959-956-4282', 0, CAST(0x94400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (42, N'Evered Heatlie', N'Masculino', N'eheatlie15@hugedomains.com', N'958-711-1871', 1, CAST(0x22400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (43, N'Huey Tillett', N'Masculino', N'htillett16@cnet.com', N'758-987-0252', 0, CAST(0xEA3F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (44, N'Richart Collihole', N'Masculino', N'rcollihole17@miitbeian.gov.cn', N'486-399-4380', 0, CAST(0x52400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (45, N'Ashleigh Fine', N'Femenino', N'afine18@chronoengine.com', N'538-411-0916', 1, CAST(0xF03F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (46, N'Alexio Baumaier', N'Masculino', N'abaumaier19@mapy.cz', N'913-820-7743', 0, CAST(0x2A400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (47, N'Sibyl Frankcombe', N'Femenino', N'sfrankcombe1a@elpais.com', N'470-138-2842', 1, CAST(0x783F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (48, N'Ginger Wandrach', N'Femenino', N'gwandrach1b@wiley.com', N'276-771-0446', 0, CAST(0xC43F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (49, N'Giffy Hulls', N'Masculino', N'ghulls1c@deviantart.com', N'554-362-8669', 0, CAST(0xD0400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (50, N'Cammi Bruyntjes', N'Femenino', N'cbruyntjes1d@nih.gov', N'435-973-1858', 0, CAST(0xAE3F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (51, N'Hunter Trebbett', N'Masculino', N'htrebbett1e@paypal.com', N'648-773-3237', 1, CAST(0x19400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (52, N'Emlen McLaggan', N'Masculino', N'emclaggan1f@sina.com.cn', N'157-326-3848', 0, CAST(0xC23F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (53, N'Boone Gatenby', N'Masculino', N'bgatenby1g@amazonaws.com', N'144-101-3758', 1, CAST(0x8E400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (54, N'Caldwell Renowden', N'Masculino', N'crenowden1h@epa.gov', N'764-362-9922', 0, CAST(0x13400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (55, N'Catarina Wakenshaw', N'Femenino', N'cwakenshaw1i@arizona.edu', N'727-887-2668', 0, CAST(0xD83F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (56, N'Dorthea Cassely', N'Femenino', N'dcassely1j@reddit.com', N'981-330-4681', 0, CAST(0x1C400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (57, N'Lara Pinchbeck', N'Femenino', N'lpinchbeck1k@foxnews.com', N'275-487-6798', 0, CAST(0x8C3F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (58, N'Murielle Melbert', N'Femenino', N'mmelbert1l@merriam-webster.com', N'771-929-3332', 0, CAST(0x8E3F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (59, N'Lou Huxham', N'Masculino', N'lhuxham1m@google.com.br', N'324-744-6082', 0, CAST(0x983F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (60, N'Ransell Kingsman', N'Masculino', N'rkingsman1n@networkadvertising.org', N'820-294-5114', 0, CAST(0x93400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (61, N'Stephenie Loverock', N'Femenino', N'sloverock1o@sitemeter.com', N'343-917-0591', 1, CAST(0xCF400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (62, N'Lois Elmar', N'Femenino', N'lelmar1p@tumblr.com', N'228-194-2836', 1, CAST(0xD6400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (63, N'Evy Paulon', N'Femenino', N'epaulon1q@constantcontact.com', N'897-248-3558', 0, CAST(0x21400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (64, N'Prentice Knuckles', N'Masculino', N'pknuckles1r@themeforest.net', N'511-321-4382', 0, CAST(0xAC400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (65, N'Anni Allicock', N'Femenino', N'aallicock1s@flickr.com', N'929-113-5331', 1, CAST(0xEF3F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (66, N'Juana Embleton', N'Femenino', N'jembleton1t@yahoo.co.jp', N'287-784-1816', 0, CAST(0xC7400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (67, N'Madison Jameson', N'Masculino', N'mjameson1u@flavors.me', N'477-979-3362', 1, CAST(0x9B400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (68, N'Margaretta Dayce', N'Femenino', N'mdayce1v@freewebs.com', N'867-762-3545', 0, CAST(0xA1400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (69, N'Spence Slinger', N'Masculino', N'sslinger1w@prweb.com', N'454-153-2431', 1, CAST(0xDA400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (70, N'Abrahan Reisenstein', N'Masculino', N'areisenstein1x@slate.com', N'719-914-5028', 1, CAST(0xDB3F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (71, N'Lindsey Stuke', N'Femenino', N'lstuke1y@bloglines.com', N'512-677-4667', 1, CAST(0x6B400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (72, N'Nigel Mullenger', N'Masculino', N'nmullenger1z@elpais.com', N'684-462-6898', 1, CAST(0xC93F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (73, N'Vladamir Mellody', N'Masculino', N'vmellody20@mediafire.com', N'484-284-3360', 0, CAST(0xDD400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (74, N'Kelsey Severn', N'Masculino', N'ksevern21@miitbeian.gov.cn', N'341-786-3065', 1, CAST(0xC7400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (75, N'Prinz Duckitt', N'Masculino', N'pduckitt22@deviantart.com', N'665-469-1932', 0, CAST(0x6D400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (76, N'Miquela Gonthard', N'Femenino', N'mgonthard23@ocn.ne.jp', N'600-826-8243', 0, CAST(0x5B400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (77, N'Gabbey Tinwell', N'Femenino', N'gtinwell24@youtu.be', N'292-423-6508', 0, CAST(0xC8400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (78, N'Lambert Grainger', N'Masculino', N'lgrainger25@bbc.co.uk', N'893-609-4237', 1, CAST(0x2F400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (79, N'Corabella Riordan', N'Femenino', N'criordan26@cisco.com', N'377-865-3753', 0, CAST(0xB83F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (80, N'Vasili Jeness', N'Masculino', N'vjeness27@wsj.com', N'751-724-1800', 0, CAST(0x863F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (81, N'Normand Joyes', N'Masculino', N'njoyes28@odnoklassniki.ru', N'277-706-1995', 0, CAST(0xE33F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (82, N'Emlynn Furphy', N'Femenino', N'efurphy29@pinterest.com', N'931-713-3540', 0, CAST(0x1A400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (83, N'Catharine Gavrielly', N'Femenino', N'cgavrielly2a@ning.com', N'671-253-1709', 1, CAST(0xCF3F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (84, N'Dilan Kalvin', N'Masculino', N'dkalvin2b@salon.com', N'460-508-4052', 0, CAST(0xEA3F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (85, N'Fernande Sousa', N'Femenino', N'fsousa2c@51.la', N'436-126-5407', 0, CAST(0x20400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (86, N'Erna Dowbakin', N'Femenino', N'edowbakin2d@tmall.com', N'500-978-4050', 0, CAST(0xAE400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (87, N'Inessa Davidi', N'Femenino', N'idavidi2e@skype.com', N'407-167-8065', 1, CAST(0xE13F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (88, N'Rubi Sheriff', N'Femenino', N'rsheriff2f@wordpress.org', N'240-967-0940', 1, CAST(0x893F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (89, N'Alfreda Leschelle', N'Femenino', N'aleschelle2g@dropbox.com', N'563-271-2753', 0, CAST(0xDF400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (90, N'Aurel Cleverley', N'Femenino', N'acleverley2h@indiatimes.com', N'692-909-1885', 1, CAST(0x85400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (91, N'Cyndy Pavlishchev', N'Femenino', N'cpavlishchev2i@soup.io', N'590-256-8795', 1, CAST(0x74400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (92, N'Van Shower', N'Masculino', N'vshower2j@about.me', N'375-815-4292', 0, CAST(0x42400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (93, N'Buddy Fraschini', N'Masculino', N'bfraschini2k@issuu.com', N'846-190-5741', 1, CAST(0xE53F0B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (94, N'Jud Dulton', N'Masculino', N'jdulton2l@goo.gl', N'234-758-5984', 1, CAST(0x67400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (95, N'Colby St. Ledger', N'Masculino', N'cst2m@google.co.uk', N'904-211-2769', 0, CAST(0x48400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (96, N'Jessamyn Gronow', N'Femenino', N'jgronow2n@va.gov', N'554-496-6002', 0, CAST(0x0B400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (97, N'Abelard Bispham', N'Masculino', N'abispham2o@youku.com', N'627-733-8388', 1, CAST(0xC2400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (98, N'Amii Seaward', N'Femenino', N'aseaward2p@nymag.com', N'878-838-5234', 1, CAST(0x81400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (99, N'Jeffy Kenwrick', N'Masculino', N'jkenwrick2q@hubpages.com', N'695-816-8160', 1, CAST(0x0C400B00 AS Date))
INSERT [dbo].[suplidor] ([codigo_suplidor], [nombre_suplidor], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (100, N'Loralee Yakovl', N'Femenino', N'lyakovl2r@photobucket.com', N'896-734-2952', 1, CAST(0x52400B00 AS Date))
SET IDENTITY_INSERT [dbo].[suplidor] OFF
GO
print 'Processed 100 total records'
/****** Object:  Table [dbo].[cliente]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente](
	[codigo_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre_cliente] [varchar](50) NULL,
	[sexo] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[telefono] [varchar](15) NULL,
	[estado] [bit] NULL,
	[fecha_de_nacimiento] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cliente] ON
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (1, N'Jorge de Jesús', N'Masculino', N'jorge@gmail.com', N'(809)-752-0141', 0, CAST(0x62250B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (2, N'Lammond Shaves', N'Masculino', N'lshaves1@unc.edu', N'149-194-6012', 1, CAST(0x561B0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (6, N'Siegfried Powlesland', N'Masculino', N'spowlesland5@nytimes.com', N'795-502-5676', 1, CAST(0x6C0F0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (7, N'Tabby Zoppo', N'Femenino', N'tzoppo6@jimdo.com', N'309-904-8946', 1, CAST(0x0F240B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (8, N'Devon Kenyon', N'Femenino', N'dkenyon7@discuz.net', N'759-259-2968', 1, CAST(0xBC0B0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (9, N'Tiffany Stovin', N'Femenino', N'tstovin8@amazonaws.com', N'704-578-2806', 1, CAST(0x4E210B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (10, N'Wallace Abrashkov', N'Masculino', N'wabrashkov9@arstechnica.com', N'925-508-6110', 1, CAST(0x70200B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (11, N'Carrie Elland', N'Femenino', N'cellanda@tinyurl.com', N'983-136-7288', 0, CAST(0x450A0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (12, N'Daisy Stannard', N'Femenino', N'dstannardb@geocities.jp', N'432-330-8038', 1, CAST(0x47180B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (13, N'Randi Rosenbusch', N'Femenino', N'rrosenbuschc@skyrock.com', N'825-397-0216', 1, CAST(0x551A0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (14, N'Rollin Nolin', N'Masculino', N'rnolind@paginegialle.it', N'510-355-7069', 0, CAST(0x20210B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (15, N'Gabbi Pollard', N'Femenino', N'gpollarde@google.ru', N'456-303-4998', 1, CAST(0xFE230B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (16, N'Winn Gosford', N'Masculino', N'wgosfordf@irs.gov', N'255-440-4136', 0, CAST(0x371D0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (17, N'Wake Marnane', N'Masculino', N'wmarnaneg@google.ca', N'313-900-0625', 1, CAST(0xA0190B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (18, N'Rudolph Vipan', N'Masculino', N'rvipanh@netscape.com', N'463-759-0945', 1, CAST(0x48090B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (19, N'Lorelle Jiroutka', N'Femenino', N'ljiroutkai@miibeian.gov.cn', N'536-751-5048', 1, CAST(0xC6130B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (20, N'Levon Bonnick', N'Masculino', N'lbonnickj@google.cn', N'909-611-2003', 0, CAST(0x4D100B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (21, N'Gloriane Bilbery', N'Femenino', N'gbilberyk@posterous.com', N'347-869-8583', 1, CAST(0x5E0F0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (22, N'Chery Osler', N'Femenino', N'coslerl@washington.edu', N'218-756-2126', 0, CAST(0x730F0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (23, N'Pippy Riediger', N'Femenino', N'priedigerm@soup.io', N'852-854-4477', 1, CAST(0xF90A0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (24, N'Chrisy Louedey', N'Masculino', N'clouedeyn@meetup.com', N'709-931-7911', 1, CAST(0x2E0E0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (25, N'Mattie Oxenbury', N'Femenino', N'moxenburyo@360.cn', N'398-670-0248', 0, CAST(0x48100B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (26, N'Averell Hugnin', N'Masculino', N'ahugninp@so-net.ne.jp', N'382-202-4026', 0, CAST(0x0F170B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (27, N'Hayley Alberti', N'Femenino', N'halbertiq@oracle.com', N'218-692-3409', 0, CAST(0x9C0C0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (28, N'Sydney Lawranson', N'Masculino', N'slawransonr@vk.com', N'390-263-9660', 1, CAST(0xEE0E0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (29, N'Isidor Scopham', N'Masculino', N'iscophams@usnews.com', N'662-125-3856', 1, CAST(0xEA1C0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (30, N'Marketa Howson', N'Femenino', N'mhowsont@ebay.com', N'146-563-8307', 0, CAST(0x1D120B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (31, N'Gigi Ricketts', N'Femenino', N'grickettsu@oracle.com', N'627-866-4711', 1, CAST(0x5D220B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (32, N'Rhonda Clows', N'Femenino', N'rclowsv@free.fr', N'836-474-9184', 0, CAST(0xED150B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (33, N'Huey Gussie', N'Masculino', N'hgussiew@youku.com', N'966-932-8570', 1, CAST(0xF61A0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (34, N'Nathanael Ride', N'Masculino', N'nridex@trellian.com', N'423-974-3956', 0, CAST(0x50140B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (35, N'Frederigo Marie', N'Masculino', N'fmariey@yandex.ru', N'471-553-9196', 1, CAST(0x16160B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (36, N'Vince Merwe', N'Masculino', N'vmerwez@japanpost.jp', N'878-652-6499', 1, CAST(0x9E230B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (37, N'Kenneth Kenworthey', N'Masculino', N'kkenworthey10@statcounter.com', N'583-719-5386', 1, CAST(0xA5090B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (38, N'Ellis Shillum', N'Masculino', N'eshillum11@delicious.com', N'293-108-8559', 0, CAST(0xCB1B0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (39, N'Daren Petticrow', N'Masculino', N'dpetticrow12@yellowpages.com', N'220-501-9083', 1, CAST(0x7D0D0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (40, N'Verena Meus', N'Femenino', N'vmeus13@census.gov', N'419-127-6917', 0, CAST(0x1A090B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (41, N'Rozanne Rubbens', N'Femenino', N'rrubbens14@independent.co.uk', N'241-920-0908', 0, CAST(0xC40F0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (42, N'Jo Walaron', N'Femenino', N'jwalaron15@wikimedia.org', N'990-738-3375', 1, CAST(0xF91F0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (43, N'Elfie Maffioni', N'Femenino', N'emaffioni16@deviantart.com', N'526-236-6475', 1, CAST(0xC50F0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (44, N'Tabina Tulleth', N'Femenino', N'ttulleth17@unc.edu', N'780-300-4957', 0, CAST(0x6B080B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (45, N'Brandyn Heaviside', N'Masculino', N'bheaviside18@bloomberg.com', N'170-390-9905', 1, CAST(0xB7140B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (46, N'Gwendolen Knott', N'Femenino', N'gknott19@infoseek.co.jp', N'131-934-2426', 0, CAST(0x180A0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (47, N'Karoline Sanday', N'Femenino', N'ksanday1a@storify.com', N'236-356-8920', 1, CAST(0x78120B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (48, N'Tish Dimberline', N'Femenino', N'tdimberline1b@i2i.jp', N'692-724-1434', 1, CAST(0x33200B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (49, N'Agna Bunker', N'Femenino', N'abunker1c@narod.ru', N'739-467-4618', 0, CAST(0xAE0C0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (50, N'Etan Reay', N'Masculino', N'ereay1d@deviantart.com', N'485-959-7107', 1, CAST(0x47130B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (51, N'Arron Creavin', N'Masculino', N'acreavin1e@a8.net', N'914-693-4048', 1, CAST(0x32230B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (52, N'Orion Feragh', N'Masculino', N'oferagh1f@netscape.com', N'572-204-0830', 0, CAST(0xED180B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (53, N'Fabien Karleman', N'Masculino', N'fkarleman1g@yellowbook.com', N'473-699-1012', 0, CAST(0x000D0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (54, N'Padraic Redwall', N'Masculino', N'predwall1h@army.mil', N'109-696-5536', 0, CAST(0x550E0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (55, N'Bryn Forrest', N'Femenino', N'bforrest1i@wikipedia.org', N'499-890-3607', 0, CAST(0x3A110B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (56, N'Darby Gregine', N'Femenino', N'dgregine1j@squarespace.com', N'212-978-2076', 0, CAST(0x77220B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (57, N'Ronalda Reoch', N'Femenino', N'rreoch1k@buzzfeed.com', N'491-936-3008', 0, CAST(0x16220B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (58, N'Diahann Pattillo', N'Femenino', N'dpattillo1l@google.fr', N'996-805-6722', 1, CAST(0x7D210B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (59, N'Rock Lincke', N'Masculino', N'rlincke1m@intel.com', N'368-423-1644', 1, CAST(0x330F0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (60, N'Iormina Lepick', N'Femenino', N'ilepick1n@tiny.cc', N'115-954-2814', 1, CAST(0x88140B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (61, N'Dun O''Shields', N'Masculino', N'doshields1o@zdnet.com', N'440-498-2132', 1, CAST(0x3A180B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (62, N'Gothart Bernard', N'Masculino', N'gbernard1p@yolasite.com', N'756-544-4916', 1, CAST(0xE6220B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (63, N'Doloritas Covotto', N'Femenino', N'dcovotto1q@soundcloud.com', N'866-998-9229', 0, CAST(0x681A0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (64, N'Cecily Chainey', N'Femenino', N'cchainey1r@tinypic.com', N'111-915-8791', 0, CAST(0xFE220B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (65, N'Garfield Ramshaw', N'Masculino', N'gramshaw1s@walmart.com', N'906-103-8456', 1, CAST(0x510B0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (66, N'Lilia Ree', N'Femenino', N'lree1t@ovh.net', N'645-818-8671', 0, CAST(0xA6080B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (67, N'Aggi Boner', N'Femenino', N'aboner1u@mediafire.com', N'790-784-1271', 1, CAST(0x9C230B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (68, N'Levi Kitcatt', N'Masculino', N'lkitcatt1v@sitemeter.com', N'836-482-9701', 0, CAST(0x271D0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (69, N'Mario Hartigan', N'Masculino', N'mhartigan1w@lulu.com', N'258-176-8983', 1, CAST(0xA9080B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (70, N'Rici Beebis', N'Femenino', N'rbeebis1x@nih.gov', N'788-387-6011', 0, CAST(0x520C0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (71, N'Umberto Chamberlaine', N'Masculino', N'uchamberlaine1y@zdnet.com', N'309-909-0663', 1, CAST(0x011A0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (72, N'Ronda Coyte', N'Femenino', N'rcoyte1z@indiatimes.com', N'125-458-6985', 0, CAST(0x6A110B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (73, N'Isahella Buckner', N'Femenino', N'ibuckner20@wikimedia.org', N'657-297-2325', 1, CAST(0xA11D0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (74, N'Danit Jan', N'Femenino', N'djan21@utexas.edu', N'171-751-7578', 0, CAST(0xE2100B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (75, N'Rasia Reavell', N'Femenino', N'rreavell22@nps.gov', N'990-633-6927', 0, CAST(0x62120B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (76, N'Bengt Ciccotto', N'Masculino', N'bciccotto23@dailymail.co.uk', N'552-437-2833', 0, CAST(0xD5170B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (77, N'Bertrand Phair', N'Masculino', N'bphair24@nymag.com', N'880-608-1146', 0, CAST(0x8C140B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (78, N'Reuven Hylton', N'Masculino', N'rhylton25@is.gd', N'141-198-6292', 0, CAST(0xC2140B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (79, N'Fleming Fellos', N'Masculino', N'ffellos26@gravatar.com', N'308-499-4509', 1, CAST(0x590B0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (80, N'Jeddy Hurton', N'Masculino', N'jhurton27@ebay.co.uk', N'157-843-4490', 1, CAST(0x70110B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (81, N'Henrie Pottle', N'Femenino', N'hpottle28@webnode.com', N'575-179-7993', 1, CAST(0xB6170B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (82, N'Rab Seekings', N'Masculino', N'rseekings29@ucsd.edu', N'838-391-6864', 1, CAST(0x0D100B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (83, N'Althea Wager', N'Femenino', N'awager2a@google.co.jp', N'309-263-6178', 0, CAST(0x12150B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (84, N'Morganica Iacovaccio', N'Femenino', N'miacovaccio2b@eventbrite.com', N'361-134-6609', 1, CAST(0x32220B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (85, N'Benny Moriarty', N'Masculino', N'bmoriarty2c@seesaa.net', N'281-432-0943', 0, CAST(0x5B0E0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (86, N'Kellen Danilchik', N'Masculino', N'kdanilchik2d@godaddy.com', N'674-249-6199', 1, CAST(0x83080B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (87, N'Pembroke Say', N'Masculino', N'psay2e@4shared.com', N'433-657-7644', 1, CAST(0xEF170B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (88, N'Giulio O''Codihie', N'Masculino', N'gocodihie2f@skyrock.com', N'324-402-6781', 1, CAST(0x2A0F0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (89, N'Jasun Sammut', N'Masculino', N'jsammut2g@sohu.com', N'678-933-6106', 0, CAST(0x091F0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (90, N'Olga Christauffour', N'Femenino', N'ochristauffour2h@indiegogo.com', N'277-437-2365', 1, CAST(0x5B180B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (91, N'Welsh Bolin', N'Masculino', N'wbolin2i@google.com.hk', N'385-822-9484', 1, CAST(0xEA180B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (92, N'Silvanus Le Franc', N'Masculino', N'sle2j@washington.edu', N'374-646-2700', 0, CAST(0x191A0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (93, N'Darill Tewnion', N'Masculino', N'dtewnion2k@seattletimes.com', N'722-580-7581', 1, CAST(0x641F0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (94, N'Caro Ornells', N'Femenino', N'cornells2l@wikipedia.org', N'656-107-7950', 0, CAST(0x89180B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (95, N'Filippo Cadle', N'Masculino', N'fcadle2m@seattletimes.com', N'675-384-5096', 1, CAST(0x1E1D0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (96, N'Blake Edgars', N'Masculino', N'bedgars2n@mtv.com', N'250-534-6564', 0, CAST(0x690E0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (97, N'Prisca Vibert', N'Femenino', N'pvibert2o@rakuten.co.jp', N'691-350-1060', 0, CAST(0x47110B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (98, N'Loleta Kremer', N'Femenino', N'lkremer2p@t.co', N'665-934-2854', 1, CAST(0x091C0B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (99, N'Stearn Attrey', N'Masculino', N'sattrey2q@devhub.com', N'831-772-5215', 0, CAST(0xD6090B00 AS Date))
INSERT [dbo].[cliente] ([codigo_cliente], [nombre_cliente], [sexo], [email], [telefono], [estado], [fecha_de_nacimiento]) VALUES (100, N'Scott Showell', N'Masculino', N'sshowell2r@statcounter.com', N'722-394-5323', 1, CAST(0x7A210B00 AS Date))
SET IDENTITY_INSERT [dbo].[cliente] OFF
/****** Object:  Table [dbo].[usuarios]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuarios](
	[codigo_usuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre_usuario] [varchar](50) NULL,
	[contrasena] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[usuarios] ON
INSERT [dbo].[usuarios] ([codigo_usuario], [nombre_usuario], [contrasena]) VALUES (1, N'Jorge de Jesús', N'welc0me19')
SET IDENTITY_INSERT [dbo].[usuarios] OFF
/****** Object:  Table [dbo].[departamento]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[departamento](
	[codigo_departamento] [int] IDENTITY(1,1) NOT NULL,
	[nombre_departamento] [varchar](50) NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_departamento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[departamento] ON
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (2, N'Beauty', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (3, N'MM', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (4, N'Automotive', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (5, N'Shoes', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (6, N'Automotive', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (7, N'Automotive', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (8, N'Kids', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (9, N'Beauty', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (10, N'Sports', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (11, N'Industrial', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (12, N'Baby', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (13, N'Sports', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (14, N'Grocery', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (15, N'Movies', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (16, N'Clothing', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (17, N'Movies', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (18, N'Home', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (19, N'Shoes', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (20, N'Automotive', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (21, N'Jewelery', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (22, N'Electronics', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (23, N'Outdoors', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (24, N'Books', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (25, N'Games', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (26, N'Grocery', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (27, N'Beauty', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (28, N'Baby', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (29, N'Computers', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (30, N'Games', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (31, N'Home', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (32, N'Toys', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (33, N'Home', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (34, N'Books', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (35, N'Computers', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (36, N'Garden', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (37, N'Industrial', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (38, N'Toys', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (39, N'Automotive', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (40, N'Books', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (41, N'Automotive', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (42, N'Music', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (43, N'Garden', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (44, N'Beauty', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (45, N'Shoes', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (46, N'Shoes', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (47, N'Jewelery', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (48, N'Outdoors', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (49, N'Games', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (50, N'Electronics', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (51, N'Industrial', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (52, N'Tools', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (53, N'Movies', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (54, N'Automotive', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (55, N'Outdoors', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (56, N'Toys', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (57, N'Books', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (58, N'Industrial', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (59, N'Grocery', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (60, N'Kids', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (61, N'Music', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (62, N'Music', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (63, N'Automotive', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (64, N'Electronics', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (65, N'Clothing', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (66, N'Sports', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (67, N'Outdoors', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (68, N'Home', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (69, N'Electronics', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (70, N'Industrial', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (71, N'Home', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (72, N'Games', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (73, N'Games', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (74, N'Tools', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (75, N'Grocery', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (76, N'Tools', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (77, N'Music', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (78, N'Tools', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (79, N'Electronics', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (80, N'Outdoors', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (81, N'Automotive', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (82, N'Computers', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (83, N'Toys', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (84, N'Outdoors', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (85, N'Books', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (86, N'Jewelery', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (87, N'Health', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (88, N'Sports', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (89, N'Jewelery', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (90, N'Sports', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (91, N'Shoes', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (92, N'Computers', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (93, N'Music', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (94, N'Games', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (95, N'Jewelery', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (96, N'Industrial', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (97, N'Grocery', 1)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (98, N'Kids', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (99, N'Grocery', 0)
INSERT [dbo].[departamento] ([codigo_departamento], [nombre_departamento], [estado]) VALUES (100, N'Sports', 1)
SET IDENTITY_INSERT [dbo].[departamento] OFF
GO
print 'Processed 100 total records'
/****** Object:  StoredProcedure [dbo].[upsertUnidad]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upsertUnidad]
   @codigo_unidad int,
   @nombre_unidad varchar(50),
   @estado bit
AS
	SET IDENTITY_INSERT unidad ON
    IF NOT EXISTS (SELECT codigo_unidad FROM unidad WHERE codigo_unidad = @codigo_unidad)
        INSERT INTO unidad (codigo_unidad, nombre_unidad, estado) VALUES (@codigo_unidad, @nombre_unidad, @estado)
    ELSE 
        UPDATE unidad SET nombre_unidad = @nombre_unidad, estado = @estado WHERE codigo_unidad = @codigo_unidad
GO
/****** Object:  StoredProcedure [dbo].[upsertSuplidor]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upsertSuplidor]
    @codigo_suplidor int, 
    @nombre_suplidor varchar(50), 
    @sexo varchar(50), 
    @email varchar(50), 
    @telefono varchar(50), 
    @estado bit,
    @fecha_de_nacimiento date
AS
	SET IDENTITY_INSERT suplidor ON
    IF NOT EXISTS (SELECT codigo_suplidor FROM suplidor WHERE codigo_suplidor = @codigo_suplidor)
        INSERT INTO suplidor (codigo_suplidor, nombre_suplidor,sexo, email, telefono, estado, fecha_de_nacimiento) VALUES (@codigo_suplidor, @nombre_suplidor,@sexo, @email, @telefono, @estado, @fecha_de_nacimiento)
    ELSE 
        UPDATE suplidor SET nombre_suplidor = @nombre_suplidor, sexo = @sexo, email = @email, telefono = @telefono, estado = @estado, fecha_de_nacimiento = @fecha_de_nacimiento WHERE codigo_suplidor =  @codigo_suplidor
GO
/****** Object:  StoredProcedure [dbo].[eliminarDepartamento]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eliminarDepartamento]
   @codigo_departamento int
AS
    IF EXISTS (SELECT codigo_departamento FROM departamento WHERE codigo_departamento = @codigo_departamento)
        DELETE FROM departamento WHERE codigo_departamento= @codigo_departamento
GO
/****** Object:  StoredProcedure [dbo].[eliminarCliente]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eliminarCliente]
   @codigo_cliente int
AS
    IF EXISTS (SELECT codigo_cliente FROM cliente WHERE codigo_cliente = @codigo_cliente)
        DELETE FROM cliente WHERE codigo_cliente = @codigo_cliente
GO
/****** Object:  Table [dbo].[venta]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[numero_factura] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NULL,
	[codigo_cliente] [int] NOT NULL,
	[estado] [bit] NULL,
	[total] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[numero_factura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[venta] ON
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (11, CAST(0xE9400B00 AS Date), 2, 1, 500)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (12, CAST(0xEE400B00 AS Date), 1, 1, 148)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (13, CAST(0xEE400B00 AS Date), 1, 1, 168)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (14, CAST(0xEF400B00 AS Date), 1, 1, 40)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (15, CAST(0xEF400B00 AS Date), 1, 1, 40)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (16, CAST(0xEF400B00 AS Date), 1, 1, 40)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (17, CAST(0xEF400B00 AS Date), 1, 1, 40)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (18, CAST(0xEF400B00 AS Date), 1, 1, 40)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (19, CAST(0xEF400B00 AS Date), 2, 1, 64)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (20, CAST(0xEF400B00 AS Date), 1, 1, 274)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (21, CAST(0xEF400B00 AS Date), 1, 1, 40)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (22, CAST(0xF2400B00 AS Date), 1, 1, 64)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (23, CAST(0xF2400B00 AS Date), 6, 1, 83)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (24, CAST(0xF2400B00 AS Date), 7, 1, 160)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (25, CAST(0xF2400B00 AS Date), 9, 1, 37)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (26, CAST(0xF6400B00 AS Date), 1, 1, 40)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (27, CAST(0xF6400B00 AS Date), 1, 1, 40)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (28, CAST(0xF6400B00 AS Date), 2, 1, 64)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (29, CAST(0xF6400B00 AS Date), 2, 1, 128)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (30, CAST(0xF6400B00 AS Date), 31, 1, 64)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (31, CAST(0xF6400B00 AS Date), 1, 1, 83)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (32, CAST(0xF6400B00 AS Date), 31, 1, 192)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (33, CAST(0xF6400B00 AS Date), 1, 1, 40)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (34, CAST(0xF6400B00 AS Date), 42, 1, 40)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (35, CAST(0xF6400B00 AS Date), 1, 1, 96)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (36, CAST(0xF7400B00 AS Date), 2, 1, 111)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (37, CAST(0xF7400B00 AS Date), 1, 1, 50)
INSERT [dbo].[venta] ([numero_factura], [fecha], [codigo_cliente], [estado], [total]) VALUES (38, CAST(0xF7400B00 AS Date), 2, 1, 29)
SET IDENTITY_INSERT [dbo].[venta] OFF
/****** Object:  StoredProcedure [dbo].[upsertDepartamento]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upsertDepartamento]
   @codigo_departamento int,
   @nombre_departamento varchar(50),
   @estado bit
AS
	SET IDENTITY_INSERT departamento ON
    IF NOT EXISTS (SELECT codigo_departamento FROM departamento WHERE codigo_departamento = @codigo_departamento)
        INSERT INTO departamento (codigo_departamento, nombre_departamento , estado) VALUES (@codigo_departamento, @nombre_departamento , @estado)
    ELSE 
        UPDATE departamento SET nombre_departamento = @nombre_departamento, estado = @estado WHERE codigo_departamento =  @codigo_departamento
GO
/****** Object:  StoredProcedure [dbo].[upsertCliente]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upsertCliente]
    @codigo_cliente int,
    @nombre_cliente varchar(50),
    @sexo varchar(50),
    @email varchar(50),
    @telefono varchar(50),
    @estado bit,
    @fecha_de_nacimiento date
AS
	SET IDENTITY_INSERT cliente ON
    IF NOT EXISTS (SELECT codigo_cliente FROM cliente WHERE codigo_cliente = @codigo_cliente)
        INSERT INTO cliente (codigo_cliente, nombre_cliente,sexo, email, telefono, estado, fecha_de_nacimiento) VALUES (@codigo_cliente, @nombre_cliente, @sexo, @email, @telefono, @estado, @fecha_de_nacimiento)
    ELSE 
        UPDATE cliente SET nombre_cliente =  @nombre_cliente, sexo = @sexo, email =  @email, telefono =  @telefono, estado =  @estado, fecha_de_nacimiento = @fecha_de_nacimiento WHERE codigo_cliente =  @codigo_cliente
    SELECT @codigo_cliente AS codigo_cliente
GO
/****** Object:  StoredProcedure [dbo].[activarUnidad]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[activarUnidad]
   @codigo_unidad int
AS
    IF EXISTS (SELECT codigo_unidad FROM unidad WHERE codigo_unidad  = @codigo_unidad )
        UPDATE unidad  SET estado = 1 WHERE codigo_unidad  =  @codigo_unidad
GO
/****** Object:  StoredProcedure [dbo].[activarSuplidor]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[activarSuplidor]
   @codigo_suplidor int
AS
    IF EXISTS (SELECT codigo_suplidor FROM suplidor WHERE codigo_suplidor = @codigo_suplidor)
        UPDATE suplidor SET estado = 1 WHERE codigo_suplidor =  @codigo_suplidor
GO
/****** Object:  StoredProcedure [dbo].[consultarDepartamento]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[consultarDepartamento]
@codigo_departamento int
AS
  SELECT * FROM departamento WHERE codigo_departamento = @codigo_departamento;
GO
/****** Object:  StoredProcedure [dbo].[consultarCliente]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[consultarCliente]
@codigo_cliente int
AS
  SELECT * FROM cliente WHERE codigo_cliente = @codigo_cliente;
GO
/****** Object:  StoredProcedure [dbo].[activarDepartamento]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[activarDepartamento]
   @codigo_departamento int
AS
    IF EXISTS (SELECT codigo_departamento FROM departamento WHERE codigo_departamento = @codigo_departamento)
        UPDATE departamento SET estado = 1 WHERE codigo_departamento =  @codigo_departamento
GO
/****** Object:  StoredProcedure [dbo].[activarCliente]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[activarCliente]
   @codigo_cliente int
AS
    IF EXISTS (SELECT codigo_cliente FROM cliente WHERE codigo_cliente = @codigo_cliente )
        UPDATE cliente SET estado = 1 WHERE codigo_cliente =  @codigo_cliente
GO
/****** Object:  StoredProcedure [dbo].[consultarUsuario]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[consultarUsuario]
@contrasena varchar(50),
@nombre_usuario varchar(50)
AS
  SELECT * FROM usuarios WHERE nombre_usuario = @nombre_usuario AND contrasena = @contrasena;
GO
/****** Object:  StoredProcedure [dbo].[consultarUnidad]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[consultarUnidad]
@codigo_unidad int
AS
  SELECT * FROM unidad WHERE codigo_unidad = @codigo_unidad;
GO
/****** Object:  StoredProcedure [dbo].[consultarSuplidor]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[consultarSuplidor]
@codigo_suplidor int
AS
  SELECT * FROM suplidor WHERE codigo_suplidor = @codigo_suplidor;
GO
/****** Object:  Table [dbo].[producto]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[producto](
	[codigo_producto] [int] IDENTITY(1,1) NOT NULL,
	[nombre_producto] [varchar](50) NULL,
	[codigo_departamento] [int] NOT NULL,
	[codigo_suplidor] [int] NOT NULL,
	[cantidad_existente] [real] NULL,
	[punto_reo] [real] NULL,
	[codigo_unidad] [int] NOT NULL,
	[estado] [bit] NULL,
	[precio_de_venta] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_producto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[producto] ON
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (1, N'Sauce - Soy Low Sodium - 3.87l', 18, 32, 26, 20, 2, 1, 50)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (3, N'Caviar - Salmon', 23, 44, 63, 20, 1, 0, 53)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (7, N'Veal - Striploin', 22, 2, 40, 20, 1, 0, 58)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (13, N'Wine - Red, Antinori Santa', 25, 33, 68, 20, 4, 0, 60)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (14, N'Muffin Mix - Morning Glory', 6, 10, 32, 20, 6, 0, 59)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (15, N'Flax Seed', 12, 17, 70, 20, 6, 0, 51)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (16, N'Kiwano', 11, 2, 74, 20, 1, 0, 59)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (18, N'Soup - Campbells, Beef Barley', 28, 20, 92, 20, 6, 0, 55)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (19, N'Alize Red Passion', 9, 45, 44, 20, 1, 0, 55)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (22, N'Flour - Strong', 29, 11, 91, 20, 1, 0, 59)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (24, N'Zucchini - Green', 25, 45, 64, 20, 2, 1, 57)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (27, N'Pasta - Linguini, Dry', 3, 47, 71, 20, 5, 0, 54)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (28, N'Cranberries - Dry', 25, 49, 33, 20, 1, 1, 59)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (30, N'Wasabi Powder', 3, 5, 41, 20, 5, 0, 60)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (31, N'Tortillas - Flour, 10', 49, 18, 3, 20, 4, 1, 51)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (32, N'Macaroons - Two Bite Choc', 7, 13, 32, 20, 1, 0, 52)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (33, N'Cheese - La Sauvagine', 24, 2, 48, 20, 1, 0, 52)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (34, N'Pasta - Fettuccine, Egg, Fresh', 40, 40, 17, 20, 4, 0, 50)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (35, N'Sobe - Orange Carrot', 48, 37, 85, 20, 2, 0, 52)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (36, N'Beans - Black Bean, Preserved', 26, 13, 7, 20, 1, 0, 56)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (39, N'Mini - Vol Au Vents', 49, 8, 65, 20, 1, 1, 52)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (40, N'Milk Powder', 10, 67, 26, 18, 5, 1, 40)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (44, N'Cookies Almond Hazelnut', 53, 38, 20, 20, 4, 0, 93)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (112, N'Versatainer Nc - 888', 27, 19, 102, 20, 5, 1, 64)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (153, N'Mint - Fresh', 67, 95, 150, 20, 5, 1, 49)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (179, N'Wild Boar - Tenderloin', 78, 41, 177, 20, 1, 1, 83)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (191, N'Sauce - Thousand Island', 97, 82, 171, 20, 7, 1, 18)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (194, N'Turkey Tenderloin Frozen', 14, 35, 190, 20, 4, 1, 37)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (239, N'Ecolab - Solid Fusion', 97, 6, 237, 20, 5, 1, 80)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (246, N'Creamers - 10%', 20, 51, 243, 20, 6, 1, 96)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (268, N'Sage - Ground', 82, 89, 268, 20, 5, 1, 40)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (288, N'Pepper - White, Ground', 10, 56, 288, 20, 2, 0, 70)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (302, N'Capers - Ox Eye Daisy', 91, 5, 190, 20, 5, 0, 17)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (319, N'Spinach - Spinach Leaf', 67, 99, 319, 20, 7, 0, 59)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (328, N'Grapes - Red', 6, 60, 328, 20, 7, 1, 56)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (334, N'Soup Campbells Split Pea And Ham', 86, 94, 334, 20, 1, 0, 8)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (389, N'Pasta - Penne, Lisce, Dry', 71, 15, 389, 20, 5, 1, 84)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (427, N'Steampan - Half Size Shallow', 93, 55, 427, 20, 6, 0, 26)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (433, N'Orange - Blood', 52, 78, 433, 20, 6, 1, 64)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (465, N'Veal - Loin', 38, 69, 465, 20, 1, 1, 94)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (572, N'Octopus', 15, 14, 572, 20, 5, 1, 71)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (577, N'Pepper - Orange', 39, 65, 577, 20, 6, 1, 83)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (589, N'Broom And Brush Rack Black', 15, 46, 589, 20, 5, 1, 54)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (600, N'Oven Mitt - 13 Inch', 25, 12, 600, 20, 6, 1, 91)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (603, N'Tomatoes - Cherry', 40, 68, 603, 20, 5, 0, 91)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (619, N'Wine - Muscadet Sur Lie', 39, 95, 619, 20, 5, 1, 54)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (623, N'Shortbread - Cookie Crumbs', 11, 67, 623, 20, 5, 1, 30)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (631, N'Truffle - Whole Black Peeled', 12, 71, 631, 20, 4, 1, 21)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (678, N'Bandage - Fexible 1x3', 45, 14, 678, 20, 1, 1, 22)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (707, N'Gelatine Powder', 98, 91, 707, 20, 4, 0, 71)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (737, N'Pork - Sausage Casing', 92, 85, 737, 20, 5, 0, 7)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (771, N'Temperature Recording Station', 84, 15, 771, 20, 4, 1, 28)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (773, N'Soup Campbells Turkey Veg.', 21, 50, 773, 20, 2, 1, 50)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (789, N'Vinegar - Rice', 76, 14, 789, 20, 6, 1, 80)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (811, N'Pasta - Cannelloni, Sheets, Fresh', 42, 84, 811, 20, 2, 0, 30)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (812, N'Beets - Pickled', 37, 98, 812, 20, 2, 0, 9)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (827, N'Lid - Translucent, 3.5 And 6 Oz', 30, 6, 827, 20, 5, 0, 64)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (854, N'Chicken Breast Wing On', 53, 51, 854, 20, 5, 0, 91)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (872, N'Cheese - Brie Roitelet', 19, 40, 872, 20, 4, 1, 37)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (874, N'Rice - Wild', 59, 7, 873, 20, 7, 1, 29)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (877, N'Scampi Tail', 8, 94, 877, 20, 1, 1, 60)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (880, N'Jolt Cola', 22, 35, 880, 20, 7, 1, 20)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (882, N'Fudge - Chocolate Fudge', 90, 51, 882, 20, 4, 0, 92)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (892, N'Ice Cream - Chocolate', 6, 78, 892, 20, 6, 0, 2)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (894, N'Peas Snow', 28, 88, 894, 20, 1, 1, 21)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (916, N'Wine - White, Ej', 24, 60, 916, 20, 2, 1, 45)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (917, N'Pork Salted Bellies', 99, 39, 917, 20, 4, 0, 83)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (972, N'Beef - Kobe Striploin', 9, 92, 972, 20, 7, 0, 18)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (976, N'Beans - Kidney, Red Dry', 57, 46, 976, 20, 7, 0, 59)
INSERT [dbo].[producto] ([codigo_producto], [nombre_producto], [codigo_departamento], [codigo_suplidor], [cantidad_existente], [punto_reo], [codigo_unidad], [estado], [precio_de_venta]) VALUES (979, N'Silicone Parch. 16.3x24.3', 77, 34, 979, 20, 2, 1, 91)
SET IDENTITY_INSERT [dbo].[producto] OFF
/****** Object:  StoredProcedure [dbo].[eliminarUnidad]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eliminarUnidad]
   @codigo_unidad int
AS
    IF EXISTS (SELECT codigo_unidad FROM unidad WHERE codigo_unidad = @codigo_unidad)
        DELETE FROM unidad WHERE codigo_unidad = @codigo_unidad
GO
/****** Object:  StoredProcedure [dbo].[eliminarSuplidor]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eliminarSuplidor]
   @codigo_suplidor int
AS
    IF EXISTS (SELECT codigo_suplidor FROM suplidor WHERE codigo_suplidor = @codigo_suplidor)
        DELETE FROM suplidor WHERE codigo_suplidor = @codigo_suplidor
GO
/****** Object:  StoredProcedure [dbo].[eliminarProducto]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eliminarProducto]
   @codigo_producto int
AS
    IF EXISTS (SELECT codigo_producto FROM producto WHERE codigo_producto = @codigo_producto)
        DELETE FROM producto WHERE codigo_producto = @codigo_producto
GO
/****** Object:  StoredProcedure [dbo].[consultarProductoFull]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[consultarProductoFull]
@codigo_producto int 
AS
  IF @codigo_producto IS NULL
    SELECT  producto.codigo_producto,
      producto.nombre_producto,
      departamento.codigo_departamento,
      departamento.nombre_departamento,
      suplidor.nombre_suplidor,
      producto.cantidad_existente,
      unidad.nombre_unidad,
      producto.precio_de_venta
    FROM producto
    INNER JOIN departamento
      ON producto.codigo_departamento = departamento.codigo_departamento
    INNER JOIN suplidor
      ON producto.codigo_suplidor = suplidor.codigo_suplidor
    INNER JOIN unidad
      ON producto.codigo_unidad =  unidad.codigo_unidad
  ELSE
    SELECT  producto.codigo_producto,
      producto.nombre_producto,
      departamento.codigo_departamento,
      departamento.nombre_departamento,
      suplidor.nombre_suplidor,
      producto.cantidad_existente,
      unidad.nombre_unidad,
      producto.precio_de_venta
    FROM producto
    INNER JOIN departamento
      ON producto.codigo_departamento = departamento.codigo_departamento
    INNER JOIN suplidor
      ON producto.codigo_suplidor = suplidor.codigo_suplidor
    INNER JOIN unidad
      ON producto.codigo_unidad =  unidad.codigo_unidad
    WHERE producto.codigo_producto = @codigo_producto;
GO
/****** Object:  StoredProcedure [dbo].[consultarProducto]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[consultarProducto]
@codigo_producto int
AS
  SELECT * FROM producto WHERE codigo_producto = @codigo_producto;
GO
/****** Object:  StoredProcedure [dbo].[consultarForeingKeyProducto]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[consultarForeingKeyProducto]
@codigo_producto int
AS
  DECLARE @codigo_suplidor INT;
  DECLARE @codigo_departamento INT;
  DECLARE @codigo_unidad INT;
  SELECT @codigo_suplidor = codigo_suplidor, @codigo_departamento = codigo_departamento, @codigo_unidad = codigo_unidad 
  FROM producto WHERE codigo_producto = @codigo_producto;
  EXEC activarDepartamento @codigo_departamento;
  EXEC activarSuplidor @codigo_unidad;
  EXEC activarUnidad @codigo_unidad;
GO
/****** Object:  StoredProcedure [dbo].[activarProducto]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[activarProducto]
   @codigo_producto int
AS
    IF EXISTS (SELECT codigo_producto FROM producto WHERE codigo_producto = @codigo_producto)
        UPDATE producto SET estado = 1 WHERE codigo_producto =  @codigo_producto
GO
/****** Object:  StoredProcedure [dbo].[upsertVentas]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upsertVentas]
@codigo_cliente int, 
@total float
AS
  INSERT INTO venta(fecha, codigo_cliente, estado, total) VALUES (GETDATE(), @codigo_cliente, 1, @total )
  SELECT TOP 1 * FROM venta ORDER BY numero_factura DESC
GO
/****** Object:  Table [dbo].[detalles]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[detalles](
	[numero_factura] [int] NOT NULL,
	[cantidad_vendida] [real] NULL,
	[codigo_producto] [int] NOT NULL,
	[precio_de_venta] [real] NULL,
	[unidad_producto] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (11, 4, 44, 93, N'Onza')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (22, 1, 112, 64, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (23, 1, 179, 83, N'Litro')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (24, 2, 239, 80, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (11, 2, 112, 64, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (12, 1, 40, 40, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (25, 1, 194, 37, N'Onza')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (13, 1, 40, 40, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (13, 2, 112, 64, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (14, 1, 40, 40, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (15, 1, 40, 40, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (26, 1, 40, 40, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (27, 1, 40, 40, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (28, 1, 112, 64, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (29, 2, 112, 64, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (30, 1, 112, 64, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (31, 1, 179, 83, N'Litro')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (32, 2, 246, 96, N'Sixpack')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (36, 3, 194, 37, N'Onza')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (37, 1, 1, 50, N'Libra')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (38, 1, 874, 29, N'Lote')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (16, 1, 40, 40, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (17, 1, 40, 40, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (18, 1, 40, 40, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (19, 1, 112, 64, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (20, 2, 40, 40, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (20, 3, 153, 49, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (21, 1, 40, 40, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (33, 1, 40, 40, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (34, 1, 40, 40, N'Quintal')
INSERT [dbo].[detalles] ([numero_factura], [cantidad_vendida], [codigo_producto], [precio_de_venta], [unidad_producto]) VALUES (35, 1, 246, 96, N'Sixpack')
/****** Object:  StoredProcedure [dbo].[upsertProducto]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upsertProducto]
   @codigo_producto int, 
   @nombre_producto varchar(50), 
   @codigo_departamento int, 
   @codigo_suplidor int, 
   @cantidad_existente float(2), 
   @punto_reo float(2), 
   @codigo_unidad int, 
   @estado bit, 
   @precio_de_venta money
AS
	SET IDENTITY_INSERT producto ON
    IF NOT EXISTS (SELECT codigo_producto FROM producto WHERE codigo_producto = @codigo_producto)
        INSERT INTO producto (codigo_producto, nombre_producto, codigo_departamento, codigo_suplidor, cantidad_existente, punto_reo, codigo_unidad, estado, precio_de_venta) VALUES (@codigo_producto, @nombre_producto, @codigo_departamento, @codigo_suplidor, @cantidad_existente, @punto_reo, @codigo_unidad, @estado, @precio_de_venta)
    ELSE 
        UPDATE producto SET nombre_producto = @nombre_producto,  codigo_departamento = @codigo_departamento,  codigo_suplidor = @codigo_suplidor,  cantidad_existente = @cantidad_existente,  punto_reo = @punto_reo,  codigo_unidad = @codigo_unidad,  estado = @estado,  precio_de_venta = @precio_de_venta  WHERE codigo_producto =  @codigo_producto
GO
/****** Object:  StoredProcedure [dbo].[upsertDetalles]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upsertDetalles]
@numero_factura int,
@codigo_producto int,
@cantidad_vendida float,
@precio_de_venta float,
@unidad_producto varchar(50)
AS
  INSERT INTO detalles (numero_factura, cantidad_vendida, codigo_producto, precio_de_venta, unidad_producto) VALUES (@numero_factura, @cantidad_vendida, @codigo_producto, @precio_de_venta, @unidad_producto)
  UPDATE producto SET cantidad_existente = cantidad_existente - @cantidad_vendida WHERE codigo_producto = @codigo_producto
GO
/****** Object:  StoredProcedure [dbo].[consultarVentas]    Script Date: 04/17/2020 01:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[consultarVentas]
@numero_factura int
AS 
  IF @numero_factura IS NULL
  SELECT venta.numero_factura, venta.fecha, venta.total, cliente.nombre_cliente, cliente.codigo_cliente ,cliente.sexo, producto.codigo_producto, producto.nombre_producto, detalles.cantidad_vendida, detalles.precio_de_venta, detalles.cantidad_vendida * detalles.precio_de_venta AS importe, departamento.codigo_departamento, departamento.nombre_departamento, unidad.nombre_unidad, suplidor.nombre_suplidor, venta.estado
  FROM venta
  INNER JOIN detalles
    ON venta.numero_factura = detalles.numero_factura
  INNER JOIN cliente
    ON venta.codigo_cliente = cliente.codigo_cliente
  INNER JOIN producto
    ON detalles.codigo_producto = producto.codigo_producto
  INNER JOIN departamento
	ON producto.codigo_departamento = departamento.codigo_departamento
  INNER JOIN unidad
    ON producto.codigo_unidad = unidad.codigo_unidad
  INNER JOIN suplidor
    ON producto.codigo_suplidor = suplidor.codigo_suplidor
  ELSE
  SELECT venta.numero_factura, venta.fecha, venta.total, cliente.nombre_cliente, cliente.codigo_cliente ,cliente.sexo, producto.codigo_producto, producto.nombre_producto, detalles.cantidad_vendida, detalles.precio_de_venta, detalles.cantidad_vendida * detalles.precio_de_venta AS importe, departamento.codigo_departamento, departamento.nombre_departamento, unidad.nombre_unidad, suplidor.nombre_suplidor, venta.estado
  FROM venta
  INNER JOIN detalles
    ON venta.numero_factura = detalles.numero_factura
  INNER JOIN cliente
    ON venta.codigo_cliente = cliente.codigo_cliente
  INNER JOIN producto
    ON detalles.codigo_producto = producto.codigo_producto
  INNER JOIN departamento
	ON producto.codigo_departamento = departamento.codigo_departamento
  INNER JOIN unidad
    ON producto.codigo_unidad = unidad.codigo_unidad
  INNER JOIN suplidor
    ON producto.codigo_suplidor = suplidor.codigo_suplidor	
  WHERE venta.numero_factura = @numero_factura
GO
/****** Object:  ForeignKey [FK_venta_cliente]    Script Date: 04/17/2020 01:48:14 ******/
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_cliente] FOREIGN KEY([codigo_cliente])
REFERENCES [dbo].[cliente] ([codigo_cliente])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_cliente]
GO
/****** Object:  ForeignKey [FK_producto_departamento]    Script Date: 04/17/2020 01:48:14 ******/
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [FK_producto_departamento] FOREIGN KEY([codigo_departamento])
REFERENCES [dbo].[departamento] ([codigo_departamento])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [FK_producto_departamento]
GO
/****** Object:  ForeignKey [FK_producto_suplidor]    Script Date: 04/17/2020 01:48:14 ******/
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [FK_producto_suplidor] FOREIGN KEY([codigo_suplidor])
REFERENCES [dbo].[suplidor] ([codigo_suplidor])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [FK_producto_suplidor]
GO
/****** Object:  ForeignKey [FK_producto_unidad]    Script Date: 04/17/2020 01:48:14 ******/
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [FK_producto_unidad] FOREIGN KEY([codigo_unidad])
REFERENCES [dbo].[unidad] ([codigo_unidad])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [FK_producto_unidad]
GO
/****** Object:  ForeignKey [FK_detalles_producto]    Script Date: 04/17/2020 01:48:14 ******/
ALTER TABLE [dbo].[detalles]  WITH CHECK ADD  CONSTRAINT [FK_detalles_producto] FOREIGN KEY([codigo_producto])
REFERENCES [dbo].[producto] ([codigo_producto])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[detalles] CHECK CONSTRAINT [FK_detalles_producto]
GO
/****** Object:  ForeignKey [FK_detalles_venta]    Script Date: 04/17/2020 01:48:14 ******/
ALTER TABLE [dbo].[detalles]  WITH CHECK ADD  CONSTRAINT [FK_detalles_venta] FOREIGN KEY([numero_factura])
REFERENCES [dbo].[venta] ([numero_factura])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[detalles] CHECK CONSTRAINT [FK_detalles_venta]
GO
