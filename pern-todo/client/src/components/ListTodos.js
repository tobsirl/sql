import React, { useState, useEffect, Fragment } from 'react';

function ListTodos() {
  const [listTodos, setListTodos] = useState([]);

  const deleteTodo = async id => {
    try {
      await fetch(`http://localhost:5000/todos/${id}`, {
        method: 'DELETE'
      });

      setListTodos(listTodos.filter(todo => todo.todo_id !== id));
    } catch (err) {
      console.error(err.message);
    }
  };

  const getTodos = async () => {
    const response = await fetch('http://localhost:5000/todos');
    const todos = await response.json();
    console.log(todos.data);
    setListTodos([...todos.data]);
  };

  useEffect(() => {
    try {
      getTodos();
    } catch (err) {
      console.log(err.message);
    }
  }, []);

  return (
    <Fragment>
      <table className="table mt-5 text-center">
        <thead>
          <tr>
            <th>Description</th>
            <th>Edit</th>
            <th>Delete</th>
          </tr>
        </thead>
        <tbody>
          {listTodos.map(({ todo_id, description }) => {
            return (
              <tr key={todo_id}>
                <td>{description}</td>
                <td>Edit</td>
                <td>
                  <button
                    className="btn btn-danger"
                    onClick={() => deleteTodo(todo_id)}
                  >
                    Delete
                  </button>
                </td>
              </tr>
            );
          })}
        </tbody>
      </table>
    </Fragment>
  );
}

export default ListTodos;
