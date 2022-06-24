const pgp = require('pg-promise')({

    query: e => {

        console.log(`QUERY: `, e.query)
    }

});

const options = {
    host: 'localhost',
    database: 'inventory-app'
}

// make a connection to the database, specified by the options object
const db = pgp(options);

module.exports = db;
const express = require('express');
const app = express();
const port = 4000;


app.use(express.urlencoded({extended: false}));



app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
