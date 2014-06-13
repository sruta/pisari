INSERT INTO Libro(ISBN, titulo, cantPaginas, precio, fecha, idEditorial, sinopsis, foto, idIdioma)
VALUES (123456789, 'Cocina en Casa', 430, 55.00, '25/05/2012', 4, 'una Sinopsis', 'FOTOSLIBRO\1.JPG', 1)

SELECT * FROM Idioma
SELECT * FROM Editorial
SELECT * FROM libro
SELECT * FROM autor

select isnull(max(idAutor),0)
from autor

insert into autor(nombre)
values ('Gabriel Garcia Marquez')

delete from autor where idAutor > 33