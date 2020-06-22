import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import AppRouter from '../src/router/AppRouter';

ReactDOM.render(
  <>
    <AppRouter />
  </>,
  document.getElementById('root')
);

