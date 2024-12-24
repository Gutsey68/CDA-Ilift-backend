import prisma from '../database/db';

export const getShares = async () => {
  return await prisma.usersShares.findMany();
};

export const getShareById = async (usersId, postsId) => {
  return await prisma.usersShares.findUnique({
    where: {
      postsId_usersId: {
        postsId,
        usersId
      }
    }
  });
};

export const sharePost = async (postsId: string, usersId: string) => {
  return await prisma.usersShares.create({
    data: {
      postsId,
      usersId
    }
  });
};

export const unsharePost = async (postsId: string, usersId: string) => {
  return await prisma.usersShares.delete({
    where: {
      postsId_usersId: {
        postsId,
        usersId
      }
    }
  });
};

export const getSharesOfAUser = async (usersId: string) => {
  return await prisma.usersShares.findMany({
    where: {
      usersId
    },
    include: {
      posts: {
        include: {
          tags: {
            include: {
              tag: {
                select: {
                  id: true,
                  name: true
                }
              }
            }
          },
          comments: true,
          likes: true,
          author: {
            select: {
              id: true,
              pseudo: true,
              profilePhoto: true
            }
          },
          _count: {
            select: {
              likes: true,
              comments: true
            }
          }
        }
      }
    },
    orderBy: {
      posts: {
        createdAt: 'desc'
      }
    }
  });
};
