const mysql = require('mysql');
const faker = require('faker');
require('dotenv').config();

const db = mysql.createConnection({
  user: 'root',
  password: process.env.DB_PASS,
  database: 'join_us'
});

// db.query('CREATE DATABASE join_us');
// db.query('USE join_us');

const sqlQuery = 'SELECT CURTIME() AS time, CURDATE() AS date, NOW() AS now';

db.query(sqlQuery, (error, results, fields) => {
  if (error) console.warn(error);
  console.log(results[0].time);
  console.log(results[0].date);
  console.log(results[0].now);
});

db.end();
