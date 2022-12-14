USE [MusicStore]
GO
SET IDENTITY_INSERT [dbo].[Style] ON 
INSERT [dbo].[Style] ([Id], [Name]) VALUES (8, N'Dark Power Pop')
INSERT [dbo].[Style] ([Id], [Name]) VALUES (7, N'Pop rock')
INSERT [dbo].[Style] ([Id], [Name]) VALUES (6, N'Rock & Roll')
INSERT [dbo].[Style] ([Id], [Name]) VALUES (2, N'Диско')
INSERT [dbo].[Style] ([Id], [Name]) VALUES (5, N'Евро поп')
INSERT [dbo].[Style] ([Id], [Name]) VALUES (3, N'Інді рок')
INSERT [dbo].[Style] ([Id], [Name]) VALUES (1, N'Поп')
INSERT [dbo].[Style] ([Id], [Name]) VALUES (4, N'Рок')
SET IDENTITY_INSERT [dbo].[Style] OFF
GO
SET IDENTITY_INSERT [dbo].[Artist] ON 

INSERT [dbo].[Artist] ([Id], [Name]) VALUES (2, N'ABBA')
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (3, N'Boney M')
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (4, N'Elton John')
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (1, N'The Beatles')
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (6, N'Вірка Сердючка')
INSERT [dbo].[Artist] ([Id], [Name]) VALUES (5, N'Океан Ельзи')
SET IDENTITY_INSERT [dbo].[Artist] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([Id], [Name]) VALUES (3, N'Великобританія')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (5, N'Нідерланди')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (4, N'Польша')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (2, N'США')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (1, N'Україна')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (6, N'Франція')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (7, N'Швеція')
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Publisher] ON 

INSERT [dbo].[Publisher] ([Id], [Name], [IdCountry]) VALUES (1, N'Данилко продакшен ЛТД', 1)
INSERT [dbo].[Publisher] ([Id], [Name], [IdCountry]) VALUES (2, N'Paramount ', 2)
INSERT [dbo].[Publisher] ([Id], [Name], [IdCountry]) VALUES (3, N'Moon Records', 1)
INSERT [dbo].[Publisher] ([Id], [Name], [IdCountry]) VALUES (4, N'Polar', 7)
INSERT [dbo].[Publisher] ([Id], [Name], [IdCountry]) VALUES (5, N'Parlophone', 3)
SET IDENTITY_INSERT [dbo].[Publisher] OFF
GO
SET IDENTITY_INSERT [dbo].[Disc] ON 

INSERT [dbo].[Disc] ([Id], [Name], [IdArtist], [DatePublish], [IdPublisher], [IdStyle]) VALUES (1, N'Чита Дрита', 6, CAST(N'2003-03-05' AS Date), 1, 5)
INSERT [dbo].[Disc] ([Id], [Name], [IdArtist], [DatePublish], [IdPublisher], [IdStyle]) VALUES (2, N'Ха-ра-шо!', 6, CAST(N'2003-12-12' AS Date), 1, 1)
INSERT [dbo].[Disc] ([Id], [Name], [IdArtist], [DatePublish], [IdPublisher], [IdStyle]) VALUES (3, N'Please Please Me', 1, CAST(N'1965-02-10' AS Date), 5, 6)
INSERT [dbo].[Disc] ([Id], [Name], [IdArtist], [DatePublish], [IdPublisher], [IdStyle]) VALUES (4, N'Help!', 1, CAST(N'1965-08-06' AS Date), 5, 6)
INSERT [dbo].[Disc] ([Id], [Name], [IdArtist], [DatePublish], [IdPublisher], [IdStyle]) VALUES (5, N'Revolver', 1, CAST(N'1966-04-06' AS Date), 5, 7)
INSERT [dbo].[Disc] ([Id], [Name], [IdArtist], [DatePublish], [IdPublisher], [IdStyle]) VALUES (6, N'Міра', 5, CAST(N'2007-06-01' AS Date), 3, 7)
SET IDENTITY_INSERT [dbo].[Disc] OFF
GO
SET IDENTITY_INSERT [dbo].[Song] ON 

INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (2, N'Чита Дрита', 1, CAST(N'00:02:44' AS Time), 6, 1)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (3, N'Гулянка', 1, CAST(N'00:02:55' AS Time), 6, 5)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (4, N'Тук, Тук, Тук', 1, CAST(N'00:03:46' AS Time), 6, 5)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (5, N'Ты ушел', 1, CAST(N'00:03:52' AS Time), 6, 5)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (6, N'Поезд "Киев - Одесса"', 1, CAST(N'00:03:48' AS Time), 6, 5)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (7, N'Полоса', 1, CAST(N'00:03:45' AS Time), 6, 5)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (8, N'Я попала на любовь', 1, CAST(N'00:04:42' AS Time), 6, 5)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (9, N'Ты на север я на юг', 1, CAST(N'00:03:13' AS Time), 6, 5)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (10, N'Всем надо', 1, CAST(N'00:03:43' AS Time), 6, 5)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (11, N'Мы фестивалем', 1, CAST(N'00:03:39' AS Time), 6, 5)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (12, N'Все будет харашо', 2, CAST(N'00:03:54' AS Time), 6, 1)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (13, N'А я только с мороза', 2, CAST(N'00:03:46' AS Time), 6, 1)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (14, N'Горілка', 2, CAST(N'00:02:53' AS Time), 6, 1)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (15, N'Гоп-гоп', 2, CAST(N'00:03:14' AS Time), 6, 1)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (16, N'Люта Бджілка', 2, CAST(N'00:03:53' AS Time), 6, 1)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (17, N'Пирожок', 2, CAST(N'00:03:42' AS Time), 6, 1)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (18, N'Я рождена для любви', 2, CAST(N'00:05:26' AS Time), 6, 1)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (19, N'Девочки', 2, CAST(N'00:05:06' AS Time), 6, 1)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (20, N'Я не поняла', 2, CAST(N'00:03:48' AS Time), 6, 1)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (21, N'Ти уволен', 2, CAST(N'00:04:54' AS Time), 6, 1)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (22, N'А метель метет белая', 2, CAST(N'00:04:44' AS Time), 6, 1)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (23, N'А я у гай ходила...', 2, CAST(N'00:02:27' AS Time), 6, 1)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (24, N'I saw her standing there', 3, CAST(N'00:02:50' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (25, N'Misery', 3, CAST(N'00:01:44' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (26, N'Anna (Go to Him)', 3, CAST(N'00:02:52' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (27, N'Chains', 3, CAST(N'00:02:20' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (28, N'Boys', 3, CAST(N'00:02:20' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (29, N'Ask me why', 3, CAST(N'00:02:20' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (30, N'Please please me', 3, CAST(N'00:01:58' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (31, N'Love me do', 3, CAST(N'00:02:15' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (32, N'P.S. I love you', 3, CAST(N'00:02:00' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (33, N'Baby it`s you', 3, CAST(N'00:02:29' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (34, N'Do you want to know a secret', 3, CAST(N'00:01:52' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (35, N'A taste of Honey', 3, CAST(N'00:01:59' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (36, N'There`s a place', 3, CAST(N'00:01:46' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (37, N'Twist and shout', 3, CAST(N'00:02:30' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (38, N'Help!', 4, CAST(N'00:02:30' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (39, N'The night before', 4, CAST(N'00:02:37' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (40, N'You`ve got to hide your love away', 4, CAST(N'00:02:11' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (41, N'I need you', 4, CAST(N'00:02:32' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (42, N'Another girl', 4, CAST(N'00:02:08' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (43, N'You`re going to lose that girl', 4, CAST(N'00:02:20' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (44, N'Ticket to ride', 4, CAST(N'00:03:13' AS Time), 1, 6)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (45, N'Taxman', 5, CAST(N'00:02:36' AS Time), 1, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (46, N'Eleonor rigby', 5, CAST(N'00:02:11' AS Time), 1, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (47, N'Love you to', 5, CAST(N'00:02:11' AS Time), 1, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (48, N'Here, there and everywhere', 5, CAST(N'00:02:29' AS Time), 1, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (49, N'Yellow submarine', 5, CAST(N'00:02:40' AS Time), 1, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (50, N'She said she said', 5, CAST(N'00:02:39' AS Time), 1, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (51, N'Good day sunshine', 5, CAST(N'00:02:08' AS Time), 1, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (52, N'For no one', 5, CAST(N'00:02:37' AS Time), 1, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (53, N'I want to tell you', 5, CAST(N'00:02:30' AS Time), 1, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (54, N'Go to get you into my life', 5, CAST(N'00:02:31' AS Time), 1, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (55, N'Tomorrow never knows', 5, CAST(N'00:03:00' AS Time), 1, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (56, N'Міра', 6, CAST(N'00:04:02' AS Time), 5, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (57, N'День у день', 6, CAST(N'00:02:55' AS Time), 5, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (58, N'Хочу напитись тобою', 6, CAST(N'00:03:41' AS Time), 5, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (59, N'Пташка', 6, CAST(N'00:02:43' AS Time), 5, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (60, N'Зелені очі', 6, CAST(N'00:04:08' AS Time), 5, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (61, N'Коли тобі важко', 6, CAST(N'00:03:52' AS Time), 5, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (62, N'Як довго', 6, CAST(N'00:03:52' AS Time), 5, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (63, N'Неможу без тебе', 6, CAST(N'00:02:35' AS Time), 5, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (64, N'Лелеки ', 6, CAST(N'00:04:04' AS Time), 5, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (65, N'Ночі і дні', 6, CAST(N'00:03:02' AS Time), 5, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (66, N'Все буде добре', 6, CAST(N'00:03:11' AS Time), 5, 7)
INSERT [dbo].[Song] ([Id], [Name], [IdDisc], [Time], [IdArtist], [IdStyle]) VALUES (67, N'Моя мала', 6, CAST(N'00:03:39' AS Time), 5, 7)
SET IDENTITY_INSERT [dbo].[Song] OFF
GO
