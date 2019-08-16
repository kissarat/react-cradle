import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';

const root = document.getElementById('root');

window.render = function render(props) {
    ReactDOM.render(<App props={props} />, root);
};

window.render({
    children: 'Project skeleton for demonstration capabilities of component in development'
});
