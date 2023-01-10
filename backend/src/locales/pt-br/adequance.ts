import {Adequance} from '@prisma/client';

const adequance: Map<Adequance, string> = new Map([
  [Adequance.STARTER, 'Inicial'],
  [Adequance.BASIC, 'Básico'],
  [Adequance.INTERMEDIATE, 'Intermediário'],
  [Adequance.IMPROVEMENT, 'Em Aprimoramento'],
  [Adequance.ENHANCED, 'Aprimorado'],
]);

export default adequance;
