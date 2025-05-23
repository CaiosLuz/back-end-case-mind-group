// import { hashPassword as generatePasswordHash } from './../utils/bcrypt';
// import { Request, Response } from "express";
// import pool from '../config/db';

// export const register = async (req: Request, res: Response) => {
//     const { username, email, password } = req.body;

//     if (!username || !email || !password) {
//         return res.status(400).json({ message: 'Todos os campos são obrigatórios!' });
//     }

//     try {
//         // VERIFICANDO SE JÁ EXISTE EMAIL
//         const [existeUsuario] : any= await pool.execute(
//             'SELECT id FROM usuario WHERE email = ?',
//             [email]
//         );

//         if (existeUsuario.length > 0) {
//             return res.status(409).json({ message: 'Email já cadastrado!' });
//         }

//         const hashedPassword = await generatePasswordHash (password);

//         // Inserir um novo usuário
//         const [resultado]: any = await pool.execute(
//             'INSERT INTO usuarios (nome, email, senha) VALUES (?, ?, ?)',
//             [username, email, hashedPassword]
//         );

//         res.status(201).json({ message: 'Usuário cadastrado com sucesso!' });
//     } catch(error) {
//         console.error("Erro ao registrar ", error);
//         res.status(500).json({ message: 'Erro no servidor' });
//     }
// }