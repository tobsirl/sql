const express = require('express');
const cors = require('cors');
require('dotenv').config();
const pool = require('./db');

const app = express();

// middleware
app.use(cors());
app.use(express.json());

// Routes

// Create a todo
app.post('/todos', async (req, res) => {
  try {
    const { description } = req.body;
    const newTodo = await pool.query(
      'INSERT INTO todo (description) VALUES($1) RETURNING *',
      [description]
    );

    res.status(201).json({
      status: 'Success',
      data: newTodo.rows[0]
    });
  } catch (err) {
    console.error(err.message);
  }
});

// Get all todos
app.get('/todos', async (req, res) => {
  try {
    const todos = await pool.query('SELECT * FROM todo');

    res.status(200).json({
      status: 'Success',
      data: todos.rows
    });
  } catch (err) {
    console.error(err.message);
  }
});

// Get a todo
app.get('/todos/:id', async (req, res) => {
  try {
    const { id } = req.params;

    const todo = await pool.query('SELECT * FROM todo WHERE todo_id=$1', [id]);

    res.status(200).json({
      status: 'Success',
      data: todo.rows[0]
    });
  } catch (err) {
    console.error(err.message);
  }
});

// Update a todo
app.put('/todos/:id', async (req, res) => {
  try {
    const { id } = req.params;
    const { description } = req.body;

    const updateTodo = await pool.query(
      'UPDATE todo SET description = $1 WHERE todo_id = $2 RETURNING *',
      [description, id]
    );

    res.status(200).json({
      status: 'Success',
      data: updateTodo.rows[0]
    });
  } catch (err) {
    console.error(err.message);
  }
});

// Delete a todo
app.delete('/todos/:id', async (req, res) => {
  try {
    const { id } = req.params;

    await pool.query('DELETE FROM todo WHERE todo_id=$1', [id]);

    res.status(200).json({
      status: 'Success',
      data: 'Todo successfully deleted'
    });
  } catch (err) {
    console.error(err.message);
  }
});

app.all('*', (req, res, next) => {
  res.status(404).json({
    status: 'failed',
    data: `Can't find ${req.originalUrl} on this server!`
  });
  next();
});

const PORT = process.env.PORT;

app.listen(PORT, () => {
  console.log(`Server listening on ${PORT}`);
});
