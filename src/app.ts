import express from "express";
import dotenv from 'dotenv';

dotenv.config;

const app = express();
const PORT = process.env.PORT || 3001;

app.get('/', (req, res) => {
    res.send("Servidor rodando");
});

app.listen(PORT, () => {
    console.log(`Servidor rodando em http://localhost:${PORT}`);
});