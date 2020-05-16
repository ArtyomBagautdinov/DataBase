const { Pool } = require('pg');
const pool = new Pool({
    host: 'localhost',
    port: 5432,
    database: 'blimp',
    user: 'postgres',
    password: '{your database password}'
});

module.exports = pool;
