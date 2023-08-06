create table if not exists Жанр(
	Жанр_id SERIAL PRIMARY key,
	Название VARCHAR(20) UNIQUE NOT null	
);

create table if not exists Исполнители(
	Исполнители_id SERIAL PRIMARY key,	
	Имя varchar(20) NOT null	
);
	

create table if not exists Исполнители_и_Жанр(
	Жанр integer references Жанр(Жанр_id),
	Исполнители integer references Исполнители(Исполнители_id),
	constraint pk primary key(Жанр, Исполнители)
);

create table if not exists Альбом(
	Альбом_id SERIAL primary key,
	Название VARCHAR(50) UNIQUE NOT null,	
	release integer check(release>1980),
);
	

create table if not exists Исполнители_и_Альбом(
	Альбом integer references Альбом(Альбом_id),
	Исполнитель integer references Исполнители(Исполнители_id),
	constraint pk1 primary key(Альбом, Исполнитель)
);

create table if not exists Треки(
	Треки_id SERIAL primary key,
	Альбом integer references Альбом(Альбом_id), 
	Название VARCHAR(50) UNIQUE NOT null,
	Длительность numeric(10) check(Длительность>2) NOT null	
);	
	
create table if not exists Сборник(
	Сборник_id SERIAL primary key,
	Название VARCHAR(50) UNIQUE NOT null,
	release integer check(release>1980)
	
);
	
create table if not exists Сборник_и_Треки(
	Сборник integer references Сборник(Сборник_id),
	Треки integer references Треки(Треки_id),
	constraint pk2 primary key(Сборник, Треки)
);