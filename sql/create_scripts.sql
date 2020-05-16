CREATE TABLE Profile(
	profileId SERIAL PRIMARY KEY,
	profileNickName VARCHAR(100),
	profileEmail VARCHAR(60),
	profilePassword VARCHAR(50),
	profileFirstName VARCHAR(50),
	profileLastName VARCHAR(50),
	profileAboutMe text,
	profileRate real DEFAULT 10.0,
	profileBirthday date,
	profileAvatar VARCHAR(200) DEFAULT 'https://sun9-71.userapi.com/c855416/v855416895/da7bc/aB245eOrBdk.jpg' NOT NULL,
	profileRegistrationDate timestamp
);

ALTER TABLE Profile
ALTER COLUMN profileRate SET DEFAULT 10.0;

ALTER TABLE Profile
ADD CONSTRAINT profileRate CHECK(profileRate>0 and profileRate<=10.0);

CREATE TABLE Friend(
	profileOneId INTEGER REFERENCES Profile (profileId) NOT NULL,
    profileTwoId INTEGER REFERENCES Profile(profileId) NOT NULL
);

CREATE TABLE Hobby(
	hobbyId SERIAL PRIMARY KEY,
	hobbyName VARCHAR(50)
);

CREATE TABLE Country(
	countryId SERIAL PRIMARY KEY,
	countryName VARCHAR(50) NOT NULL
);

CREATE TABLE City(
	cityId SERIAL PRIMARY KEY,
	cityName VARCHAR(50) NOT NULL,
	countryId INTEGER REFERENCES Country (countryId) NOT NULL
);


CREATE TABLE Event(
	eventId SERIAL PRIMARY KEY,
	eventTitle VARCHAR(200) NOT NULL,
	eventDescription text NULL,
	eventOpenPrivacy bool NOT NULL,
	eventCityId INTEGER REFERENCES City (cityId) NOT NULL,
	eventAdress VARCHAR(150) NOT NULL,
	eventPlaceName VARCHAR(100) NULL,
	eventMaxParticipants INTEGER DEFAULT 10000 CHECK(eventMaxParticipants >0 AND eventMaxParticipants < 10001) NOT NULL,
	eventBegin timestamp NOT NULL,
	eventEnd timestamp NOT NULL,
	isActive bool NOT NULL,
	isFinished bool NOT NULL,
	eventAvatar VARCHAR(100) DEFAULT 'https://sun9-71.userapi.com/c855416/v855416895/da7bc/aB245eOrBdk.jpg' NOT NULL,
	eventLongitude VARCHAR(12) NOT NULL,
	eventLatitude VARCHAR(12) NOT NULL,
    eventFounderId INTEGER REFERENCES Profile (profileId) NOT NULL
);


CREATE TABLE EventParticipant(
	profileId INTEGER REFERENCES Profile (profileId) NOT NULL,
	eventId INTEGER REFERENCES Event (eventId) NOT NULL
);

CREATE TABLE EventHobby(
	hobbyId INTEGER REFERENCES Hobby (hobbyId) NOT NULL,
	eventId INTEGER REFERENCES Event (eventId) NOT NULL
);

CREATE TABLE EventAdmin(
	profileId INTEGER REFERENCES Profile (profileId) NOT NULL,
	eventId INTEGER REFERENCES Event (eventId) NOT NULL
);

CREATE TABLE ProfileHobby(
	profileId INTEGER REFERENCES Profile (profileId) NOT NULL,
	hobbyId INTEGER REFERENCES Hobby (hobbyId) NOT NULL
);


CREATE TABLE Dialog(
	dialogId SERIAL PRIMARY KEY,
	dialogTitle VARCHAR(150) NOT NULL,
    dialogTimeCreate timestamp NOT NULL
);

CREATE TABLE Message(
	messageId SERIAL PRIMARY KEY,
	profileId INTEGER REFERENCES Profile (profileId) NOT NULL,
    dialogId INTEGER REFERENCES Dialog (dialogId) NOT NULL,
    messageTime timestamp NOT NULL,
    messageText text,
    messageIsChanged bool NOT NULL
);

ALTER TABLE Message
ALTER COLUMN messageIsChanged SET DEFAULT false;

CREATE TABLE DialogAdmin(
	dialogId INTEGER REFERENCES Dialog (dialogId) NOT NULL,
	profileId INTEGER REFERENCES Profile (profileId) NOT NULL
);


CREATE TABLE CityEvent(
	cityId INTEGER REFERENCES City (cityId) NOT NULL,
	eventId INTEGER REFERENCES Event (eventId) NOT NULL
);
