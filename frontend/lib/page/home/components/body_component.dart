import 'package:flutter/material.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/page/home/components/center_component.dart';
import 'package:lgpb_compliance/page/home/components/session_horizontal_component.dart';
import 'package:lgpb_compliance/page/home/components/session_vertical_component.dart';

class BodyComponent extends StatelessWidget {
  const BodyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SessionVerticalComponent(
          title: 'O que é a LGPD?',
          texts: [
            'A Lei Geral de Proteção de Dados Pessoais (Lei n. 13.709, de 14 de agosto de 2018) '
                'foi aprovada em 2018. Em vigor desde 18 de setembro de 2020. pode ser considerada a '
                'resposta brasileira ao GDPR (Regulamento Geral sobre a Proteção de Dados) da União '
                'Europeia – com muitos alinhamentos da lei brasileira em relação à europeia, mas também '
                'com algumas diferenças. A intenção da lei é substituir ou complementar o atual panorama '
                'jurídico bastante disperso, que conta com mais de 40 especificações federais para o setor, '
                'e criar um marco regulatório.'
          ],
          backgroundColor: primaryColor,
          titleColor: Colors.white,
          textsColor: Colors.white,
          heightContainerWEB: 250,
          heightContainerMobile: 330,
          textAlign: TextAlign.justify,
        ),
        CenterComponent(
          title: 'Quem precisa se adaptar a LGPD?\n',
          text:
              'Todas as empresas que captam e processam informações pessoais devem se submeter a nova legislação.  E isso inclui o recolhimento de dados online e offline!',
        ),
        SessionHorizontalComponent(
          title: 'O que são “dados pessoais” na LGPD?',
          titleColor: primaryColor,
          text: 'É simples. Se uma informação permite identificar, direta ou '
              'indiretamente, um indivíduo que esteja vivo, então ela é '
              'considerada um dado pessoal: nome, RG, CPF, gênero, data e '
              'local de nascimento, telefone, endereço residencial, '
              'localização via GPS, retrato em fotografia, prontuário de '
              'saúde, cartão bancário, renda, histórico de pagamentos, '
              'hábitos de consumo, preferências de lazer; endereço de IP '
              '(Protocolo da Internet) e cookies, entre outros.',
          textsColor: Colors.black,
          backgroundColor: backgroundColor,
          textAlign: TextAlign.justify,
        ),
        SessionHorizontalComponent(
          title:
              'O que pode acontecer se a empresa não cumprir com algum dos requisitos?',
          titleColor: Colors.white,
          text: '• Multas aplicadas pela lei podem chegar a R\$ 50 milhões;\n'
              '• Empresas sofrem impactos na reputação, credibilidade e imagem junto a clientes e ao mercado;\n'
              '• Nos casos de ciberataques que violem a privacidade e roubem dados, os prejuízos financeiros são gigantescos;\n',
          textsColor: Colors.white,
          backgroundColor: primaryColor,
          textAlign: TextAlign.start,
        ),
        SessionVerticalComponent(
          title: 'A quais locais a LGPD se aplica?',
          texts: [
            'Assim como o GDPR, a LGPD aplica-se a um escopo territorial que vai além do Brasil. Isso '
                'significa que é preciso estar em conformidade com ela mesmo que você ou seu negócio não '
                'esteja localizado no Brasil. Na prática, a LGPD é aplicável se:\n',
            '   • Suas atividades de tratamento de dados são realizadas no Brasil (e.g. você usa servidores localizados no Brasil);',
            '   • Você oferece ou fornece bens ou serviços a pessoas localizadas no Brasil, independentemente da nacionalidade delas;',
            '   • Você processa dados provenientes de pessoas localizadas no Brasil (mesmo no caso em que a pessoa está no país apenas no momento da coleta de dados e depois mude de localidade).',
          ],
          backgroundColor: backgroundColor,
          titleColor: primaryColor,
          textsColor: Colors.black,
          heightContainerWEB: 200,
          heightContainerMobile: 200,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
