import express from 'express';
import bodyParser from 'body-parser';
import dotenv from 'dotenv';
import Loan from './process-application.js';
dotenv.config();

const PORT = process.env.PORT || 3000;

const app = express();
app.use(bodyParser.json());

app.listen(PORT, () => {
    console.log(`Greenacre API is listening on: http://localhost:${PORT}.`);
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
