﻿USE [master]
GO
/****** Object:  Database [MusicDb]    Script Date: 01.06.2025 23:50:54 ******/
CREATE DATABASE [MusicDb]
GO
USE [MusicDb]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 01.06.2025 23:50:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[ReleaseDate] [date] NOT NULL,
	[GenreId] [int] NOT NULL,
	[ArtistId] [int] NOT NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Artist]    Script Date: 01.06.2025 23:50:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Artist] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 01.06.2025 23:50:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Track]    Script Date: 01.06.2025 23:50:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Track](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[AlbumId] [int] NOT NULL,
 CONSTRAINT [PK_Track] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Album] ON 

INSERT [dbo].[Album] ([Id], [Title], [ReleaseDate], [GenreId], [ArtistId]) VALUES (1, N'Revolver', CAST(N'1966-08-05' AS Date), 1, 1)
INSERT [dbo].[Album] ([Id], [Title], [ReleaseDate], [GenreId], [ArtistId]) VALUES (2, N'Dark Side of the Moon', CAST(N'1973-03-01' AS Date), 4, 2)
INSERT [dbo].[Album] ([Id], [Title], [ReleaseDate], [GenreId], [ArtistId]) VALUES (3, N'A Night at the Opera', CAST(N'1975-11-21' AS Date), 1, 3)
INSERT [dbo].[Album] ([Id], [Title], [ReleaseDate], [GenreId], [ArtistId]) VALUES (4, N'OK Computer', CAST(N'1997-06-16' AS Date), 2, 4)
INSERT [dbo].[Album] ([Id], [Title], [ReleaseDate], [GenreId], [ArtistId]) VALUES (5, N'Parachutes', CAST(N'2000-07-10' AS Date), 1, 5)
INSERT [dbo].[Album] ([Id], [Title], [ReleaseDate], [GenreId], [ArtistId]) VALUES (6, N'Definitely Maybe', CAST(N'1994-08-30' AS Date), 5, 6)
INSERT [dbo].[Album] ([Id], [Title], [ReleaseDate], [GenreId], [ArtistId]) VALUES (7, N'Parklife', CAST(N'1994-04-25' AS Date), 5, 7)
INSERT [dbo].[Album] ([Id], [Title], [ReleaseDate], [GenreId], [ArtistId]) VALUES (8, N'Led Zeppelin II', CAST(N'1969-10-22' AS Date), 6, 8)
INSERT [dbo].[Album] ([Id], [Title], [ReleaseDate], [GenreId], [ArtistId]) VALUES (9, N'Machine Head', CAST(N'1972-03-25' AS Date), 6, 9)
SET IDENTITY_INSERT [dbo].[Album] OFF
GO
SET IDENTITY_INSERT [dbo].[Artist] ON 

INSERT [dbo].[Artist] ([Id], [Name], [Description], [CreatedDate]) VALUES (1, N'The Beatles', N'Известнейшая британская рок-группа, сформированная в Ливерпуле.', CAST(N'1960-08-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Artist] ([Id], [Name], [Description], [CreatedDate]) VALUES (2, N'Pink Floyd', N'Одна из самых влиятельных прогрессив-рок групп Великобритании.', CAST(N'1965-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Artist] ([Id], [Name], [Description], [CreatedDate]) VALUES (3, N'Queen', N'Иконографическая группа британского рока, прославившаяся своим стилем.', CAST(N'1970-07-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Artist] ([Id], [Name], [Description], [CreatedDate]) VALUES (4, N'Radiohead', N'Современная британская альтернативная рок-группа.', CAST(N'1985-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Artist] ([Id], [Name], [Description], [CreatedDate]) VALUES (5, N'Coldplay', N'Широко известная поп-рок группа из Лондона.', CAST(N'1996-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Artist] ([Id], [Name], [Description], [CreatedDate]) VALUES (6, N'Oasis', N'Популярная британская группа, знаменитая своей музыкой конца 90-х годов.', CAST(N'1991-09-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Artist] ([Id], [Name], [Description], [CreatedDate]) VALUES (7, N'Blur', N'Важнейший представитель британской сцены Britpop.', CAST(N'1989-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Artist] ([Id], [Name], [Description], [CreatedDate]) VALUES (8, N'Led Zeppelin', N'Классика британского хард-рока и блюза.', CAST(N'1968-10-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Artist] ([Id], [Name], [Description], [CreatedDate]) VALUES (9, N'Deep Purple', N'Эталонная британская хард-роковая группа.', CAST(N'1968-04-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Artist] OFF
GO
SET IDENTITY_INSERT [dbo].[Genre] ON 

INSERT [dbo].[Genre] ([Id], [Name]) VALUES (1, N'Rock')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (2, N'Alternative')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (3, N'Classic Rock')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (4, N'Progressive Rock')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (5, N'Britpop')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (6, N'Hard Rock')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (7, N'Blues-Rock')
SET IDENTITY_INSERT [dbo].[Genre] OFF
GO
SET IDENTITY_INSERT [dbo].[Track] ON 

INSERT [dbo].[Track] ([Id], [Title], [AlbumId]) VALUES (1, N'Eleanor Rigby', 1)
INSERT [dbo].[Track] ([Id], [Title], [AlbumId]) VALUES (2, N'Money', 2)
INSERT [dbo].[Track] ([Id], [Title], [AlbumId]) VALUES (3, N'Bohemian Rhapsody', 3)
INSERT [dbo].[Track] ([Id], [Title], [AlbumId]) VALUES (4, N'Karma Police', 4)
INSERT [dbo].[Track] ([Id], [Title], [AlbumId]) VALUES (5, N'Yellow', 5)
INSERT [dbo].[Track] ([Id], [Title], [AlbumId]) VALUES (6, N'Live Forever', 6)
INSERT [dbo].[Track] ([Id], [Title], [AlbumId]) VALUES (7, N'End of a Century', 7)
INSERT [dbo].[Track] ([Id], [Title], [AlbumId]) VALUES (8, N'Whole Lotta Love', 8)
INSERT [dbo].[Track] ([Id], [Title], [AlbumId]) VALUES (9, N'Smoke on the Water', 9)
SET IDENTITY_INSERT [dbo].[Track] OFF
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Artist] FOREIGN KEY([ArtistId])
REFERENCES [dbo].[Artist] ([Id])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Artist]
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Genre] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genre] ([Id])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Genre]
GO
ALTER TABLE [dbo].[Track]  WITH CHECK ADD  CONSTRAINT [FK_Track_Album] FOREIGN KEY([AlbumId])
REFERENCES [dbo].[Album] ([Id])
GO
ALTER TABLE [dbo].[Track] CHECK CONSTRAINT [FK_Track_Album]
GO
USE [master]
GO
ALTER DATABASE [MusicDb] SET  READ_WRITE 
GO
