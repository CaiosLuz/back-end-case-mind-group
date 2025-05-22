import express from 'express';
import { getUsers } from '../controllers/useController.ts';

const router = express.Router();

router.get("/", getUsers);

export default router;