import mysql from 'mysql2/promise';
import dotenv from 'dotenv';

dotenv.config();

const pool = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
});

export const connectionDB = async() => {
  try {
    const connection = await pool.getConnection();
    console.log('Conexão com o banco OK!');
    connection.release();
  } catch (error) {
    console.error('Erro na conexão com banco:', error);
    process.exit(1);
  } 
}

export default pool;