import cors from 'cors';
import express from 'express';
import morgan from 'morgan';
import router from './routes/router';

const app = express();

app.use(cors());
app.use(morgan('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get('/', (req, res) => {
  console.log('hello from express');
  res.status(200).json({ message: 'Hello World!' });
});

app.use('/api', router);

export default app;
