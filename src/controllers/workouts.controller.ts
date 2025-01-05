import prisma from '../database/db';
import { createWorkout, deleteWorkout, getWorkoutById, getWorkoutByIdWithoutSelect, updateWorkout, updateWorkoutExercices } from '../services/workouts.service';
import { getExercicesOfWorkout } from '../services/exercices.service';

export const getExercicesOfWorkoutHandler = async (req, res) => {
  try {
    const workoutId = req.params.id;
    const workout = await getWorkoutById(workoutId);

    if (!workout) {
      return res.status(404).json({ error: 'Séance non trouvée' });
    }

    const exercices = await getExercicesOfWorkout(workoutId);

    res.status(200).json({
      message: 'Exercices récupérés avec succès',
      data: { exercices, workout }
    });
  } catch (error) {
    res.status(500).json({ error: 'Erreur Interne du Serveur' });
  }
};

export const createWorkoutHandler = async (req, res) => {
  try {
    const { name, programId } = req.body;

    const userId = req.user.id;

    const workout = await createWorkout(name, programId, userId);

    if (!workout) {
      return res.status(404).json({ error: "Le programme n'a pas pu être créé" });
    }

    res.status(201).json({ message: 'Séance créée avec succès', data: workout });
  } catch (error) {
    res.status(500).json({ error: 'Erreur Interne du Serveur' });
  }
};

export const updateWorkoutHandler = async (req, res) => {
  try {
    const { name, position } = req.body;
    const workoutId = req.params.id;

    const existingWorkout = await getWorkoutByIdWithoutSelect(workoutId);

    if (!existingWorkout) {
      return res.status(404).json({ error: 'Séance non trouvée' });
    }

    const workout = await updateWorkout(workoutId, {
      ...(name && { name }),
      ...(typeof position === 'number' && { position })
    });

    if (!workout) {
      return res.status(404).json({ error: "La séance n'a pas pu être modifiée" });
    }

    res.status(200).json({ message: 'Séance modifiée avec succès', data: workout });
  } catch (error) {
    res.status(500).json({ error: 'Erreur Interne du Serveur' });
  }
};

export const deleteWorkoutHandler = async (req, res) => {
  try {
    const workoutId = req.params.id;

    const existingWorkout = await getWorkoutByIdWithoutSelect(workoutId);

    if (!existingWorkout) {
      return res.status(404).json({ error: 'Séance non trouvée' });
    }

    const deletedWorkout = await deleteWorkout(workoutId);

    if (!deletedWorkout) {
      return res.status(404).json({ error: "La séance n'a pas pu être supprimée" });
    }

    res.status(200).json({ message: 'Séance supprimée avec succès' });
  } catch (error) {
    res.status(500).json({ error: 'Erreur Interne du Serveur' });
  }
};

export const updateWorkoutExercicesHandler = async (req, res) => {
  try {
    const { exerciceIds } = req.body;
    const workoutId = req.params.id;

    const existingWorkout = await getWorkoutByIdWithoutSelect(workoutId);

    if (!existingWorkout) {
      return res.status(404).json({ error: 'Séance non trouvée' });
    }

    const updatedExercices = await updateWorkoutExercices(workoutId, exerciceIds);

    res.status(200).json({
      message: 'Exercices de la séance mis à jour avec succès',
      data: updatedExercices
    });
  } catch (error) {
    res.status(500).json({ error: 'Erreur Interne du Serveur' });
  }
};

export const updateExercicePositionHandler = async (req, res) => {
  try {
    const { workoutId, exerciceId } = req.params;
    const { position } = req.body;

    await prisma.workoutsExercises.update({
      where: {
        exerciceId_workoutId: {
          exerciceId,
          workoutId
        }
      },
      data: {
        position
      }
    });

    res.status(200).json({
      message: 'Position mise à jour avec succès'
    });
  } catch (error) {
    res.status(500).json({ error: 'Erreur Interne du Serveur' });
  }
};
