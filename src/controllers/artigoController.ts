import { Request, Response } from "express";
import { db } from '../config/db';

export const criarArtigo = (req: Request, res: Response) => {
    const { titulo, conteudo } = req.body;
    const imagem = req.file?.filename;

    const sql = "INSERT INTO artigo (titulo, conteudo, imagem_url) VALUES (?, ?, ?)";
    db.query(sql, [titulo, conteudo, imagem], (err) => {
        if (err) return res.status(500).json({ error: err });
        res.status(201).json({ message: 'Artigo criado!' });
    });
}