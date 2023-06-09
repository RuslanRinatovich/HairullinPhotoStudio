USE [master]
GO
/****** Object:  Database [PhotoStudioSeverBD]    Script Date: 30.05.2023 0:16:01 ******/
CREATE DATABASE [PhotoStudioSeverBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PhotoStudioSeverBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PhotoStudioSeverBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PhotoStudioSeverBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PhotoStudioSeverBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PhotoStudioSeverBD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PhotoStudioSeverBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PhotoStudioSeverBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET  MULTI_USER 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PhotoStudioSeverBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PhotoStudioSeverBD] SET QUERY_STORE = OFF
GO
USE [PhotoStudioSeverBD]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 30.05.2023 0:16:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TimeSheetId] [int] NOT NULL,
	[UserInfo] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Payed] [bit] NOT NULL,
	[UserName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 30.05.2023 0:16:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo]    Script Date: 30.05.2023 0:16:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](1000) NOT NULL,
	[RoomId] [int] NOT NULL,
 CONSTRAINT [PK_Organizer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rewiew]    Script Date: 30.05.2023 0:16:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rewiew](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](2000) NOT NULL,
	[Rate] [int] NOT NULL,
	[RoomId] [int] NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Rewiew] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 30.05.2023 0:16:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 30.05.2023 0:16:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[MinPrice] [int] NOT NULL,
	[Area] [int] NOT NULL,
	[CeilingHeight] [float] NULL,
	[Light] [nvarchar](200) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomCategory]    Script Date: 30.05.2023 0:16:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_QuestCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSheet]    Script Date: 30.05.2023 0:16:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[Time] [time](7) NOT NULL,
	[Price] [float] NOT NULL,
	[RoomId] [int] NOT NULL,
 CONSTRAINT [PK_TimeSheet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 30.05.2023 0:16:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserName] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[RoleId] [int] NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([Id], [TimeSheetId], [UserInfo], [Phone], [Payed], [UserName]) VALUES (16, 6, N'helloKitty', N'+7 (974) 874-28-35', 1, N'helloKitty')
INSERT [dbo].[Booking] ([Id], [TimeSheetId], [UserInfo], [Phone], [Payed], [UserName]) VALUES (17, 3, N'helloKitty', N'+7 (974) 874-28-35', 1, N'helloKitty')
INSERT [dbo].[Booking] ([Id], [TimeSheetId], [UserInfo], [Phone], [Payed], [UserName]) VALUES (18, 7, N'nikifor', N'+7 (983) 507-01-01', 0, N'nikifor')
INSERT [dbo].[Booking] ([Id], [TimeSheetId], [UserInfo], [Phone], [Payed], [UserName]) VALUES (19, 10, N'lenskiy', N'+7 (945) 054-37-48', 0, N'lenskiy')
INSERT [dbo].[Booking] ([Id], [TimeSheetId], [UserInfo], [Phone], [Payed], [UserName]) VALUES (20, 16, N'lenskiy', N'+7 (945) 054-37-48', 0, N'lenskiy')
INSERT [dbo].[Booking] ([Id], [TimeSheetId], [UserInfo], [Phone], [Payed], [UserName]) VALUES (21, 12, N'lenskiy', N'+7 (945) 054-37-48', 0, N'lenskiy')
INSERT [dbo].[Booking] ([Id], [TimeSheetId], [UserInfo], [Phone], [Payed], [UserName]) VALUES (23, 14, N'master', N'+7 (907) 000-00-07', 1, N'master')
INSERT [dbo].[Booking] ([Id], [TimeSheetId], [UserInfo], [Phone], [Payed], [UserName]) VALUES (1015, 2, N'max', N'+7 (878) 978-97-89', 1, N'max')
INSERT [dbo].[Booking] ([Id], [TimeSheetId], [UserInfo], [Phone], [Payed], [UserName]) VALUES (1016, 17, N'master', N'+7 (907) 000-00-07', 0, N'master')
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Title]) VALUES (1, N'Темные')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (2, N'Светлые')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (3, N'Циклограма')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (4, N'Кухня')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (5, N'Ванная')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (6, N'Кровать')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (7, N'Кабинет')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (8, N'Семейные')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (9, N'Детские')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (10, N'Минимализм')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (11, N'Имитация квартиры')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (12, N'Тематические')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (13, N'Для мероприятий')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (14, N'Для свадебдд')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (15, N'Для контента')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (16, N'Естественный свет')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (17, N'Звукоизоляция')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (18, N'Кондиционер')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (19, N'Новогодние')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (20, N'Фантастические')
INSERT [dbo].[Category] ([Id], [Title]) VALUES (21, N'Фэнтези')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Photo] ON 

INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (1, N'1.jpg', 1)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (2, N'2.jpg', 1)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (3, N'3.jpg', 1)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (4, N'4.jpg', 1)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (5, N'5.jpg', 1)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (9, N'6.jpg', 5)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (10, N'7.jpg', 5)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (11, N'8.jpg', 5)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (12, N'9.jpg', 5)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (14, N'10.jpg', 5)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (15, N'11.jpg', 6)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (16, N'12.jpg', 6)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (17, N'13.jpg', 6)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (18, N'14.jpg', 6)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (19, N'15.jpg', 6)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (20, N'16.jpg', 7)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (21, N'17.jpg', 7)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (22, N'18.jpg', 7)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (23, N'19.jpg', 7)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (24, N'20.jpg', 7)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (25, N'21.jpg', 8)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (26, N'22.jpg', 8)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (27, N'23.jpg', 8)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (28, N'24.jpg', 8)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (29, N'25.jpg', 8)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (30, N'26.jpg', 8)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (31, N'27.jpg', 8)
INSERT [dbo].[Photo] ([Id], [Photo], [RoomId]) VALUES (32, N'28.jpg', 8)
SET IDENTITY_INSERT [dbo].[Photo] OFF
GO
SET IDENTITY_INSERT [dbo].[Rewiew] ON 

INSERT [dbo].[Rewiew] ([Id], [Title], [Rate], [RoomId], [UserName]) VALUES (10, N'Всегда с удовольствием работаю на студии Север! 
Отзывчивый персонал, нормальная аппаратура, много модификаторов и доп.света для решения любых творческих и коммерческих задач!
Всегда можно выпить чаю или кофе, передохнуть до и после съемки. А еще есть бюджетная циклорама в зале Coin, на которой можно любые эксперименты по свету тестить легко и бюджетно. Если выбираете студию, приходите сюда - не пожалеете!', 5, 6, N'nikifor')
INSERT [dbo].[Rewiew] ([Id], [Title], [Rate], [RoomId], [UserName]) VALUES (11, N'Очень хорошая студия, залы и оборудование! Но ооочень холодно, на громадный зал микро тепловая пушка, которая не греет от слова совсем. Фотосессия была с дочкой, мы еле разделись и на всех фото будут мурашки и напряжение)))) зимой я больше туда ни ногой. Сотрудники дружелюбные, и честные-я забыла часы в студии, мне их вернули на следующий день. Можно доверять.', 4, 5, N'nikifor')
INSERT [dbo].[Rewiew] ([Id], [Title], [Rate], [RoomId], [UserName]) VALUES (12, N'Прекрасная студия, широкий выбор залов, фонов, панорамные окна, однозначно лучшая студия.', 5, 8, N'lenskiy')
INSERT [dbo].[Rewiew] ([Id], [Title], [Rate], [RoomId], [UserName]) VALUES (13, N'Студия хорошая, большая и относительно чистая. Администраторы приветливы и всегда идут на встречу. Обстановка дружелюбная. Зимой в залах холодновато и одна теплопушка не справлялась с обогревом зала. Клиенты замёрзли. При входе в зал есть бахилы, но было бы приятнее, если бы предоставляли тапочки, так как в бахилах можно поскользнуться. В целом впечатление от студии очень положительное, но есть моменты которые можно было бы докрутить и было бы идеально. Это большие теплопушки в залы и тапочки) оборудование в хорошем состоянии. Интерьер студии, гримерок и зоны ресепшн на 5+. Ощущение, что ты находишься в крутом месте. Залы красивые', 5, 7, N'lenskiy')
INSERT [dbo].[Rewiew] ([Id], [Title], [Rate], [RoomId], [UserName]) VALUES (1010, N'Арендовали зал Vertigo на улице Самокатная.
Здание с историей ☺️ студия красивая (всё как на картинке), мебель в хорошем состоянии. Чистое всё (кроме окон).
Цена аренды более чем адекватная.
С удовольствием придём снова', 5, 5, N'max')
INSERT [dbo].[Rewiew] ([Id], [Title], [Rate], [RoomId], [UserName]) VALUES (1014, N'Хорошая фотостудия. Большой выбор залов различных тематик. Мы снимали зал WED получились крутые свадебные фотки и видео. Мебель в нем, конечно, желает быть лучше, все потертое и потасканное, а от диванчика на штанах остаются следы от облазившего дермантина. Персонал студии отзывчивый и добрый. Ребята помогут если что что-то настроить. Расположена в 10 минутах от станции метро Авиамоторная. Залы находятся на 3 и 5 этажах Электрозавода. Вход через проходную номер 3.', 5, 8, N'master')
SET IDENTITY_INSERT [dbo].[Rewiew] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleId], [Title]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([RoleId], [Title]) VALUES (3, N'user')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([Id], [Title], [Description], [MinPrice], [Area], [CeilingHeight], [Light]) VALUES (1, N'New Year', N'Зал созданный с атмосферой нового года', 1800, 68, 4.5, N'от источников света55')
INSERT [dbo].[Room] ([Id], [Title], [Description], [MinPrice], [Area], [CeilingHeight], [Light]) VALUES (5, N'Vertigo', N'При создании зала Vertigo мы стремились максимально упростить внешний облик и освободить пространство. Главным девизом нашего творчества было «more is less». Яркие акценты в интерьере добавляют изюминку, а наличие большой белой циклорамы*, расположенной у одного из окон, позволяет снимать с мягким рассеянным светом в течение всего светового дня.', 2100, 140, 6, N'рассветная сторона')
INSERT [dbo].[Room] ([Id], [Title], [Description], [MinPrice], [Area], [CeilingHeight], [Light]) VALUES (6, N'Tokyo', N'Создавая зал, мы вдохновлялись бесшабашными 90-ми, когда на пике популярности были такие направления поп-культуры, как рейв и техно. За счет разнообразия геометрии, нестандартных световых решений и наличия таких материалов, как плитка, сетка-рабица, бетон и металл, Tokyo приводит в восторг всех: от тиктокеров до знатоков fashion-историй. Особенностью зала является возможность управлять световыми элементами независимо друг от друга для создания различных комбинаций.', 1611, 60, 6.9999999999999964, N'отсутствие естественного света')
INSERT [dbo].[Room] ([Id], [Title], [Description], [MinPrice], [Area], [CeilingHeight], [Light]) VALUES (7, N'Лестница', N'Архитектура советской эпохи и архаичность стен, заложенных в первой половине XX века, создают данной локации неповторимую уникальность. 3 лестничных пролета с обилием естественного света и минимальным набором реквизита.', 1200, 60, 6, N'рассветная сторона')
INSERT [dbo].[Room] ([Id], [Title], [Description], [MinPrice], [Area], [CeilingHeight], [Light]) VALUES (8, N'Wed', N'Арки, объемные люстры и лепнина возвращают нас к классицизму Франции XVII века. Светло-кремовые оттенки, преобладающие в пространстве, придают залу особую утонченную элегантность. Особенностью зала является большая лестница и световые панели в виде окон, позволяющие добиться успешных кадров вне зависимости от времени суток и погодных условий. Уникальная всепогодная локация как для свадебных фотосессий и каталогов, так и для непрофильных съемок.', 1600, 62, 6, N'отсутствие естественного света')
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
SET IDENTITY_INSERT [dbo].[RoomCategory] ON 

INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (4, 1, 7)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (5, 5, 1)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (6, 5, 2)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (7, 5, 3)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (8, 5, 5)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (9, 5, 6)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (10, 6, 1)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (11, 6, 4)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (12, 6, 5)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (13, 6, 17)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (14, 7, 4)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (15, 7, 9)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (16, 7, 10)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (17, 7, 12)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (18, 7, 13)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (19, 7, 14)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (20, 7, 16)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (21, 6, 3)
INSERT [dbo].[RoomCategory] ([Id], [QuestId], [CategoryId]) VALUES (22, 6, 6)
SET IDENTITY_INSERT [dbo].[RoomCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[TimeSheet] ON 

INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [RoomId]) VALUES (1, CAST(N'2023-05-19' AS Date), CAST(N'19:00:00' AS Time), 5000, 1)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [RoomId]) VALUES (2, CAST(N'2023-05-24' AS Date), CAST(N'16:00:00' AS Time), 5000, 1)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [RoomId]) VALUES (3, CAST(N'2023-05-25' AS Date), CAST(N'16:30:00' AS Time), 2800, 5)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [RoomId]) VALUES (4, CAST(N'2023-05-26' AS Date), CAST(N'17:00:00' AS Time), 3000, 5)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [RoomId]) VALUES (5, CAST(N'2023-05-27' AS Date), CAST(N'17:00:00' AS Time), 3000, 5)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [RoomId]) VALUES (6, CAST(N'2023-05-27' AS Date), CAST(N'14:00:00' AS Time), 3000, 6)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [RoomId]) VALUES (7, CAST(N'2023-05-29' AS Date), CAST(N'17:00:00' AS Time), 4000, 6)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [RoomId]) VALUES (8, CAST(N'2023-05-28' AS Date), CAST(N'15:00:00' AS Time), 4000, 6)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [RoomId]) VALUES (9, CAST(N'2023-05-27' AS Date), CAST(N'17:00:00' AS Time), 3000, 1)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [RoomId]) VALUES (10, CAST(N'2023-05-28' AS Date), CAST(N'16:00:00' AS Time), 5000, 1)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [RoomId]) VALUES (11, CAST(N'2023-05-27' AS Date), CAST(N'17:00:00' AS Time), 5000, 8)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [RoomId]) VALUES (12, CAST(N'2023-05-30' AS Date), CAST(N'17:00:00' AS Time), 3000, 8)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [RoomId]) VALUES (13, CAST(N'2023-05-29' AS Date), CAST(N'16:00:00' AS Time), 2500, 8)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [RoomId]) VALUES (14, CAST(N'2023-05-27' AS Date), CAST(N'17:00:00' AS Time), 4000, 7)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [RoomId]) VALUES (15, CAST(N'2023-05-28' AS Date), CAST(N'18:00:00' AS Time), 3000, 7)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [RoomId]) VALUES (16, CAST(N'2023-05-29' AS Date), CAST(N'17:00:00' AS Time), 4000, 7)
INSERT [dbo].[TimeSheet] ([Id], [Date], [Time], [Price], [RoomId]) VALUES (17, CAST(N'2023-05-31' AS Date), CAST(N'16:00:00' AS Time), 3500, 8)
SET IDENTITY_INSERT [dbo].[TimeSheet] OFF
GO
INSERT [dbo].[User] ([UserName], [Password], [RoleId], [LastName], [FirstName], [MiddleName], [Phone], [Email]) VALUES (N'admin', N'1', 1, N'Хайруллин', N'Ильназ', N'', N'+8 (965) 656-56-53', N'ilnaztop@mail.ru')
INSERT [dbo].[User] ([UserName], [Password], [RoleId], [LastName], [FirstName], [MiddleName], [Phone], [Email]) VALUES (N'best', N'1', 3, N'Полина', NULL, NULL, N'+7 (777) 777-77-77', NULL)
INSERT [dbo].[User] ([UserName], [Password], [RoleId], [LastName], [FirstName], [MiddleName], [Phone], [Email]) VALUES (N'helloKitty', N'1', 3, N'Недашковская', N'Ванда', N'Львовна', N'+7 (974) 874-28-35', N'VandaNedashkovskaya183@mail.ru')
INSERT [dbo].[User] ([UserName], [Password], [RoleId], [LastName], [FirstName], [MiddleName], [Phone], [Email]) VALUES (N'lenskiy', N'1', 3, N'Ленский', N'Аркадий', N'Борисович', N'+7 (945) 054-37-48', N'ArkadiyLenskiy925@mail.ru')
INSERT [dbo].[User] ([UserName], [Password], [RoleId], [LastName], [FirstName], [MiddleName], [Phone], [Email]) VALUES (N'master', N'1', 3, N'Емельяненко', N'Федор', N'Сергеевич', N'+7 (907) 000-00-07', N'best@mail.ru')
INSERT [dbo].[User] ([UserName], [Password], [RoleId], [LastName], [FirstName], [MiddleName], [Phone], [Email]) VALUES (N'max', N'1', 3, N'Смирнов', N'Максим', N'', N'+7 (878) 978-97-89', N'max_top@mail.ru')
INSERT [dbo].[User] ([UserName], [Password], [RoleId], [LastName], [FirstName], [MiddleName], [Phone], [Email]) VALUES (N'nikifor', N'1', 3, N'Григорьев', N'Никифор', N'Тимофеевич', N'+7 (983) 507-01-01', N'NikiforGrigorev302@yandex.ru')
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_TimeSheet] FOREIGN KEY([TimeSheetId])
REFERENCES [dbo].[TimeSheet] ([Id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_TimeSheet]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_User] FOREIGN KEY([UserName])
REFERENCES [dbo].[User] ([UserName])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_User]
GO
ALTER TABLE [dbo].[Photo]  WITH CHECK ADD  CONSTRAINT [FK_Photo_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Id])
GO
ALTER TABLE [dbo].[Photo] CHECK CONSTRAINT [FK_Photo_Room]
GO
ALTER TABLE [dbo].[Rewiew]  WITH CHECK ADD  CONSTRAINT [FK_Rewiew_Quest] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Id])
GO
ALTER TABLE [dbo].[Rewiew] CHECK CONSTRAINT [FK_Rewiew_Quest]
GO
ALTER TABLE [dbo].[Rewiew]  WITH CHECK ADD  CONSTRAINT [FK_Rewiew_User] FOREIGN KEY([UserName])
REFERENCES [dbo].[User] ([UserName])
GO
ALTER TABLE [dbo].[Rewiew] CHECK CONSTRAINT [FK_Rewiew_User]
GO
ALTER TABLE [dbo].[RoomCategory]  WITH CHECK ADD  CONSTRAINT [FK_QuestCategory_Quest] FOREIGN KEY([QuestId])
REFERENCES [dbo].[Room] ([Id])
GO
ALTER TABLE [dbo].[RoomCategory] CHECK CONSTRAINT [FK_QuestCategory_Quest]
GO
ALTER TABLE [dbo].[RoomCategory]  WITH CHECK ADD  CONSTRAINT [FK_RoomCategory_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[RoomCategory] CHECK CONSTRAINT [FK_RoomCategory_Category]
GO
ALTER TABLE [dbo].[TimeSheet]  WITH CHECK ADD  CONSTRAINT [FK_TimeSheet_Quest] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Id])
GO
ALTER TABLE [dbo].[TimeSheet] CHECK CONSTRAINT [FK_TimeSheet_Quest]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [PhotoStudioSeverBD] SET  READ_WRITE 
GO
