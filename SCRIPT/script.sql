USE [Preguntados]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 31/8/2023 15:58:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Foto] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dificultades]    Script Date: 31/8/2023 15:58:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dificultades](
	[IdDificultad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Dificultades] PRIMARY KEY CLUSTERED 
(
	[IdDificultad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 31/8/2023 15:58:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[IdPregunta] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[IdDificultad] [int] NOT NULL,
	[Enunciado] [nvarchar](max) NOT NULL,
	[Foto] [nvarchar](max) NULL,
 CONSTRAINT [PK_Preguntas] PRIMARY KEY CLUSTERED 
(
	[IdPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respuestas]    Script Date: 31/8/2023 15:58:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Respuestas](
	[IdRespuesta] [int] IDENTITY(1,1) NOT NULL,
	[IdPregunta] [int] NOT NULL,
	[Opcion] [int] NOT NULL,
	[Contenido] [nvarchar](max) NOT NULL,
	[Correcta] [bit] NOT NULL,
	[Foto] [nvarchar](max) NULL,
 CONSTRAINT [PK_Respuestas] PRIMARY KEY CLUSTERED 
(
	[IdRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (1, N'Geografía', N'https://static.wikia.nocookie.net/preguntados-juego/images/f/f7/Geograf%C3%ADa.png/revision/latest?cb=20171009211549&path-prefix=es')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (2, N'Ciencia', N'https://static.wikia.nocookie.net/preguntados-juego/images/3/30/Ciencia.png/revision/latest?cb=20171009212518&path-prefix=es')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (3, N'Arte', N'https://static.wikia.nocookie.net/preguntados-juego/images/2/2e/Arte.png/revision/latest?cb=20171009212238&path-prefix=es')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (4, N'Entretenimiento', N'https://static.wikia.nocookie.net/preguntados-juego/images/e/e0/Entretenimiento.png/revision/latest?cb=20171009154517&path-prefix=es')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (5, N'Historia', N'https://static.wikia.nocookie.net/preguntados-juego/images/3/3f/Historia.png/revision/latest?cb=20171009212341&path-prefix=es')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (6, N'Deporte', N'https://static.wikia.nocookie.net/preguntados-juego/images/a/a3/Deportes.png/revision/latest?cb=20171009155146&path-prefix=es')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Dificultades] ON 

INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (1, N'Fácil')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (2, N'Intermedio')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (3, N'Difícil')
SET IDENTITY_INSERT [dbo].[Dificultades] OFF
GO
SET IDENTITY_INSERT [dbo].[Preguntas] ON 

INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, 1, N'¿Cuál de estas provincias queda en el norte de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 1, 2, N'¿De qué país es la capital Kiev?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, 3, N'Por área, ¿cuál es el país más pequeño del pláneta?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (7, 2, 1, N'¿Cuál de estos animales no es un mamífero?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (8, 2, 2, N'¿Cómo se le llaman los iones de carga positiva? ', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (9, 2, 3, N'¿Cauntas vértebras tiene un jirafa en su cuello?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (10, 3, 1, N'¿Cuál de estos artistas fue el pintor de la Mona Lisa?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (11, 3, 2, N' ¿De que nacionalidad es la artista Frida Kahalo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (13, 3, 3, N'¿Quién escribió la saga "Los Juegos del Hambre"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (14, 4, 1, N'¿Quién es la profesora preferida de Matilda?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (15, 4, 2, N'¿Quién escribió y dirigió la película "Cómo no te voy a querer"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (16, 4, 3, N'¿Qué película es?', N'data:image/jpeg;base64,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')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (18, 5, 1, N'¿En que año fue la Revolución de Mayo en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (19, 5, 2, N'El pacto Roca-Runciman firma', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (20, 5, 3, N'¿Cuál de estas opciones NO es una causa de la primera guerra mundial?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (21, 6, 1, N'¿Cuál es el deporte nacional de argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (22, 6, 2, N'¿Cuál es este deporte?', N'https://global-uploads.webflow.com/5d655866b2055c7cbb5d79a1/61420b63017a2836ea1bdeed_badminton-4%20(1).jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (23, 6, 3, N'¿Que significan las siglas A.F.A?', NULL)
SET IDENTITY_INSERT [dbo].[Preguntas] OFF
GO
SET IDENTITY_INSERT [dbo].[Respuestas] ON 

INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (2, 3, 1, N'Chubut', 0, N'g')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (4, 3, 2, N'Misiones', 1, N'g')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (5, 3, 3, N'Buenos Aires', 0, N'g')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (6, 3, 4, N'Santa Cruz', 0, N'h')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (8, 5, 1, N'Estonia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (9, 5, 2, N'Lituania', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (11, 5, 3, N'Ucrania', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (12, 5, 4, N'Bulgaria', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (14, 6, 1, N'Malta', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (15, 6, 2, N'Israel', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (17, 6, 3, N'Mónaco', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (19, 6, 4, N'Vaticano', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (20, 7, 1, N'Ballena', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (21, 7, 2, N'Delfin', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (22, 7, 3, N'Gallina', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (23, 7, 4, N'Ocelote', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (24, 8, 1, N'Anión', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (25, 8, 2, N'Protón', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (26, 8, 3, N'Catión', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (29, 8, 4, N'Neutrón', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (30, 9, 1, N'7', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (31, 9, 2, N'8', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (32, 9, 3, N'10', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (33, 9, 4, N'15', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (34, 10, 1, N'Da Vinci', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (35, 10, 2, N'Dalí', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (36, 10, 3, N'Monet', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (37, 10, 4, N'Van Gogh', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (38, 11, 1, N'Alemana', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (39, 11, 2, N'Boliviana', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (41, 11, 3, N'Mexicana', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (42, 11, 4, N'Peruana', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (43, 13, 1, N'Suzanne Collins', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (44, 13, 2, N'Francis Lawrence
', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (45, 13, 3, N'Frank Herbert', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (46, 13, 4, N'J.K Rowling', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (47, 15, 1, N'Victor Avelar', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (48, 15, 2, N'Guillermo del Toro', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (49, 15, 3, N'Alfonso Cuaron', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (50, 15, 4, N'Gonzalez Iñarritu', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (51, 14, 1, N'Tronchatoro', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (54, 14, 2, N'Srta. Miel', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (55, 14, 3, N'Srta. Canela', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (56, 14, 4, N'Srta. Teresa', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (57, 16, 1, N'Un viernes de locos', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (58, 16, 2, N'Jessie', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (59, 16, 3, N'Juego de gemelas', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (60, 16, 4, N'Decendientes', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (61, 18, 1, N'1820', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (62, 18, 2, N'1810', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (63, 18, 3, N'1912', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (64, 18, 4, N'1880', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (65, 19, 1, N'Una venta fija de venta de carne', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (66, 19, 2, N'Venta de soja a China', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (67, 19, 3, N'La ley de voto secreto ', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (68, 19, 4, N'Habilita a Chile el paso mercader en Argentina ', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (69, 20, 1, N'El imperialismo ', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (71, 20, 2, N'El nacionalismo ', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (72, 20, 3, N'La paz armada ', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (73, 20, 4, N'La peste', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (74, 21, 1, N'Pato', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (75, 21, 2, N'Hockey', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (76, 21, 3, N'Futbol', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (77, 21, 4, N'Voley', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (78, 22, 1, N'Badmintón', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (79, 22, 2, N'Padel', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (80, 22, 3, N'Tenis ', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (81, 22, 4, N'Ping Pong', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (82, 23, 1, N'Amantes del Fernet Argenitino', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (83, 23, 2, N'Asociacion Federal Argentina ', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (84, 23, 3, N'Alcoholicos Flacos Altos', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (85, 23, 4, N'Asociacion del Futbol Argentino', 1, NULL)
SET IDENTITY_INSERT [dbo].[Respuestas] OFF
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK_Preguntas_Categorias] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([IdCategoria])
GO
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK_Preguntas_Categorias]
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK_Preguntas_Dificultades] FOREIGN KEY([IdDificultad])
REFERENCES [dbo].[Dificultades] ([IdDificultad])
GO
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK_Preguntas_Dificultades]
GO
ALTER TABLE [dbo].[Respuestas]  WITH CHECK ADD  CONSTRAINT [FK_Respuestas_Preguntas] FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Preguntas] ([IdPregunta])
GO
ALTER TABLE [dbo].[Respuestas] CHECK CONSTRAINT [FK_Respuestas_Preguntas]
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerCategorias]    Script Date: 31/8/2023 15:58:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerCategorias]
AS
BEGIN
	SELECT * FROM Categorias 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerDificultades]    Script Date: 31/8/2023 15:58:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerDificultades]
AS
BEGIN
	SELECT * FROM Dificultades 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerPreguntas]    Script Date: 31/8/2023 15:58:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerPreguntas]
	@Dificultad INT,
	@Categoria INT
	
AS
BEGIN
    IF(@Categoria = -1 AND @Dificultad=-1)
		BEGIN
		 SELECT * FROM Preguntas  order by  NEWID()
		END;

	ELSE IF (@Categoria>0 and @Dificultad=-1)
		BEGIN 
			SELECT * FROM Preguntas WHERE IdCategoria = @Categoria  order by  NEWID()
		END; 

	ELSE IF (@Categoria = -1 and @Dificultad>0)
		BEGIN 
			SELECT * FROM Preguntas WHERE IdDificultad = @Dificultad  order by  NEWID()
		END; 

	ELSE 
		BEGIN 
			SELECT * FROM Preguntas WHERE IdCategoria = @Categoria AND IdDificultad = @Dificultad  order by  NEWID()
		END;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerRespuestas]    Script Date: 31/8/2023 15:58:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerRespuestas]
	@IdPregunta INT
AS
BEGIN
	SELECT * FROM Respuestas WHERE IdPregunta = @IdPregunta
END
GO
