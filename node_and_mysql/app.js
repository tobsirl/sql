const mysql = require('mysql');
const faker = require('faker');
require('dotenv').config();

const { DB_USER, DB_PASS } = process.env;

const db = mysql.createConnection({
  user: DB_USER,
  password: DB_PASS,
  database: 'join_us'
});

// db.query('CREATE DATABASE join_us');
// db.query('USE join_us');

// SELECTING DATA
// const sqlQuery = 'SELECT COUNT(*) AS total FROM users';

// db.query(sqlQuery, (error, results, fields) => {
//   if (error) console.warn(error);
//   console.log(results[0].total);
// });


// INSERTING DATA
const q = 'INSERT INTO users (email) VALUES ("rusty_the_dog@gmail.com")';
 
connection.query(q, function (error, results, fields) {
  if (error) throw error;
  console.log(results);
});

db.end();
