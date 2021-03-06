import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import faker from 'faker';
import App from './App';

const root = document.getElementById('root');

function render(props) {
    console.log(props);
    ReactDOM.render(<App props={props} />, root);
}

function range(number) {
    const result = [];
    for(let i = 0; i < number; i++) {
        result.push(i);
    }
    return result;
}

function generateContent({number, ...props}) {
    return {
        children: range(number).map(i => (
            <div className="slide">
                <div>
                    <h3>{i + 1}</h3>
                </div>
            </div>
        )),
        ...props
    }
}

render(generateContent({
    number: 7
}));

window.faker = faker;
window.render = render;
window.generate = generateContent;
window.intervalGenerate = (props = {}) => setInterval(() => render(generateContent(props)), 800);
