import jwt from 'jsonwebtoken';

export const protect = (req, res, next) => {
  const authHeader = req.headers['authorization'];
  const token = authHeader && authHeader.split(' ')[1];

  if (!token) {
    return res.status(401).json({ message: 'Non autorisé. Veuillez vous connecter.' });
  }

  try {
    const payload = jwt.verify(token, process.env.JWT_SECRET);
    req.user = payload;
    next();
  } catch (error) {
    console.error('Token invalide ou expiré:', error);
    return res.status(401).json({ message: 'Token invalide ou expiré. Veuillez vous reconnecter.' });
  }
};
