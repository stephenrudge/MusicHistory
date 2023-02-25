SELECT
    Id,
    Title,
    SongLength,
    ReleaseDate,
    GenreId,
    ArtistId,
    AlbumId
FROM Song;

--Output:

----1	Revenge	61	12/03/1982	9	8	22
----2	White Minority	69	12/03/1982	9	8	22
----3	Gimme Gimme Gimme	120	12/03/1982	9	8	22
----4	No Values	118	12/03/1982	9	8	22
----5	TV Party	232	06/12/1982	9	8	21
----6	I've Got To Run	105	06/12/1982	9	8	21
----7	My Rules	71	06/12/1982	9	8	21
----8	Gimme All Your Lovin	507	3/23/1983	2	3	17
----9	Sharp Dressed Man	419	3/23/1983	2	3	17
----10	Legs	309	3/23/1983	2	3	17
----11	I Need You Tonight	470	3/23/1983	2	3	17
----12	TV Dinners	539	3/23/1983	2	3	17
----13	Thug	925	3/23/1983	2	3	17
----14	Taxman	714	8/5/1966	7	6	5
----15	Eleanor Rigby	807	8/5/1966	7	6	5
----16	Good Day Sunshine	350	8/5/1966	7	6	5
----17	Got To Get You Into My Life	574	8/5/1966	7	6	5
----18	Interlude	237	12/03/1982	13	27	1
----19	What More Can I Say	150	12/03/1982	13	27	1
----20	Encore	260	12/03/1982	13	27	1
----21	Dirt Off Your Shoulder	851	12/03/1982	13	27	1

SELECT
    Id,
    Title,
    ReleaseDate
FROM Song;

--Output
----1	Revenge	12/03/1982
----2	White Minority	12/03/1982
----3	Gimme Gimme Gimme	12/03/1982
----4	No Values	12/03/1982
----5	TV Party	06/12/1982
----6	I've Got To Run	06/12/1982
----7	My Rules	06/12/1982
----8	Gimme All Your Lovin	3/23/1983
----9	Sharp Dressed Man	3/23/1983
----10	Legs	3/23/1983
----11	I Need You Tonight	3/23/1983
----12	TV Dinners	3/23/1983
----13	Thug	3/23/1983
----14	Taxman	8/5/1966
----15	Eleanor Rigby	8/5/1966
----16	Good Day Sunshine	8/5/1966
----17	Got To Get You Into My Life	8/5/1966
----18	Interlude	12/03/1982
----19	What More Can I Say	12/03/1982
----20	Encore	12/03/1982
----21	Dirt Off Your Shoulder	12/03/1982

SELECT
    Id,
    Title,
    SongLength,
    ReleaseDate,
    GenreId,
    ArtistId,
    AlbumId
FROM Song
WHERE SongLength > 100;

--output
----11	I Need You Tonight	470	3/23/1983	2	3	17
----12	TV Dinners	539	3/23/1983	2	3	17
----13	Thug	925	3/23/1983	2	3	17
----14	Taxman	714	8/5/1966	7	6	5
----15	Eleanor Rigby	807	8/5/1966	7	6	5
----16	Good Day Sunshine	350	8/5/1966	7	6	5
----17	Got To Get You Into My Life	574	8/5/1966	7	6	5
----18	Interlude	237	12/03/1982	13	27	1
----19	What More Can I Say	150	12/03/1982	13	27	1
----20	Encore	260	12/03/1982	13	27	1
----21	Dirt Off Your Shoulder	851	12/03/1982	13	27	1



SELECT s.Title,
       a.ArtistName
  FROM Song s
       LEFT JOIN Artist a on s.ArtistId = a.id;
--output


--Taxman	            Beatles
--Eleanor Rigby	    Beatles
--Good Day Sunshine	Beatles
--Got To Get You Into My Life	Beatles
--Interlude	Jay Z
--What More Can I Say	Jay Z
--Encore	Jay Z
--Dirt Off Your Shoulder	Jay Z

INSERT INTO Genre (Name) VALUES ('Techno');

SELECT * FROM Genre

select SongLength from Song where Id = 18;

-- The following is the output you get when you run the query above.
--> 237

update Song
set SongLength = 515
where Id = 18;

-- Once you run the update statement, in order to make sure the value has changed, we run the select query again.
select SongLength from Song where Id = 18;
--> 515

delete from Song where Id > 15;
delete from Genre where Id > 15;

  


--SELECT 