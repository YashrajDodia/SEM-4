--Part – A
--1. Retrieve a unique genre of songs.
SELECT DISTINCT Genre FROM Songs;
--2. Find top 2 albums released before 2010.
SELECT TOP 2 Album_title from albums where Release_year < 2010;
--3. Insert Data into the Songs Table. (1245, ‘Zaroor’, 2.55, ‘Feel good’, 1005)
INSERT INTO SONGS VALUES (1245, 'Zaroor', 2.55, 'Feel good', 1005); 
--4. Change the Genre of the song ‘Zaroor’ to ‘Happy’
UPDATE Songs SET GENRE = 'HAPPY' WHERE Song_title = 'ZAROOR';
--5. Delete an Artist ‘Ed Sheeran’
delete from Artists where Artist_name = 'Ed Sheeran';
--6. Add a New Column for Rating in Songs Table. [Ratings decimal(3,2)]
alter table songs add Ratings decimal(3,2);
select * from songs;
--7. Retrieve songs whose title starts with 'S'.
select * from songs where Song_title like 'S%';
--8. Retrieve all songs whose title contains 'Everybody'.
select * from songs where Song_title like '%Everybody%';
--9. Display Artist Name in Uppercase.
select UPPER(Artist_name) from Artists;
--10. Find the Square Root of the Duration of a Song ‘Good Luck’
select SQRT(Duration) from songs where Song_title = 'Good Luck';
--11. Find Current Date.
select GETDATE();
--12. Find the number of albums for each artist.

--13. Retrieve the Album_id which has more than 5 songs in it.
--14. Retrieve all songs from the album 'Album1'. (using Subquery).
--15. Retrieve all albums name from the artist ‘Aparshakti Khurana’ (using Subquery)
--16. Retrieve all the song titles with its album title.
--17. Find all the songs which are released in 2020.
--18. Create a view called ‘Fav_Songs’ from the songs table having songs with song_id 101-105.
--19. Update a song name to ‘Jannat’ of song having song_id 101 in Fav_Songs view.
--20. Find all artists who have released an album in 2020.
--21. Retrieve all songs by Shreya Ghoshal and order them by duration. 