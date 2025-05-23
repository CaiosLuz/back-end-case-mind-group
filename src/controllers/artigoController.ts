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

export const listarArtigos = (req: Request, res: Response) => {
    const sql = "SELECT * FROM artigo";

    db.query(sql, (err, results: any[]) => {
        if (err) return res.status(500).json({ error: err });
        const artigos = results.map((artigo: any) => ({
            ...artigo,
            imagem_url: artigo.imagem_url
                ? `http://localhost:3001/uploads/${artigo.imagem_url}`
                : null,
        }));

        res.json(artigos);
    })
}