    INSERT INTO Жанр(Название) values('Кантри'), ('Блюз'), ('Фолк');
	ALTER TABLE Жанр ADD Количество_исполнителей VARCHAR(50) NOT NULL;
	INSERT into Жанр(Количество_исполнителей) values(2), (5), (3);


    ALTER table Исполнители alter column Имя varchar(100) NOT null;	
    insert INTO Исполнители(Имя) values('Шевчук'), ('Шнур Шнурович'), ('Лепс'), ('Кипелов');


    insert into Альбом(Название) values ('Rumours'), ('Saturday Night Fever'), ('Millennium');
	alter table Альбом add Выпуск integer not null;   
	insert into Альбом(Выпуск) values (2020), (2020), (2015);


    insert into Треки(Название) values ('мой'), ('Б'), ('С'), ('В'), ('Т'), ('Н');
    insert into Треки(Длительность) values (3.4), (4.1), (4.9), (6.8), (2.1), (1.2);  
	ALTER table Треки add Выход integer NOT null;
	insert into Треки(Выход) values(2019), (2022), (2018), (2020), (2020), (2018);


    insert into Сборник(Название) values ('Про любовь'), ('День рождения'), ('Свадебные'), ('Медляки');
	ALTER table Сборник add Выход VARCHAR(50) NOT null;
	insert into Сборник(Выход) values('2019-01-01'), ('2010-02-01'), ('2020-02-02'), ('2018-01-01');


    
