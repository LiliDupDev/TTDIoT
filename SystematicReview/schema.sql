USE [bibliografia]
GO
/****** Object:  Table [dbo].[algorithm]    Script Date: 29/06/2021 06:51:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[algorithm](
	[idalgorithm] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[name] [varchar](250) NULL,
 CONSTRAINT [PK_algorithm] PRIMARY KEY CLUSTERED 
(
	[idalgorithm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[area]    Script Date: 29/06/2021 06:51:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[area](
	[idarea] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[name] [varchar](500) NULL,
	[name_esp] [varchar](500) NULL,
 CONSTRAINT [PK_area] PRIMARY KEY CLUSTERED 
(
	[idarea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[characteristics]    Script Date: 29/06/2021 06:51:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[characteristics](
	[idcharacteristic] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](250) NULL,
	[dbaja] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[citing]    Script Date: 29/06/2021 06:51:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[citing](
	[idpaper] [numeric](18, 0) NULL,
	[cite] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[classification]    Script Date: 29/06/2021 06:51:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classification](
	[idclassification] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[idarticle] [numeric](18, 0) NULL,
	[idcharacteristic] [numeric](18, 0) NULL,
	[detail] [nvarchar](2000) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[model]    Script Date: 29/06/2021 06:51:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[model](
	[idmodel] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[model] [varchar](250) NULL,
	[dbaja] [datetime] NULL,
 CONSTRAINT [PK_model] PRIMARY KEY CLUSTERED 
(
	[idmodel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[model_algorithm]    Script Date: 29/06/2021 06:51:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[model_algorithm](
	[idrelation] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[idmodel] [numeric](18, 0) NULL,
	[idalgorithm] [numeric](18, 0) NULL,
 CONSTRAINT [PK_model_algorithm] PRIMARY KEY CLUSTERED 
(
	[idrelation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[relation_algorithm]    Script Date: 29/06/2021 06:51:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[relation_algorithm](
	[idrelation] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[idalgorithm] [numeric](18, 0) NULL,
	[idarticle] [numeric](18, 0) NULL,
 CONSTRAINT [PK_relation_algorithm] PRIMARY KEY CLUSTERED 
(
	[idrelation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[relation_area_paper]    Script Date: 29/06/2021 06:51:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[relation_area_paper](
	[idrelation] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[idpaper] [numeric](18, 0) NULL,
	[idarea] [numeric](18, 0) NULL,
 CONSTRAINT [PK_relation_area_paper] PRIMARY KEY CLUSTERED 
(
	[idrelation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[scopus_general]    Script Date: 29/06/2021 06:51:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[scopus_general](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Authors] [varchar](500) NULL,
	[Title] [varchar](5000) NULL,
	[Year] [varchar](50) NULL,
	[Source title] [varchar](5000) NULL,
	[Volume] [varchar](50) NULL,
	[Issue] [varchar](50) NULL,
	[Page start] [varchar](50) NULL,
	[Page end] [varchar](50) NULL,
	[Page count] [varchar](50) NULL,
	[Cited by] [varchar](50) NULL,
	[DOI] [varchar](500) NULL,
	[Document Type] [varchar](500) NULL,
	[selected] [bit] NULL,
	[added] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[taxonomy_classification]    Script Date: 29/06/2021 06:51:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Liliana Durán Polanco
-- =============================================
CREATE PROCEDURE  [dbo].[taxonomy_classification]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	SET NOCOUNT ON;

    SELECT DISTINCT *
	FROM
	(
		SELECT 
			id
		,	doi
		,	title
		,	Authors
		,	year
		,	area_i.NameValues [Dominios]
		,	case when [predecir]	is not null then 'Predicción'
				 when [optimizar]	is not null then 'Optimización'
				 when [gestionar]	is not null then 'Gestión'
				 when [pronostico]	is not null then 'Pronostico'
				 when [resolucion]	is not null then 'Resolución de conflictos'
			end [Objetivo]
		,	case when [centralizado] is not null then 'centralizado' else 'descentralizado' end [Procesamiento]
		,	case when [humano]	is not null then 'Humano'
				 when [sistema]	is not null then 'Sistema'
			end	[Colaboración]
		,	case when [Medida]		is not null then 'Medidas'
				 when [Parametro]	is not null then 'Parametro'
				 when [Modelo]		is not null then 'Modelo'
			end	[Incertidumbre]
		,	model
		FROM
		(select 
				sg.id
		,		sg.doi
		,		sg.Title
		,		sg.Authors
		,		sg.Year
		,		cha.name
		,		class.detail
		,		al.name	alg
		,		mo.model
		from		scopus_general		sg
		inner join	classification		class	on class.idarticle		=	sg.id
		inner join	characteristics		cha		on cha.idcharacteristic =	class.idcharacteristic and cha.dbaja is null
		inner join	relation_algorithm	ra		on ra.idarticle			=	sg.id
		inner join	algorithm			al		on al.idalgorithm		=	ra.idalgorithm
		inner join	model_algorithm		ma		on ma.idalgorithm		=	al.idalgorithm
		inner join	model				mo		on mo.idmodel			=	ma.idmodel
		where (selected <>0)
		) SOURCETAB
		PIVOT
		(
			max(detail)
			FOR name IN (
			 [centralizado]
			,[descentralizado]
			,[algoritmo]
			,[predecir]
			,[optimizar]
			,[gestionar]
			,[resolucion]
			,[pronostico]
			,[humano]
			,[sistema]
			,[Enfoque]
			,[Medida]
			,[Parametro]
			,[Modelo]
			)
		)
		AS PIVOTTAB
		INNER JOIN (
			SELECT DISTINCT
			  ap.idpaper,
			  STUFF((
				SELECT ', ' + [name_esp]
				FROM		relation_area_paper ap_i
				INNER JOIN	area				ar_i	ON ar_i.idarea=ap_i.idarea 
				WHERE ap_i.idarea BETWEEN 6 AND 13 AND (ap_i.idpaper = ap.idpaper) 
				FOR XML PATH(''),TYPE).value('(./text())[1]','VARCHAR(MAX)')
			  ,1,2,'') AS NameValues
			FROM		relation_area_paper ap
			WHERE		idarea between 6 and 13
			GROUP BY ap.idpaper
		) area_i ON id =area_i.idpaper
		INNER JOIN citing cit on cit.idpaper=id
		INNER JOIN relation_area_paper rap on rap.idpaper=id
	) as A





END

GO
