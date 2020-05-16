INSERT INTO Country(countryName) VALUES('Россия');
INSERT INTO Country(countryName) VALUES('Беларусь');
INSERT INTO Country(countryName) VALUES('Украина');
INSERT INTO Country(countryName) VALUES('Казахстан');

INSERT INTO Hobby(hobbyName) VALUES('IT');
INSERT INTO Hobby(hobbyName) VALUES('Рисование');
INSERT INTO Hobby(hobbyName) VALUES('Политика');
INSERT INTO Hobby(hobbyName) VALUES('Роспил бюджетов');


INSERT INTO City(cityName,countryId) VALUES('Москва',1);
INSERT INTO City(cityName,countryId) VALUES('Калининград',1);
INSERT INTO City(cityName,countryId) VALUES('Краснодар',1);

INSERT INTO City(cityName,countryId) VALUES('Минск',2);
INSERT INTO City(cityName,countryId) VALUES('Брест',2);

INSERT INTO City(cityName,countryId) VALUES('Киев',3);
INSERT INTO City(cityName,countryId) VALUES('Одесса',3);

INSERT INTO City(cityName,countryId) VALUES('Нур-Султан',4);
INSERT INTO City(cityName,countryId) VALUES('Караганда',4);

INSERT INTO Profile(cityName,
                    countryId) VALUES('Караганда',4);


INSERT INTO Profile(profileNickName, 
                    profileEmail, 
                    profilePassword, 
                    profileFirstName, 
                    profileLastName, 
                    profileAboutMe,
                    profileBirthday,
                    profileRegistrationDate,
                    profileCityId)
            VALUES('Liberty_800',
                   'bagautdinovartyom@gmail.com',
                   'password123',
                   'Артем',
                   'Багаутдинов',
                   'Студент 4-го курса прикладной математики',
                   '1999-04-14',
                   '2020-05-15',
                    2);

INSERT INTO Profile(profileNickName, 
                    profileEmail, 
                    profilePassword, 
                    profileFirstName, 
                    profileLastName, 
                    profileAboutMe,
                    profileBirthday,
                    profileRegistrationDate,
                    profileCityId)
            VALUES('JacksonArcher',
                   'euginesmith@gmail.com',
                   'password1313',
                   'Евгений',
                   'Завдовьев',
                   'Студент 4-го курса прикладной математики, топ Си кодер',
                   '1999-12-09',
                   '2020-05-14',
                    2);

INSERT INTO Profile(profileNickName, 
                    profileEmail, 
                    profilePassword, 
                    profileFirstName, 
                    profileLastName, 
                    profileAboutMe,
                    profileBirthday,
                    profileRegistrationDate,
                    profileCityId)
            VALUES('Paulina',
                   'chernovapoulina@gmail.com',
                   'bestpassword',
                   'Полина',
                   'Чернова',
                   'Студентка 4-го курса прикладной математики, пишу под IOS',
                   '2000-01-14',
                   '2020-05-12',
                    2);

					
INSERT INTO Profile(profileNickName, 
                    profileEmail, 
                    profilePassword, 
                    profileFirstName, 
                    profileLastName, 
                    profileAboutMe,
                    profileBirthday,
                    profileRegistrationDate,
                    profileCityId)
            VALUES('demikud71',
                   'demkud@gmail.com',
                   'coolpassword',
                   'Демьян',
                   'Кудрявцев',
                   'Владею Ведомостями',
                   '1971-12-17',
                   '2020-05-10',
                    1);

INSERT INTO Profile(profileNickName, 
                    profileEmail, 
                    profilePassword, 
                    profileFirstName, 
                    profileLastName, 
                    profileAboutMe,
                    profileBirthday,
                    profileRegistrationDate,
                    profileCityId)
            VALUES('nazarback40',
                   'nursultan@list.ru',
                   'nazarpassword',
                   'Нурсултан',
                   'Назарбаев',
                   'Первый президент Казахстана',
                   '1940-07-06',
                   '2020-05-10',
                    8);

INSERT INTO Profile(profileNickName, 
                    profileEmail, 
                    profilePassword, 
                    profileFirstName, 
                    profileLastName, 
                    profileAboutMe,
                    profileBirthday,
                    profileRegistrationDate,
                    profileCityId)
            VALUES('zininNick',
                   'leonidZinin@list.ru',
                   'complitepassword',
                   'Леонид',
                   'Зинин',
                   'Преподаватель в БФУ им. Канта',
                   '1958-01-01',
                   '2020-05-08',
                    2);

INSERT INTO Profile(profileNickName, 
                    profileEmail, 
                    profilePassword, 
                    profileFirstName, 
                    profileLastName, 
                    profileAboutMe,
                    profileBirthday,
                    profileRegistrationDate,
                    profileCityId)
            VALUES('savkinNickname',
                   'savkind@list.ru',
                   'yourPassword',
                   'Дмитрий',
                   'Савкин',
                   'Преподаватель БД в БФУ им. Канта',
                   '1968-04-06',
                   '2020-05-06',
                    2);

INSERT INTO ProfileHobby(profileId, hobbyId) VALUES(1,1);
INSERT INTO ProfileHobby(profileId, hobbyId) VALUES(1,2);
INSERT INTO ProfileHobby(profileId, hobbyId) VALUES(1,3);

INSERT INTO ProfileHobby(profileId, hobbyId) VALUES(2,1);
INSERT INTO ProfileHobby(profileId, hobbyId) VALUES(2,3);

INSERT INTO ProfileHobby(profileId, hobbyId) VALUES(3,1);

INSERT INTO ProfileHobby(profileId, hobbyId) VALUES(4,3);

INSERT INTO ProfileHobby(profileId, hobbyId) VALUES(5,3);
INSERT INTO ProfileHobby(profileId, hobbyId) VALUES(5,4);


INSERT INTO Event(eventTitle,
				  eventDescription,
			 	  eventOpenPrivacy,
				  eventCityId,
				  eventAdress,
				  eventPlaceName,
				  eventMaxParticipants,
				  eventBegin,
				  eventEnd,
				  isActive,
				  isFinished,
				  eventLongitude,
				  eventLatitude,
				  eventFounderId)
			VALUES('Защита работы',
				   'Защита курсовой по дисцелине "Программирование в мультипроцессорных системах" ',
				   true,
				   1,
				   'г.Калининград ул. Невского,14 учебный корпус',
				   'БФУ им Канта',
				   100,
				   '2020-05-29 14:00:00',
				   '2020-05-29 15:00:00',
				   false,
				   false,
				   '54.7241724',
				   '20.5275348',
				   1);

INSERT INTO Event(eventTitle,
				  eventDescription,
			 	  eventOpenPrivacy,
				  eventCityId,
				  eventAdress,
				  eventPlaceName,
				  eventMaxParticipants,
				  eventBegin,
				  eventEnd,
				  isActive,
				  isFinished,
				  eventLongitude,
				  eventLatitude,
				  eventFounderId)
			VALUES('ДФМ всея Физмата',
				   'Главный приздник года в БФУ ',
				   true,
				   2,
				   'г.Калининград ул. Невского,14 учебный корпус',
				   'БФУ им Канта',
				   5000,
				   '2021-04-14 9:00:00',
				   '2021-05-15 20:00:00',
				   false,
				   false,
				   '54.7241724',
				   '20.5275348',
				   6);


INSERT INTO EventParticipant(profileId, eventId) VALUES(1,2);
INSERT INTO EventParticipant(profileId, eventId) VALUES(1,1);
INSERT INTO EventParticipant(profileId, eventId) VALUES(2,2);
INSERT INTO EventParticipant(profileId, eventId) VALUES(3,2);
INSERT INTO EventParticipant(profileId, eventId) VALUES(4,2);
INSERT INTO EventParticipant(profileId, eventId) VALUES(5,2);
INSERT INTO EventParticipant(profileId, eventId) VALUES(6,2);
INSERT INTO EventParticipant(profileId, eventId) VALUES(7,2);

INSERT INTO EventAdmin(profileId, eventId) VALUES(6,2);
INSERT INTO EventAdmin(profileId, eventId) VALUES(7,2);

INSERT INTO CityEvent(cityId,eventId) VALUES(2,1);
INSERT INTO CityEvent(cityId,eventId) VALUES(2,2);

