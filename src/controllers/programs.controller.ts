import { getProgramById, getPrograms, getProgramsOfUser, getWorkoutsOfProgram } from '../services/programs.service';

export const getProgramsHandler = async (req, res) => {
  try {
    const programs = await getPrograms();

    res.status(200).json({ message: 'Programmes récupérés avec succès', data: programs });
  } catch (error) {
    res.status(500).json({ error: 'Erreur Interne du Serveur' });
  }
};

export const getProgramsOfUserHandler = async (req, res) => {
  try {
    const userId = req.params.id;

    const programs = await getProgramsOfUser(userId);

    if (!programs) {
      return res.status(404).json({ error: 'Programmes non trouvés' });
    }

    res.status(200).json({ message: 'Programmes récupérés avec succès', data: programs });
  } catch (error) {
    res.status(500).json({ error: 'Erreur Interne du Serveur' });
  }
};

export const getWorkoutsOfProgramHandler = async (req, res) => {
  try {
    const programId = req.params.id;

    const program = await getProgramById(programId);

    const workouts = await getWorkoutsOfProgram(programId);

    if (!workouts) {
      return res.status(404).json({ error: 'Séances non trouvées' });
    }

    res.status(200).json({ message: 'Séances récupérées avec succès', data: { workouts, program } });
  } catch (error) {
    res.status(500).json({ error: 'Erreur Interne du Serveur' });
  }
};

export const createProgramHandler = async (req, res) => {};

export const updateProgramHandler = async (req, res) => {};

export const deleteProgramHandler = async (req, res) => {};
