import React from 'react';
import './App.css';
import Component from "./component";

function App({ props }) {
  return (
    <div className="App">
      <h1>React Cradle</h1>
      <Component {...props} />
    </div>
  );
}

export default App;
