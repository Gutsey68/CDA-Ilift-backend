import prisma from '../database/db';

export const getUsers = async () => {
  return await prisma.user.findMany();
};

export const getUserProfile = async (userId: string) => {
  return await prisma.user.findUnique({
    where: { id: userId },
    select: {
      id: true,
      pseudo: true,
      email: true,
      bio: true,
      createdAt: true,
      profilePhoto: true,
      roleId: true,
      workouts: {
        select: {
          id: true,
          name: true,
          createdAt: true
        },
        orderBy: {
          createdAt: 'desc'
        },
        take: 1
      },
      _count: {
        select: {
          posts: true,
          followedBy: true,
          following: true,
          workouts: true
        }
      },
      city: {
        select: {
          name: true
        }
      }
    }
  });
};

export const getSuggestedUsers = async (userId: string) => {
  const usersIfollow = await prisma.user.findMany({
    where: {
      NOT: {
        id: userId
      },
      following: {
        some: {
          followedById: userId
        }
      }
    },
    select: {
      id: true
    }
  });

  const usersIfollowIds = usersIfollow.map(user => user.id);

  const usersfollowedByusersIfollow = await prisma.user.findMany({
    where: {
      NOT: {
        id: userId
      },
      following: {
        some: {
          followedById: { in: usersIfollowIds }
        }
      }
    },
    select: {
      id: true,
      pseudo: true,
      profilePhoto: true,
      following: {
        select: {
          followedBy: {
            select: {
              id: true,
              pseudo: true
            }
          }
        }
      }
    },
    take: 5
  });

  const result = usersfollowedByusersIfollow.map(user => {
    const commonFollowers = user.following
      .filter(follow => usersIfollowIds.includes(follow.followedBy.id))
      .map(follow => ({
        id: follow.followedBy.id,
        pseudo: follow.followedBy.pseudo
      }));

    return {
      id: user.id,
      pseudo: user.pseudo,
      profilePhoto: user.profilePhoto,
      commonFollowers,
      commonFollowersCount: commonFollowers.length
    };
  });

  if (result.length < 5) {
    const additionalUsers = await prisma.user.findMany({
      where: {
        NOT: {
          id: { in: [userId, ...result.map(user => user.id)] }
        }
      },
      select: {
        id: true,
        pseudo: true,
        profilePhoto: true
      },
      take: 5 - result.length
    });

    result.push(
      ...additionalUsers.map(user => ({
        id: user.id,
        pseudo: user.pseudo,
        profilePhoto: user.profilePhoto,
        commonFollowers: [],
        commonFollowersCount: 0
      }))
    );
  }

  return result;
};

export const findUserByPseudo = async (pseudo: string) => {
  return await prisma.user.findUnique({
    where: { pseudo }
  });
};

export const findUserByEmail = async (email: string) => {
  return await prisma.user.findUnique({
    where: { email }
  });
};
