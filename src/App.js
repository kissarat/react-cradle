import React from 'react';
import './App.css';
import Component from "./component";

function App({ props }) {
  return (
    <div className="App">
      <Component {...props} />
    </div>
  );
}

export default App;
