const express = require('express');
require('dotenv').config();

const app = express();

app.get('/', (req, res) => {
  res.status(200).send('Hello from the web app!');
});

app.listen(process.env.PORT, () => {
  console.log(`Server listening on ${process.env.PORT}`);
});
