import { z } from 'zod';

export const loginSchema = z.object({
  body: z.object({
    pseudo: z.string().nonempty('Pseudo requis'),
    password: z.string().nonempty('Mot de passe requis')
  })
});

export const registerSchema = z.object({
  body: z
    .object({
      pseudo: z.string().min(1, 'Le pseudo est requis'),
      email: z.string().email('Email invalide'),
      password: z.string().min(3, 'Le mot de passe doit comporter au moins 3 caractères'),
      confirmPassword: z.string().min(1, 'La confirmation du mot de passe est requise')
    })
    .refine(data => data.password === data.confirmPassword, {
      message: 'Les mots de passe ne correspondent pas',
      path: ['body', 'confirmPassword']
    })
});
