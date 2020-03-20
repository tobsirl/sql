const express = require('express');
const cors = require('cors');

const app = express();

// middleware
app.use(cors());
app.use(express.json());

app.get('/', (req, res) => {
  res.status(200).json({
    status: success,
    data: 'HI'
  });
});

const PORT = 5000;

app.listen(PORT, () => {
  console.log(`Server listening on ${PORT}`);
});
