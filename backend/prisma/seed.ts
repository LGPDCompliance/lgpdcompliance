import {PrismaClient} from '@prisma/client';
import sections from '../data/sections';
import questions from '../data/questions';
import AuthUtil from '../src/utils/AuthUtil';

const prisma = new PrismaClient();

const seedQuestions = async () => {
  await prisma.quiz.create({data: {sections, questions, maxScore: 60}});
};

const seedUsers = async () => {
  const password = await AuthUtil.encrypt('LGPD@22');
  await prisma.userRegister.create({data: {
    user: {create: {
      email: 'admin@lgpdcompliance.com',
      name: 'Admin',
      role: 'ADMIN',
    }},
    authentication: {create: {
      email: 'admin@lgpdcompliance.com',
      password: password,
    }},
  }});

  await prisma.userRegister.create({data: {
    user: {create: {
      email: 'rafael@lgpdcompliance.com',
      name: 'Rafael Guimarães',
      role: 'USER',
    }},
    authentication: {create: {
      email: 'rafael@lgpdcompliance.com',
      password: password,
    }},
  }});
};


const load = async () => {
  try {
    const questions = await prisma.quiz.findMany();
    if (questions.length !== 0) {
      console.log('Nothing to seed!');
      return;
    }
    seedUsers();
    seedQuestions();
  } catch (e) {
    console.error(e);
    process.exit(1);
  } finally {
    await prisma.$disconnect();
  };
};

load();
