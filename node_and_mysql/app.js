const mysql = require('mysql');
const faker = require('faker');

const db = mysql.createConnection({
  user: 'root',
  password: 'Mylowow09',
  database: 'join_us'
});

// db.query('CREATE DATABASE join_us');
// db.query('USE join_us');
db.query('SELECT CURDATE()', (error, results, fields) => {
  if (error) console.warn(error);
  console.log(results);
});

db.end();
