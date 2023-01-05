INSERT INTO Genre (name_genre)
VALUES ('поп-музыка'),
       ('русский рок'),
       ('лаундж'),
       ('эксперементальная'),
       ('современная классика'),
       ('электронника'),
       ('иностранный рок'),
       ('поп-рок');
       
INSERT INTO Singers(name_singer, album)
VALUES ('Хабиб', 'Ягода малинка'),
       ('Ляпис Тубецкой', 'Ты кинула'),
       ('Shaman', 'До самого неба'),
       ('Imagine Dragons', 'Evolve'), 
       ('Gramatik', 'Synthopia Prime'),
       ('Nico Bellovic', 'We Won'),
       ('Timofey Beynarovich', 'Dream of Freedom'),
       ('Lindsey Stirling', 'Shatter me'),
       ('Evanescence', 'Fallen');
      
 INSERT INTO Albums(name_album, release_year, name_singer)
 VALUES ('Ягода малинка', '2020', 'Хабиб'),
        ('Evolve', '2017', 'Imagin Dragons'),
        ('До самого неба', '2021', 'Shaman'),
        ('Ты кинула', '1998', 'Ляпис Трубецкой'),
        ('Synthopia Prime', '2016', 'Gramatik'),
        ('We Won', '2022', 'Nico Bellovic'),
        ('Dream of Freedom', '2022', 'Timofey Beynarovich'),
        ('Shatter me', '2014', 'Lindsey Stirling'),
        ('Fallen', '2003', 'Evanscence');
       
INSERT INTO Tracks(name_track, length_track, album)
VALUES ('Грустинка', '2:26', 'Ягода малинка'),
       ('Ягода малинка', '2:27', 'Ягода малинка'),
       ('Thunder', '3:07', 'Evolve'),
       ('Believer', '3:24', 'Evolve'),
       ('Whatever it takes', '3:21', 'Evolve'),
       ('До самого неба', '3:00', 'До самого неба'),
       ('В платье белом', '4:58', 'Ты кинула'),
       ('Пастушок', '4:38', 'Ты кинула'),
       ('Party or Somerthing', '1:31', 'Synthopia Prime'),
       ('Just a Girl', '1:54', 'We Won'),
       ('Dream of Freedom', '2:54', 'Dream of Freedom'),
       ('Shatter me', '4:40', 'Shatter me'),
       ('Bring me to my life', '3:57', 'Fallen'),
       ('Going Under', '3:34', 'Fallen'),
       ('John the man', '1:54', 'We Won');
       
INSERT INTO Collections(name_collection, release_year, track)
VALUES ('Русский хит 2020-2021', '2021', 'Грустинка'),
       ('Top greatest hits', '2022', 'Thunder'),
       ('Топ 25 песен Imagin Dragons', '2019', 'Whatever it takes'),
       ('Дискотека 90-х', '2010', 'В платье белом'),
       ('Странная музыка 2022', '2022', 'Just a Girl'),
       ('Современная классика', '2017', 'Shatter me'),
       ('Хиты 2003 года', '2004', 'Bring me to my life'),
       ('Союз 32', '2016', 'Bring me to my life');