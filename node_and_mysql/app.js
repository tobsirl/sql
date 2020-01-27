const mysql = require('mysql');
const faker = require('faker');

const db = mysql.createConnection({
  user: 'root',
  password: 'Mylowow09',
  database: 'join_us'
});

// db.query('CREATE DATABASE join_us');
// db.query('USE join_us');

const sqlQuery = 'SELECT CURTIME() AS time, CURDATE() AS date, NOW() AS now';

db.query(sqlQuery, (error, results, fields) => {
  if (error) console.warn(error);
  console.log(results[0]);
});

db.end();
