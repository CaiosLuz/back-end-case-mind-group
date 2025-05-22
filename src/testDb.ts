import pool from './config/db';

async function testConnection() {
  try {
    const [rows] = await pool.query('SELECT 1');
    console.log('Conexão com banco MySQL OK', rows);
  } catch (error) {
    console.error('Erro na conexão com banco:', error);
  } finally {
    await pool.end();
  }
}

testConnection();