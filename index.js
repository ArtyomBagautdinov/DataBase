const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const getMethod = require('./get')


app.use(bodyParser.json())

app.use('/help', express.static('public'));

///////////////////////GET//////////////////////////////

app.get('/', (req, res) => {
    res.setHeader("content-type", "application/json");
    res.send("Перейдите в localhost:3000/help для прочтения руководства");

});

app.get('/profiles', async (req, res) => {
    const rows = await getMethod.readProfiles();
    const tmpString = JSON.stringify(rows);
    res.setHeader("content-type", "application/json")
    res.send(`{ "data": [ ` + JSON.stringify(rows).substring(1,tmpString.length-1)+ `] }`);
});

app.get('/events', async (req, res) => {
    const rows = await getMethod.readEvents();
    const tmpString = JSON.stringify(rows);
    res.setHeader("content-type", "application/json")
    res.send(`{ "data": [ ` + JSON.stringify(rows).substring(1,tmpString.length-1)+ `] }`);
});

app.get('/hobbies', async (req, res) => {
    const rows = await getMethod.readHobbies();
    const tmpString = JSON.stringify(rows);
    res.setHeader("content-type", "application/json")
    res.send(`{ "data": [ ` + JSON.stringify(rows).substring(1,tmpString.length-1)+ `] }`);
});

app.get('/countries', async (req, res) => {
    const rows = await getMethod.readCountries();
    const tmpString = JSON.stringify(rows);
    res.setHeader("content-type", "application/json")
    res.send(`{ "data": [ ` + JSON.stringify(rows).substring(1,tmpString.length-1)+ `] }`);
});

app.get('/cities', async (req, res) => {
    const rows = await getMethod.readCities();
    const tmpString = JSON.stringify(rows);
    res.setHeader("content-type", "application/json")
    res.send(`{ "data": [ ` + JSON.stringify(rows).substring(1,tmpString.length-1)+ `] }`);
});


app.get('/events&cityName=:city', async (req, res) => {
    const rows = await getMethod.readCityEvents(req.params.city);
    const tmpString = JSON.stringify(rows);
    res.setHeader("content-type", "application/json")
    res.send(`{ "data": [ ` + JSON.stringify(rows).substring(1,tmpString.length-1)+ `] }`);
});



app.get(`/events&profileName=:name`, async (req, res) => {
    const rows = await getMethod.readProfileEvents(req.params.name);
    const tmpString = JSON.stringify(rows);
    res.setHeader("content-type", "application/json")
    res.send(`{ "data": [ ` + JSON.stringify(rows).substring(1,tmpString.length-1)+ `] }`);
});


app.get(`/admins&eventName=:name`, async (req, res) => {
    const rows = await getMethod.readEventAdmins(req.params.name);
    const tmpString = JSON.stringify(rows);
    res.setHeader("content-type", "application/json")
    res.send(`{ "data": [ ` + JSON.stringify(rows).substring(1,tmpString.length-1)+ `] }`);
});



app.listen(5000, () => {
    console.log('Server listening on port 5000!');
});