const pool = require('./connection');

module.exports.readProfiles = async function () {
    try {
        const results = await pool.query('SELECT * FROM Profile');
        return results.rows;
    }
    catch (e) {
        return [];
    }
}

module.exports.readEvents = async function () {
    try {
        const results = await pool.query('SELECT * FROM Event');
        return results.rows;
    }
    catch (e) {
        return [];
    }
}


module.exports.readHobbies = async function () {
    try {
        const results = await pool.query('SELECT * FROM Hobby');
        return results.rows;
    }
    catch (e) {
        return [];
    }
}

module.exports.readCountries = async function () {
    try {
        const results = await pool.query('SELECT * FROM Country');
        return results.rows;
    }
    catch (e) {
        return [];
    }
}

module.exports.readCities = async function () {
    try {
        const results = await pool.query('SELECT * FROM City');
        return results.rows;
    }
    catch (e) {
        return [];
    }
}


module.exports.readCityEvents = async function (cityName) {
    var sqlQuerry = `SELECT eventTitle FROM Event
                     JOIN CityEvent ON CityEvent.eventId = Event.eventId
                     JOIN City ON City.cityId = CityEvent.cityId
                     WHERE City.cityName = '${cityName}';
                    `
    try {
        const results = await pool.query(sqlQuerry);
        return results.rows;
    }
    catch (e) {
        return [];
    }
}

module.exports.readProfileEvents = async function (profileNickName){
    var sqlQuerry = `SELECT eventTitle FROM Event
                     JOIN EventParticipant ON EventParticipant.eventId = Event.eventId
                     JOIN Profile ON Profile.profileId = EventParticipant.profileId
                     WHERE Profile.profileNickName = '${profileNickName}';
                    `
    try {
        const results = await pool.query(sqlQuerry);
        return results.rows;
    }
    catch (e) {
        return [];
    }
}

module.exports.readEventAdmins = async function (eventTitle) {
    var sqlQuerry = `SELECT profileFirstName, profileLastName FROM Profile
                     JOIN EventAdmin ON EventAdmin.profileId = Profile.profileId
                     JOIN Event ON Event.eventId = EventAdmin.eventId
                     WHERE Event.eventTitle = '${eventTitle}';
                    `
    try {
        const results = await pool.query(sqlQuerry);
        return results.rows;
    }
    catch (e) {
        return [];
    }
}

///////////////////////////////////////////////////////////////////

