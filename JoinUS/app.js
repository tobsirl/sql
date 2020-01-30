const express = require('express');
const mysql = require('mysql');
require('dotenv').config();

const app = express();

const { DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE } = process.env;

// db connection
const db = mysql.createConnection({
  host: DB_HOST,
  user: DB_USER,
  password: DB_PASSWORD,
  database: DB_DATABASE
});

app.get('/', (req, res) => {
  res.status(200).send('Hello from the web app!');
});

app.get('/joke', (req, res) => {
  const joke =
    'What do you call a dog that does magic tricks? A labracadabrador.';
  res.send(joke);
});

app.get('/random', (req, res) => {
  const num = Math.floor(Math.random() * 10 + 1);
  res.send(`Your lucky number is ${num}`);
});

app.listen(process.env.PORT, () => {
  console.log(`Server listening on ${process.env.PORT}`);
});
