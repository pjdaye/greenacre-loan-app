import express from 'express';
import bodyParser from 'body-parser';
import cors from 'cors';
import dotenv from 'dotenv';
import Loan from './process-application.js';
dotenv.config();

const PORT = process.env.PORT || 8080;
const URL = process.env.URL || 'http://localhost';

const app = express();
app.use(cors());
app.use(bodyParser.json());

app.listen(PORT, () => {
    console.log(`Greenacre API is listening on: ${URL}:${PORT}`);
});

app.get('/health', (req, res) => {
    res.send('Healthy');
});

app.post('/apply', async (req, res) => {
    let loan = new Loan(req.body.borrowerFico,
                        req.body.coborrowerFico,
                        req.body.propertyType,
                        req.body.purchasePrice,
                        req.body.downPayment,
                        req.body.loanType,
                        req.body.loanAmount,
                        req.body.term);
    
    let rate = await loan.processApplication();
    console.log(rate);

    res.json(rate);
});

// testability hook
app.get('/getPrime', (req, res) => {
    res.send(process.env.PRIME_RATE)
});
