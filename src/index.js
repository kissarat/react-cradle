import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import faker from 'faker';
import App from './App';

const root = document.getElementById('root');

window.render = function render(props) {
    ReactDOM.render(<App props={props} />, root);
};

window.render({
    children: 'Project skeleton for demonstration capabilities of component in development'
});

function generateContent(props) {
    return {
        children: faker.lorem.text(),
        ...props
    }
}

window.faker = faker;

window.generate = (props = {}) => window.render(generateContent(props));

window.intervalGenerate = (props = {}) => setInterval(() => window.generate(props), 800);
