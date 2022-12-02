USE	MusicStore
GO

--************************************************************************************************************************
/*
■ Тригер не дозволяє додати альбом, що вже існує в колекції;
*/

---------------------ТРИГЕР-----------------------
CREATE TRIGGER StopDoubleDisc
ON [Disc]
INSTEAD OF INSERT 
AS
	BEGIN
		DECLARE @InsertName nvarchar(50)

		SELECT @InsertName = Name 
		FROM inserted

		if (EXISTS (SELECT [Name] 
					FROM [Disc] 
					WHERE [Disc].[Name] = @InsertName))
			BEGIN
				RAISERROR('Альбом з такою назвою вже існує у колекції!',0,1)
				ROLLBACK TRANSACTION
			END
		else
			BEGIN

				INSERT INTO [Disc] ([Name], [IdArtist], [DatePublish], [IdPublisher], [IdStyle])
				SELECT [Name], [IdArtist], [DatePublish], [IdPublisher], [IdStyle]
				FROM inserted
				PRINT ('Альбом успішно додано')
			END

	END
-----------------------END-------------------------
		
-----------------Перевірка роботи------------------

--Назва такого альбому вже є
INSERT INTO [Disc] VALUES ('Чита Дрита',4, CAST(N'2003-03-05' AS Date), 1, 5)
INSERT INTO [Disc] VALUES ('Ха-ра-шо!',4, CAST(N'2003-03-05' AS Date), 1, 5)
--Такої назви альбому немає
INSERT INTO [Disc] VALUES ('Чита',4, CAST(N'2002-01-05' AS Date), 1, 5)
INSERT INTO [Disc] VALUES ('Test',4, CAST(N'2002-01-05' AS Date), 1, 5)
INSERT INTO [Disc] VALUES ('Test1',4, CAST(N'2002-01-05' AS Date), 1, 5)

-----------------------END-------------------------


--************************************************************************************************************************
/*
■ Тригер, який не дозволяє видаляти диски гурту The Beatles
*/

---------------------ТРИГЕР-----------------------
GO
CREATE TRIGGER CantDeleteBeatlesDisc
ON [Disc]
FOR DELETE 
AS
	BEGIN
		--- отримання айді групи бітлз
		DECLARE @GetID int
		
		SELECT  @GetID = [Artist].[Id]
		FROM [Artist]
		WHERE 
		[Artist].[Name] = 'The Beatles'

		DECLARE @DeletedID int
		SELECT @DeletedID = IdArtist 
		FROM deleted

		if (@DeletedID = @GetID)
			BEGIN
				RAISERROR('Видаляти диски групи Бітлз - ЗАБОРОНЕНО!',0,1)
				ROLLBACK TRANSACTION
			END
		else
			BEGIN
				PRINT ('Диск успішно видалено')
			END
	END

-----------------Перевірка роботи------------------

--Видаляємо диск всі диски Бітлз
DELETE 
FROM [Disc]
WHERE [Disc].[IdArtist] = 1

--Видаляємо диск Бітлз 'Help!'
DELETE 
FROM [Disc]
WHERE [Disc].[Name] ='Help!'

--Видаляємо диск Бітлз по айдішніку
DELETE 
FROM [Disc]
WHERE [Disc].[Id] = 4

--Видаляємо диск іншого виконавця
DELETE 
FROM [Disc]
WHERE [Disc].[Name] ='Ха-ра-шо!'

-----------------------END-------------------------



--************************************************************************************************************************
/*
■ При видаленні диска тригер переносить інформацію про віддалений диск до таблиці «Архів»;
*/
---------------------ТРИГЕР-----------------------
GO
CREATE TRIGGER MoveDeletedToArhive
ON [Disc]
FOR DELETE 
AS
	BEGIN
		IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='DiscArhive' and xtype='U') ---< конструкцію такої форми підглянув в інтернеті, як аналог у MySQL (CREATE TABLE IF NOT EXISTS)
			BEGIN
				CREATE TABLE [DiscArhive]
					(
						[Id] int not null identity(1,1) primary key,
						[Name] nvarchar(50) not null check([Name] <> N''),
						[IdArtist] int not null,
						[DatePublish] date not null check([DatePublish] <= GETDATE()),
						[IdPublisher] int not null,
						[IdStyle] int not null
					)
			END
		
		INSERT INTO [DiscArhive] ([Name], [IdArtist], [DatePublish], [IdPublisher], [IdStyle])
		SELECT [Name], [IdArtist], [DatePublish], [IdPublisher], [IdStyle]
		FROM deleted
		PRINT ('Диск успішно переміщено у таблицю ДискАрхів')
		
	END
-----------------------END-------------------------

-----------------Перевірка роботи------------------

--Видаляємо диски
DELETE 
FROM [Disc]
WHERE [Disc].[Name] ='Ха-ра-шо!'

DELETE 
FROM [Disc]
WHERE [Disc].[Name] ='Test'

DELETE 
FROM [Disc]
WHERE [Disc].[Name] ='Test1'

---Перевіремо архівну таблицю
SELECT *
FROM [DiscArhive]
-----------------------END-------------------------


--************************************************************************************************************************
/*
■ Тригер не дозволяє додавати в колекцію диски музичного стилю «Dark Power Pop».
*/
GO
CREATE TRIGGER AntiDarkPowerPop
ON [Disc]
FOR INSERT 
AS
	BEGIN
		DECLARE @Insert int

		SELECT @Insert = IdStyle 
		FROM inserted

		if (@Insert = (SELECT [Id] 
						FROM [Style] 
						WHERE [Style].[Name] = 'Dark Power Pop' ))
			BEGIN
				RAISERROR('Стиль Dark Power Pop не бажаний в колекції, тому його не добавлено',0,1)
				ROLLBACK TRANSACTION
			END
		else
			BEGIN
				INSERT INTO [Disc] ([Name], [IdArtist], [DatePublish], [IdPublisher], [IdStyle])
				SELECT [Name], [IdArtist], [DatePublish], [IdPublisher], [IdStyle]
				FROM inserted
				PRINT ('Альбом успішно додано')
			END
	END

-----------------Перевірка роботи------------------
--Додаємо звичайний диск
INSERT INTO [Disc] VALUES ('Тест123',4, CAST(N'2002-01-05' AS Date), 1, 5)
--Додаємо диск Dark Power Pop
INSERT INTO [Disc] VALUES ('Test666',4, CAST(N'2002-01-05' AS Date), 1, 8)
INSERT INTO [Disc] VALUES ('Test777',4, CAST(N'2002-01-05' AS Date), 1, 8)