USE [YGFLDB]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 4/9/2018 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PublicDate] [datetime] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[AvatarURL] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[BannerURL] [nvarchar](max) NULL,
	[MainVideoID] [int] NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AlbumArtist]    Script Date: 4/9/2018 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlbumArtist](
	[ArtistID] [int] NOT NULL,
	[AlbumID] [int] NOT NULL,
 CONSTRAINT [PK_AlbumArtist] PRIMARY KEY CLUSTERED 
(
	[ArtistID] ASC,
	[AlbumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplyMessage]    Script Date: 4/9/2018 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplyMessage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PositionID] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[SocialUsername] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](500) NOT NULL,
	[PastExperience] [nvarchar](max) NOT NULL,
	[Reason] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ApplyMessage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplyPosition]    Script Date: 4/9/2018 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplyPosition](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_ApplyPosition] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Artist]    Script Date: 4/9/2018 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artist](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[AvatarURL] [nvarchar](max) NULL,
 CONSTRAINT [PK_Artist] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArtistDetail]    Script Date: 4/9/2018 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArtistDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ArtistID] [int] NOT NULL,
 CONSTRAINT [PK_ArtistDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Disk]    Script Date: 4/9/2018 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disk](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AlbumID] [int] NOT NULL,
	[DiskName] [nvarchar](255) NOT NULL,
	[TrackAmount] [int] NULL,
 CONSTRAINT [PK_Disk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 4/9/2018 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Price] [float] NOT NULL,
	[ImageURL] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Show]    Script Date: 4/9/2018 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Show](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ShowCategoryID] [int] NOT NULL,
	[ArtistID] [int] NOT NULL,
	[ShowName] [nvarchar](255) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[ShowDate] [datetime] NULL,
 CONSTRAINT [PK_Show] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShowCategory]    Script Date: 4/9/2018 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShowCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_ShowCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Track]    Script Date: 4/9/2018 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Track](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DiskID] [int] NOT NULL,
	[TrackURL] [nvarchar](max) NULL,
	[TrackName] [nvarchar](max) NULL,
	[ArtistID] [int] NULL,
	[ArtistName] [nvarchar](255) NULL,
 CONSTRAINT [PK_Track] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Video]    Script Date: 4/9/2018 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VideoURL] [nvarchar](max) NULL,
	[VideoName] [nchar](255) NULL,
	[ServerID] [int] NULL,
	[ShowID] [int] NULL,
	[DiskID] [int] NULL,
 CONSTRAINT [PK_ShowVideoDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VideoArtist]    Script Date: 4/9/2018 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoArtist](
	[VideoID] [int] NOT NULL,
	[ArtistID] [int] NOT NULL,
 CONSTRAINT [PK_VideoArtist] PRIMARY KEY CLUSTERED 
(
	[VideoID] ASC,
	[ArtistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VideoServer]    Script Date: 4/9/2018 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoServer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ServerName] [nvarchar](255) NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_VideoServer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Video] FOREIGN KEY([MainVideoID])
REFERENCES [dbo].[Video] ([ID])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Video]
GO
ALTER TABLE [dbo].[AlbumArtist]  WITH CHECK ADD  CONSTRAINT [FK_AlbumArtist_Album] FOREIGN KEY([AlbumID])
REFERENCES [dbo].[Album] ([ID])
GO
ALTER TABLE [dbo].[AlbumArtist] CHECK CONSTRAINT [FK_AlbumArtist_Album]
GO
ALTER TABLE [dbo].[AlbumArtist]  WITH CHECK ADD  CONSTRAINT [FK_AlbumArtist_Artist] FOREIGN KEY([ArtistID])
REFERENCES [dbo].[Artist] ([ID])
GO
ALTER TABLE [dbo].[AlbumArtist] CHECK CONSTRAINT [FK_AlbumArtist_Artist]
GO
ALTER TABLE [dbo].[ApplyMessage]  WITH CHECK ADD  CONSTRAINT [FK_ApplyMessage_ApplyPosition] FOREIGN KEY([PositionID])
REFERENCES [dbo].[ApplyPosition] ([ID])
GO
ALTER TABLE [dbo].[ApplyMessage] CHECK CONSTRAINT [FK_ApplyMessage_ApplyPosition]
GO
ALTER TABLE [dbo].[ArtistDetail]  WITH CHECK ADD  CONSTRAINT [FK_ArtistDetail_Artist] FOREIGN KEY([ArtistID])
REFERENCES [dbo].[Artist] ([ID])
GO
ALTER TABLE [dbo].[ArtistDetail] CHECK CONSTRAINT [FK_ArtistDetail_Artist]
GO
ALTER TABLE [dbo].[Disk]  WITH CHECK ADD  CONSTRAINT [FK_Disk_Album] FOREIGN KEY([AlbumID])
REFERENCES [dbo].[Album] ([ID])
GO
ALTER TABLE [dbo].[Disk] CHECK CONSTRAINT [FK_Disk_Album]
GO
ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_Show_Artist] FOREIGN KEY([ArtistID])
REFERENCES [dbo].[Artist] ([ID])
GO
ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_Show_Artist]
GO
ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_Show_ShowCategory] FOREIGN KEY([ShowCategoryID])
REFERENCES [dbo].[ShowCategory] ([ID])
GO
ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_Show_ShowCategory]
GO
ALTER TABLE [dbo].[Track]  WITH CHECK ADD  CONSTRAINT [FK_Track_Disk] FOREIGN KEY([DiskID])
REFERENCES [dbo].[Disk] ([ID])
GO
ALTER TABLE [dbo].[Track] CHECK CONSTRAINT [FK_Track_Disk]
GO
ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_Disk] FOREIGN KEY([DiskID])
REFERENCES [dbo].[Disk] ([ID])
GO
ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_Disk]
GO
ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_Show] FOREIGN KEY([ShowID])
REFERENCES [dbo].[Show] ([ID])
GO
ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_Show]
GO
ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_VideoServer] FOREIGN KEY([ServerID])
REFERENCES [dbo].[VideoServer] ([ID])
GO
ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_VideoServer]
GO
ALTER TABLE [dbo].[VideoArtist]  WITH CHECK ADD  CONSTRAINT [FK_VideoArtist_Artist] FOREIGN KEY([ArtistID])
REFERENCES [dbo].[Artist] ([ID])
GO
ALTER TABLE [dbo].[VideoArtist] CHECK CONSTRAINT [FK_VideoArtist_Artist]
GO
ALTER TABLE [dbo].[VideoArtist]  WITH CHECK ADD  CONSTRAINT [FK_VideoArtist_Video] FOREIGN KEY([VideoID])
REFERENCES [dbo].[Video] ([ID])
GO
ALTER TABLE [dbo].[VideoArtist] CHECK CONSTRAINT [FK_VideoArtist_Video]
GO
