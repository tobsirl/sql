const mysql = require('mysql');
const faker = require('faker');

const db = mysql.createConnection({
  user: 'root',
  password: 'Mylowow09',
  database: 'join_us'
});

// db.query('CREATE DATABASE join_us');
// db.query('USE join_us');
