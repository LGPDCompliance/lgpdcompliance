const questions = {
  create: [
    {
      title:
        'As partes envolvidas com a implementação da  LGPD realizaram a leitura do Guia de Boas Práticas sobre a Lei Geral de Proteção de Dados (LGPD) produzido pela Secretaria de Governo Digital?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'O Guia de Boas Práticas da LGPD pode ser acessado no link: https://www.gov.br/governodigital/pt-br/governanca-de-dados/guia lgpd.pdf',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'O Guia de Boas Práticas da LGPD pode ser acessado no link: https://www.gov.br/governodigital/pt-br/governanca-de-dados/guia lgpd.pdf',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'O Guia de Boas Práticas da LGPD pode ser acessado no link: https://www.gov.br/governodigital/pt-br/governanca-de-dados/guia lgpd.pdf',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 1,
        },
      },
    },

    {
      title:
        'O órgão já realizou um planejamento do seu Programa Institucional de Privacidade de Dados?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50: A LGPD recomenda que os agentes de tratamento estabeleçam regras de boas práticas e de governança sobre segurança e proteção de dados. O documento pode incluir, por exemplo, os procedimentos e os padrões técnicos da organização, como lidar com reclamações e petições dos titulares, as ações educativas tomadas dentro do empresa, os envolvidos nos tratamentos, processos para mitigar riscos etc.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50: A LGPD recomenda que os agentes de tratamento estabeleçam regras de boas práticas e de governança sobre segurança e proteção de dados. O documento pode incluir, por exemplo, os procedimentos e os padrões técnicos da organização, como lidar com reclamações e petições dos titulares, as ações educativas tomadas dentro do empresa, os envolvidos nos tratamentos, processos para mitigar riscos etc.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50: A LGPD recomenda que os agentes de tratamento estabeleçam regras de boas práticas e de governança sobre segurança e proteção de dados. O documento pode incluir, por exemplo, os procedimentos e os padrões técnicos da organização, como lidar com reclamações e petições dos titulares, as ações educativas tomadas dentro do empresa, os envolvidos nos tratamentos, processos para mitigar riscos etc.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 1,
        },
      },
    },

    {
      title:
        'O órgão desenvolveu um plano de comunicação interno do Programa Institucional de Privacidade de Dados?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50: A LGPD recomenda que os agentes de tratamento estabeleçam regras de boas práticas e de governança sobre segurança e proteção de dados. O documento pode incluir, por exemplo, os procedimentos e os padrões técnicos da organização, como lidar com reclamações e petições dos titulares, as ações educativas tomadas dentro do empresa, os envolvidos nos tratamentos, processos para mitigar riscos etc.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50: A LGPD recomenda que os agentes de tratamento estabeleçam regras de boas práticas e de governança sobre segurança e proteção de dados. O documento pode incluir, por exemplo, os procedimentos e os padrões técnicos da organização, como lidar com reclamações e petições dos titulares, as ações educativas tomadas dentro do empresa, os envolvidos nos tratamentos, processos para mitigar riscos etc.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50: A LGPD recomenda que os agentes de tratamento estabeleçam regras de boas práticas e de governança sobre segurança e proteção de dados. O documento pode incluir, por exemplo, os procedimentos e os padrões técnicos da organização, como lidar com reclamações e petições dos titulares, as ações educativas tomadas dentro do empresa, os envolvidos nos tratamentos, processos para mitigar riscos etc.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 1,
        },
      },
    },

    {
      title:
        'O órgão já realizou a indicação de um encarregado com conhecimento e experiência suficientes e autonomia para implementar a LGPD?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 23: Aborda o tratamento de dados pessoais pelo poder público, que pode ser realizado quando houver uma finalidade pública de interesse também público e somente quando houver real necessidade do tratamento para a execução dessas obrigações legais. O artigo não aborda o compartilhamento de dados ou o tratamento de dados sensíveis, o que abre espaço para que informações biométricas, por exemplo, venham a ser tratadas em nome da segurança pública. Para operações da esfera pública que envolvam tratamentos de dados pessoais, deve ser apontado um encarregado para zelar pelo bom uso e segurança das informações. Após formada, a ANPD pode determinar como devem ser anunciadas as medidas de segurança e as formas de tratamento.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 23: Aborda o tratamento de dados pessoais pelo poder público, que pode ser realizado quando houver uma finalidade pública de interesse também público e somente quando houver real necessidade do tratamento para a execução dessas obrigações legais. O artigo não aborda o compartilhamento de dados ou o tratamento de dados sensíveis, o que abre espaço para que informações biométricas, por exemplo, venham a ser tratadas em nome da segurança pública. Para operações da esfera pública que envolvam tratamentos de dados pessoais, deve ser apontado um encarregado para zelar pelo bom uso e segurança das informações. Após formada, a ANPD pode determinar como devem ser anunciadas as medidas de segurança e as formas de tratamento.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 23: Aborda o tratamento de dados pessoais pelo poder público, que pode ser realizado quando houver uma finalidade pública de interesse também público e somente quando houver real necessidade do tratamento para a execução dessas obrigações legais. O artigo não aborda o compartilhamento de dados ou o tratamento de dados sensíveis, o que abre espaço para que informações biométricas, por exemplo, venham a ser tratadas em nome da segurança pública. Para operações da esfera pública que envolvam tratamentos de dados pessoais, deve ser apontado um encarregado para zelar pelo bom uso e segurança das informações. Após formada, a ANPD pode determinar como devem ser anunciadas as medidas de segurança e as formas de tratamento.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 1,
        },
      },
    },

    {
      title:
        'O órgão disponibilizou para o encarregado os recursos necessários para implementação da LGPD e acesso direto à alta administração?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 41: O controlador deverá indicar encarregado pelo tratamento de dados pessoais.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 41: O controlador deverá indicar encarregado pelo tratamento de dados pessoais.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 41: O controlador deverá indicar encarregado pelo tratamento de dados pessoais.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 1,
        },
      },
    },

    {
      title:
        'O órgão designou os líderes responsáveis por cada frente de atuação no tratamento dos dados?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'De acordo com a Lei 13.709/2018, art. 50, é necessário estipular quais serão os líderes responsáveis por cada frente de atuação como, por exemplo, comunicação com o cidadão, operações de TI, segurança da informação, jurídico, etc.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'De acordo com a Lei 13.709/2018, art. 50, é necessário estipular quais serão os líderes responsáveis por cada frente de atuação como, por exemplo, comunicação com o cidadão, operações de TI, segurança da informação, jurídico, etc.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'De acordo com a Lei 13.709/2018, art. 50, é necessário estipular quais serão os líderes responsáveis por cada frente de atuação como, por exemplo, comunicação com o cidadão, operações de TI, segurança da informação, jurídico, etc.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 1,
        },
      },
    },

    {
      title:
        'Foram definidos indicadores que serão utilizados para medir os resultados do Programa Institucional de Privacidade de Dados?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50. Os controladores e operadores, no âmbito de suas competências, pelo tratamento de dados pessoais, individualmente ou por meio de associações, poderão formular regras de boas práticas e de governança...',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50. Os controladores e operadores, no âmbito de suas competências, pelo tratamento de dados pessoais, individualmente ou por meio de associações, poderão formular regras de boas práticas e de governança...',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50. Os controladores e operadores, no âmbito de suas competências, pelo tratamento de dados pessoais, individualmente ou por meio de associações, poderão formular regras de boas práticas e de governança...',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 1,
        },
      },
    },

    {
      title:
        'O órgão elaborou Relatório de Impacto à Privacidade de Dados Pessoais - RIPD?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13709/2018, art. 5º, XVII: Se houver qualquer risco de que determinado tratamento de dados possa vir a causar danos ao titular, é dever do controlador manter esse relatório. Dessa forma, em caso de incidentes, é possível entender os perigos da situação e trabalhar para mitigá-los mais rapidamente. A manutenção do relatório também visa comprovar que o tratamento que gera esses riscos recebe os devidos cuidados para evitá-los.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13709/2018, art. 5º, XVII: Se houver qualquer risco de que determinado tratamento de dados possa vir a causar danos ao titular, é dever do controlador manter esse relatório. Dessa forma, em caso de incidentes, é possível entender os perigos da situação e trabalhar para mitigá-los mais rapidamente. A manutenção do relatório também visa comprovar que o tratamento que gera esses riscos recebe os devidos cuidados para evitá-los.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13709/2018, art. 5º, XVII: Se houver qualquer risco de que determinado tratamento de dados possa vir a causar danos ao titular, é dever do controlador manter esse relatório. Dessa forma, em caso de incidentes, é possível entender os perigos da situação e trabalhar para mitigá-los mais rapidamente. A manutenção do relatório também visa comprovar que o tratamento que gera esses riscos recebe os devidos cuidados para evitá-los.',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 1,
        },
      },
    },

    {
      title:
        'A(s) área(s) envolvidas com tratamento de dados participou(aram) de algum treinamento relacionado com o tema de proteção de dados pessoais?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50. Os controladores e operadores, no âmbito de suas competências, pelo tratamento de dados pessoais, individualmente ou por meio de associações, poderão formular regras de boas práticas e de governança que  estabeleçam as condições de organização, o regime de funcionamento, os procedimentos, incluindo reclamações e  petições de titulares, as normas de segurança, os padrões técnicos, as obrigações específicas para os diversos  envolvidos no tratamento, as ações educativas...',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50. Os controladores e operadores, no âmbito de suas competências, pelo tratamento de dados pessoais, individualmente ou por meio de associações, poderão formular regras de boas práticas e de governança que  estabeleçam as condições de organização, o regime de funcionamento, os procedimentos, incluindo reclamações e  petições de titulares, as normas de segurança, os padrões técnicos, as obrigações específicas para os diversos  envolvidos no tratamento, as ações educativas...',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50. Os controladores e operadores, no âmbito de suas competências, pelo tratamento de dados pessoais, individualmente ou por meio de associações, poderão formular regras de boas práticas e de governança que  estabeleçam as condições de organização, o regime de funcionamento, os procedimentos, incluindo reclamações e  petições de titulares, as normas de segurança, os padrões técnicos, as obrigações específicas para os diversos  envolvidos no tratamento, as ações educativas...',
                section: {
                  connect: {
                    id: 1,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 1,
        },
      },
    },

    {
      title:
        'O órgão, dentro dos limites de suas competências legais, implementou ações para não tratar e coletar de forma inadequada ou excessiva os dados pessoais dos cidadãos e tratar a mínima quantidade  de dados necessários para atingir a finalidade legal desejada?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13709/2018, art. 23. O tratamento de dados pessoais pelas pessoas jurídicas de direito público referidas no parágrafo único do art. 1º da Lei nº 12.527, de 18 de novembro de 2011 (Lei de Acesso à Informação), deverá ser realizado para o atendimento de sua finalidade pública, na persecução do interesse público, com o objetivo de executar as competências legais ou cumprir as atribuições legais do serviço público.',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13709/2018, art. 23. O tratamento de dados pessoais pelas pessoas jurídicas de direito público referidas no parágrafo único do art. 1º da Lei nº 12.527, de 18 de novembro de 2011 (Lei de Acesso à Informação), deverá ser realizado para o atendimento de sua finalidade pública, na persecução do interesse público, com o objetivo de executar as competências legais ou cumprir as atribuições legais do serviço público.',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13709/2018, art. 23. O tratamento de dados pessoais pelas pessoas jurídicas de direito público referidas no parágrafo único do art. 1º da Lei nº 12.527, de 18 de novembro de 2011 (Lei de Acesso à Informação), deverá ser realizado para o atendimento de sua finalidade pública, na persecução do interesse público, com o objetivo de executar as competências legais ou cumprir as atribuições legais do serviço público.',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 2,
        },
      },
    },

    {
      title:
        'O órgão realizou um mapeamento entre os dados processados e a competência legal/finalidade para a qual eles são necessários?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13709/2018, art. 23: Aborda o tratamento de dados pessoais pelo poder público, que pode ser realizado quando houver uma finalidade pública de interesse também público e somente quando houver real necessidade do tratamento para a execução dessas obrigações legais.',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13709/2018, art. 23: Aborda o tratamento de dados pessoais pelo poder público, que pode ser realizado quando houver uma finalidade pública de interesse também público e somente quando houver real necessidade do tratamento para a execução dessas obrigações legais.',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13709/2018, art. 23: Aborda o tratamento de dados pessoais pelo poder público, que pode ser realizado quando houver uma finalidade pública de interesse também público e somente quando houver real necessidade do tratamento para a execução dessas obrigações legais.',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 2,
        },
      },
    },

    {
      title:
        'O órgão estabeleceu procedimento ou metodologia para verificar se os princípios da LGPD estão sendo respeitados durante o desenvolvimento de serviços que tratarão dados pessoais desde a fase de concepção do produto ou do serviço até a sua execução (Privacy by Design)?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13709/2018, art. 46: Os agentes de tratamento devem adotar medidas de segurança, técnicas e administrativas aptas a proteger os dados pessoais de acessos não autorizados e de situações acidentais ou ilícitas de destruição, perda, alteração, comunicação ou qualquer forma de tratamento inadequado ou ilícito.',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13709/2018, art. 46: Os agentes de tratamento devem adotar medidas de segurança, técnicas e administrativas aptas a proteger os dados pessoais de acessos não autorizados e de situações acidentais ou ilícitas de destruição, perda, alteração, comunicação ou qualquer forma de tratamento inadequado ou ilícito.',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13709/2018, art. 46: Os agentes de tratamento devem adotar medidas de segurança, técnicas e administrativas aptas a proteger os dados pessoais de acessos não autorizados e de situações acidentais ou ilícitas de destruição, perda, alteração, comunicação ou qualquer forma de tratamento inadequado ou ilícito.',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 2,
        },
      },
    },

    {
      title:
        'Os princípios da LGPD são aplicados a todo tratamento de dados pessoais realizados pelo órgão, tanto para clientes dos serviços públicos fornecidos quanto servidores, funcionários e/ou colaboradores da instituição?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 9º O titular tem direito ao acesso facilitado às informações sobre o tratamento de seus dados, que deverão ser disponibilizadas de forma clara, adequada e ostensiva acerca de, entre outras características previstas em regulamentação para o atendimento do princípio do livre acesso:\n\nI - finalidade específica do tratamento;\nII - forma e duração do tratamento, observados os segredos comercial e industrial;',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 9º O titular tem direito ao acesso facilitado às informações sobre o tratamento de seus dados, que deverão ser disponibilizadas de forma clara, adequada e ostensiva acerca de, entre outras características previstas em regulamentação para o atendimento do princípio do livre acesso:\n\nI - finalidade específica do tratamento;\nII - forma e duração do tratamento, observados os segredos comercial e industrial;',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 9º O titular tem direito ao acesso facilitado às informações sobre o tratamento de seus dados, que deverão ser disponibilizadas de forma clara, adequada e ostensiva acerca de, entre outras características previstas em regulamentação para o atendimento do princípio do livre acesso:\n\nI - finalidade específica do tratamento;\nII - forma e duração do tratamento, observados os segredos comercial e industrial;',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 2,
        },
      },
    },

    {
      title:
        'O órgão conscientizou a(s) área(s) envolvida(s) com tratamento de dados pessoais que a administração pública pode efetuar o tratamento de dados pessoais no exercício de suas competências legais ou execução de políticas públicas para entrega de serviços públicos e que nesses casos não precisará colher o consentimento do titular dos dados?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 7º:\n\nII - para o cumprimento de obrigação legal ou regulatória pelo controlador;\nIII - pela administração pública, para o tratamento e uso compartilhado de dados necessários à execução de políticas públicas previstas em leis e regulamentos ou respaldadas em contratos, convênios ou instrumentos congêneres, observadas as disposições do Capítulo IV desta Lei;',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 7º:\n\nII - para o cumprimento de obrigação legal ou regulatória pelo controlador;\nIII - pela administração pública, para o tratamento e uso compartilhado de dados necessários à execução de políticas públicas previstas em leis e regulamentos ou respaldadas em contratos, convênios ou instrumentos congêneres, observadas as disposições do Capítulo IV desta Lei;',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 7º:\n\nII - para o cumprimento de obrigação legal ou regulatória pelo controlador;\nIII - pela administração pública, para o tratamento e uso compartilhado de dados necessários à execução de políticas públicas previstas em leis e regulamentos ou respaldadas em contratos, convênios ou instrumentos congêneres, observadas as disposições do Capítulo IV desta Lei;',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 2,
        },
      },
    },

    {
      title:
        'O órgão ao efetuar o tratamento de dados pessoais no exercício de suas competências legais ou execução de políticas públicas dá publicidade sobre a finalidade e a forma como o dado será tratado?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 6º As atividades de tratamento de dados pessoais deverão observar a boa-fé e os seguintes princípios:\n\nVI - Transparência: omplementa o princípio do livre acesso e especifica a necessidade de clareza na prestação de informações aos titulares. Isso inclui informar sobre os agentes que efetivamente realizam o tratamento de dados.',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 6º As atividades de tratamento de dados pessoais deverão observar a boa-fé e os seguintes princípios:\n\nVI - Transparência: omplementa o princípio do livre acesso e especifica a necessidade de clareza na prestação de informações aos titulares. Isso inclui informar sobre os agentes que efetivamente realizam o tratamento de dados.',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 6º As atividades de tratamento de dados pessoais deverão observar a boa-fé e os seguintes princípios:\n\nVI - Transparência: omplementa o princípio do livre acesso e especifica a necessidade de clareza na prestação de informações aos titulares. Isso inclui informar sobre os agentes que efetivamente realizam o tratamento de dados.',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 2,
        },
      },
    },

    {
      title:
        'O órgão adota sistemas e procedimentos para cumprir o direito de retificação de informações do titular do dado?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 18 O titular dos dados pessoais tem direito a obter do controlador, em relação aos dados do titular por ele tratados, a qualquer momento e mediante requisição:\n\nIII - correção de dados incompletos, inexatos ou desatualizados',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 18 O titular dos dados pessoais tem direito a obter do controlador, em relação aos dados do titular por ele tratados, a qualquer momento e mediante requisição:\n\nIII - correção de dados incompletos, inexatos ou desatualizados',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 18 O titular dos dados pessoais tem direito a obter do controlador, em relação aos dados do titular por ele tratados, a qualquer momento e mediante requisição:\n\nIII - correção de dados incompletos, inexatos ou desatualizados',
                section: {
                  connect: {
                    id: 2,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 2,
        },
      },
    },

    {
      title:
        'A identidade e as informações de contato do encarregado foram divulgadas publicamente, de forma clara e objetiva, preferencialmente no sítio eletrônico do controlador?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13709/2018, art. 41 O controlador deverá indicar encarregado pelo tratamento de dados pessoais.\n\n§ 1º A identidade e as informações de contato do encarregado deverão ser divulgadas publicamente, de forma clara e objetiva, preferencialmente no sítio eletrônico do controlador.',
                section: {
                  connect: {
                    id: 3,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13709/2018, art. 41 O controlador deverá indicar encarregado pelo tratamento de dados pessoais.\n\n§ 1º A identidade e as informações de contato do encarregado deverão ser divulgadas publicamente, de forma clara e objetiva, preferencialmente no sítio eletrônico do controlador.',
                section: {
                  connect: {
                    id: 3,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13709/2018, art. 41 O controlador deverá indicar encarregado pelo tratamento de dados pessoais.\n\n§ 1º A identidade e as informações de contato do encarregado deverão ser divulgadas publicamente, de forma clara e objetiva, preferencialmente no sítio eletrônico do controlador.',
                section: {
                  connect: {
                    id: 3,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 3,
        },
      },
    },

    {
      title:
        'O órgão comunica internamente os objetivos do Programa Institucional de Privacidade de Dados?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50 Os controladores e operadores, no âmbito de suas competências, pelo tratamento de dados pessoais, individualmente ou por meio de associações, poderão formular regras de boas práticas e de governança que  estabeleçam as condições de organização, o regime de funcionamento, os procedimentos, incluindo reclamações e petições de titulares, as normas de segurança, os padrões técnicos, as obrigações específicas para os diversos  envolvidos no tratamento, as ações educativas, os mecanismos internos de supervisão e de mitigação de riscos e outros aspectos relacionados ao tratamento de dados pessoais.',
                section: {
                  connect: {
                    id: 3,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50 Os controladores e operadores, no âmbito de suas competências, pelo tratamento de dados pessoais, individualmente ou por meio de associações, poderão formular regras de boas práticas e de governança que  estabeleçam as condições de organização, o regime de funcionamento, os procedimentos, incluindo reclamações e petições de titulares, as normas de segurança, os padrões técnicos, as obrigações específicas para os diversos  envolvidos no tratamento, as ações educativas, os mecanismos internos de supervisão e de mitigação de riscos e outros aspectos relacionados ao tratamento de dados pessoais.',
                section: {
                  connect: {
                    id: 3,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50 Os controladores e operadores, no âmbito de suas competências, pelo tratamento de dados pessoais, individualmente ou por meio de associações, poderão formular regras de boas práticas e de governança que  estabeleçam as condições de organização, o regime de funcionamento, os procedimentos, incluindo reclamações e petições de titulares, as normas de segurança, os padrões técnicos, as obrigações específicas para os diversos  envolvidos no tratamento, as ações educativas, os mecanismos internos de supervisão e de mitigação de riscos e outros aspectos relacionados ao tratamento de dados pessoais.',
                section: {
                  connect: {
                    id: 3,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 3,
        },
      },
    },

    {
      title:
        'O órgão elaborou uma Política de privacidade para cada serviço de forma a informar os direitos dos titulares de dados e revisou as Políticas de Privacidade já existentes?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50 Os controladores e operadores, no âmbito de suas competências, pelo tratamento de dados pessoais, individualmente ou por meio de associações, poderão formular regras de boas práticas e de governança que  estabeleçam as condições de organização, o regime de funcionamento, os procedimentos, incluindo reclamações e petições de titulares, as normas de segurança, os padrões técnicos, as obrigações específicas para os diversos envolvidos no tratamento, as ações educativas, os mecanismos internos de supervisão e de mitigação de riscos e outros  aspectos relacionados ao tratamento de dados pessoais.',
                section: {
                  connect: {
                    id: 3,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50 Os controladores e operadores, no âmbito de suas competências, pelo tratamento de dados pessoais, individualmente ou por meio de associações, poderão formular regras de boas práticas e de governança que  estabeleçam as condições de organização, o regime de funcionamento, os procedimentos, incluindo reclamações e petições de titulares, as normas de segurança, os padrões técnicos, as obrigações específicas para os diversos envolvidos no tratamento, as ações educativas, os mecanismos internos de supervisão e de mitigação de riscos e outros  aspectos relacionados ao tratamento de dados pessoais.',
                section: {
                  connect: {
                    id: 3,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 50 Os controladores e operadores, no âmbito de suas competências, pelo tratamento de dados pessoais, individualmente ou por meio de associações, poderão formular regras de boas práticas e de governança que  estabeleçam as condições de organização, o regime de funcionamento, os procedimentos, incluindo reclamações e petições de titulares, as normas de segurança, os padrões técnicos, as obrigações específicas para os diversos envolvidos no tratamento, as ações educativas, os mecanismos internos de supervisão e de mitigação de riscos e outros  aspectos relacionados ao tratamento de dados pessoais.',
                section: {
                  connect: {
                    id: 3,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 3,
        },
      },
    },

    {
      title:
        'As Políticas de Privacidade dos serviços são elaboradas em linguagem simples e acessível?',
      alternatives: {
        create: [
          {
            title: 'Não adota',
            score: 0,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 6º As atividades de tratamento de dados pessoais deverão observar a boa-fé e os seguintes princípios: VI - transparência: garantia, aos titulares, de informações claras, precisas  e facilmente acessíveis sobre a realização do tratamento e os respectivos agentes de tratamento, observados os segredos comercial e industrial.',
                section: {
                  connect: {
                    id: 3,
                  },
                },
              },
            },
          },
          {
            title: 'Iniciou plano para adotar',
            score: 1,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 6º As atividades de tratamento de dados pessoais deverão observar a boa-fé e os seguintes princípios: VI - transparência: garantia, aos titulares, de informações claras, precisas  e facilmente acessíveis sobre a realização do tratamento e os respectivos agentes de tratamento, observados os segredos comercial e industrial.',
                section: {
                  connect: {
                    id: 3,
                  },
                },
              },
            },
          },
          {
            title: 'Adota parcialmente',
            score: 2,
            feedback: {
              create: {
                description: 'Lei 13.709/2018, art. 6º As atividades de tratamento de dados pessoais deverão observar a boa-fé e os seguintes princípios: VI - transparência: garantia, aos titulares, de informações claras, precisas  e facilmente acessíveis sobre a realização do tratamento e os respectivos agentes de tratamento, observados os segredos comercial e industrial.',
                section: {
                  connect: {
                    id: 3,
                  },
                },
              },
            },
          },
          {
            title: 'Adota integralmente',
            score: 3,
          },
        ],
      },
      section: {
        connect: {
          id: 3,
        },
      },
    },
  ],
};

export default questions;
