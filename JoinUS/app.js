const express = require('express');
require('dotenv').config();

const app = express();

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
