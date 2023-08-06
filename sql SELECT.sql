----Вторая задача----

select Название, MAX(Длительность) from Треки GROUP by Название;
select Название from Треки where Длительность >= 3.5; 
select Название from Сборник where Выход >= '2018-01-01' and Выход <= '2020-12-31'; 
select Имя from Исполнители WHERE Имя NOT LIKE '% %';     
select Название from Треки where Название = 'мой' or Название = 'my';


----Третья задача----

select Название, Количество_исполнителей from Жанр;   
select *, Выход  from Альбом a  join Треки t on a.Альбом_id = t.Треки_id;   
select COUNT(Выход)from Альбом;
select *, Длительность from Альбом a  join Треки t on a.Альбом_id = t.Треки_id;
select avg(Длительность)from Альбом where Название;  
select *, Выпуск from Исполнители i join Альбом a no i.Исполнители_id = a.Альбом_id where Выпуск = 2020; 
select Название, Имя from Сборник s join Исполнители i on s.Сборник_id = i.Исполнители_id where Имя = 'Шнур Шнурович';