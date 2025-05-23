import express from "express";
import cors from 'cors';
import artigoRoutes from './routes/artigoRoutes';
import path from 'path';

const app = express();

const PORT = process.env.PORT || 3001;

app.use(cors());
app.use(express.json());
app.use('/uploads', express.static(path.join(__dirname, 'uploads')));

app.use('/api', artigoRoutes);

app.get('/', (req, res) => {
    res.send("API RODANDO");
});

app.listen(PORT, () => {
    console.log(`Servidor rodando em http://localhost:${PORT}`);
});