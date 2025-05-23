import express from 'express';
import multer from 'multer';
import path from 'path';
import { criarArtigo, listarArtigos } from '../controllers/artigoController';

const router = express.Router();

const storage = multer.diskStorage({
    destination: './src/uploads',
    filename: (req, file, cb) => {
        cb(null, Date.now() + '-' + file.originalname);
    },
});

const upload = multer({ storage });

router.post('/artigos', upload.single('imagem'), criarArtigo);

router.get('/artigos', listarArtigos);

export default router;