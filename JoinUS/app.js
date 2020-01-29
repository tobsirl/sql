const express = require('express');
require('dotenv').config()

const app = express();

app.listen(PORT, () => {
  console.log(`Server listening on ${PORT}`);
});
