// const webpackConfig = require('eslint-config-airbnb');

module.exports = {
    env: {
        node: true,
        browser: true,
        es6: true,
        jest: true
    },
    parser: 'babel-eslint',
    parserOptions: {
        allowImportExportEverywhere: true
    },
    // extends: 'airbnb',
    // settings: {
    //     'import/resolver': {
    //         webpack: {
    //             config: webpackConfig
    //         }
    //     }
    // },
    rules: {
        'import/no-named-as-default': 'off',
        'react/forbid-elements': ['error', {forbid: ['hr', 'b', 'menu']}],
        'react/jsx-one-expression-per-line': 'off'
    }
};
