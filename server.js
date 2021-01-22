'use strict';

import express from 'express'

// константы
const port = 8082;
const host = '127.0.0.1';

// приложение
const app = express();
app.get('/', (req, res) => {
  res.send('Hello World');
});

// база данных
import db from './db.js';

app.listen(port, host);
console.log(`running on http://${host}:${port}`);