const express = require('express');
const mysql = require('mysql');
require('dotenv').config();

const app = express();

app.set('view engine', 'ejs');

// Body parser, reading data from the body into req.body
app.use(express.urlencoded());

const { DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE } = process.env;

// db connection
const db = mysql.createConnection({
  host: DB_HOST,
  user: DB_USER,
  password: DB_PASSWORD,
  database: DB_DATABASE
});

app.get('/', (req, res) => {
  db.query('SELECT COUNT(*) AS total FROM users', (err, results) => {
    if (err) console.warn(err);
    const total = results[0].total;
    res.render('home', { total });
    // res.status(200).send(`We have ${results[0].total} users in our database!`);
  });
});

app.post('/register', (req, res) => {
  const data = { email: req.body.email };
  console.log(req.body);
  res.send(data);
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
