INSERT INTO Genre (name_genre)
VALUES ('поп-музыка'),
       ('русский рок'),
       ('лаундж'),
       ('эксперементальная'),
       ('современная классика'),
       ('электронника'),
       ('иностранный рок'),
       ('поп-рок');
       
INSERT INTO Singers(name_singer)
VALUES ('Хабиб'),
       ('Ляпис Тубецкой'),
       ('Shaman'),
       ('Imagine Dragons'), 
       ('Gramatik'),
       ('Nico Bellovic'),
       ('Timofey Beynarovich'),
       ('Lindsey Stirling'),
       ('Evanescence');
      
 INSERT INTO Albums(name_album, release_year)
 VALUES ('Ягода малинка', '2020'),
        ('Evolve', '2017'),
        ('До самого неба', '2021'),
        ('Ты кинула', '1998'),
        ('Synthopia Prime', '2016'),
        ('We Won', '2022'),
        ('Dream of Freedom', '2022'),
        ('Shatter me', '2014'),
        ('Fallen', '2003');
       
INSERT INTO Tracks(name_track, length_track, album)
VALUES ('Грустинка', '146', '1'),
       ('Ягода малинка', '147', '1'),
       ('Thunder', '187', '2'),
       ('Believer', '204', '2'),
       ('Whatever it takes', '201', '2'),
       ('До самого неба', '180', '3'),
       ('В платье белом', '258', '4'),
       ('Пастушок', '288', '4'),
       ('Party or Somerthing', '91', '5'),
       ('Just a Girl', '114', '6'),
       ('Dream of Freedom', '174', '7'),
       ('Shatter me', '280', '8'),
       ('Bring me to my life', '237', '9'),
       ('Going Under', '214', '9'),
       ('John the man', '114', '6');
      
INSERT INTO Tracks (id, name_track, length_track, album)
VALUES ('16','Shaman', '218', '3');
       
INSERT INTO Collections(name_collection, release_year)
VALUES ('Русский хит 2020-2021', '2021'),
       ('Top greatest hits', '2022'),
       ('Топ 25 песен Imagin Dragons', '2019'),
       ('Дискотека 90-х', '2010'),
       ('Странная музыка 2022', '2022'),
       ('Современная классика', '2017'),
       ('Хиты 2003 года', '2004'),
       ('Союз 32', '2016');
       
INSERT INTO Album_Singer(id_album, id_singer)
VALUES ('1', '1'),
       ('2', '4'),
       ('3', '3'),
       ('3', '1'),
       ('4', '2'),
       ('5', '5'),
       ('6', '6'),
       ('7', '7'),
       ('7', '8'),
       ('8', '8'),
       ('9', '9');
      
INSERT INTO Genre_Singer(genre_id, singer_id)
VALUES ('1', '1'),
       ('1', '3'),
       ('2', '2'),
       ('3', '5'),
       ('4', '6'),
       ('5', '7'),
       ('6', '8'),
       ('7', '9'),
       ('8', '4');
       
INSERT INTO Track_Collection (id_track, id_collection)
VALUES ('1', '1'),
       ('2', '1'),
       ('3', '2'),
       ('4', '3'),
       ('5', '3'),
       ('6', '1'),
       ('7', '4'),
       ('8', '4'),
       ('9', '6'),
       ('10', '5'),
       ('11', '6'),
       ('12', '6'),
       ('13', '8'),
       ('14', '7'),
       ('15', '5');
      
INSERT INTO track_collection (id, id_track)
VALUES ('16', '16');
       
       
       
       
       