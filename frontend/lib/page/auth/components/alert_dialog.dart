import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lgpb_compliance/components/custom_text.dart';

Future<dynamic> alertDialog({
  required BuildContext context,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        titlePadding: const EdgeInsets.all(10),
        contentPadding: EdgeInsets.zero,
        title: Row(
          children: [
            const Spacer(),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: const Icon(Icons.close),
              hoverColor: Colors.transparent,
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
        content: SizedBox(
          width: 680,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(
                    15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        text: 'TERMOS E CONDIÇÕES DE USO DO SITE',
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 30),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text:
                              '1. Este Termo refere-se ao LGPD Compliance. Ao navegar neste site e usar os serviços que são fornecidos, você ',
                          style: GoogleFonts.lexendDeca(
                            color: Colors.grey.shade800,
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: 'AFIRMA ',
                              style: GoogleFonts.lexendDeca(
                                color: Colors.grey.shade800,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'que ',
                              style: GoogleFonts.lexendDeca(
                                color: Colors.grey.shade800,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: 'LEU, COMPREENDEU e CONCORDA ',
                              style: GoogleFonts.lexendDeca(
                                color: Colors.grey.shade800,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'com nossos Termos e Condições. Estes Termos e Condições abrangem todos os aplicativos, serviços de Internet ou extensões dos sites relacionados. ',
                              style: GoogleFonts.lexendDeca(
                                color: Colors.grey.shade800,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: 'Caso você não concorde ou ',
                              style: GoogleFonts.lexendDeca(
                                color: Colors.grey.shade800,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'não tenha ficado claro algum ponto, sugere-se que você ',
                              style: GoogleFonts.lexendDeca(
                                color: Colors.grey.shade800,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: 'NÃO NAVEGUE MAIS NELE ',
                              style: GoogleFonts.lexendDeca(
                                color: Colors.grey.shade800,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'até que você tenha sanado todas as suas dúvidas. Você poderá ainda, a qualquer tempo, retornar ao site, clicar e termos de uso e reler quantas vezes desejar. ',
                              style: GoogleFonts.lexendDeca(
                                color: Colors.grey.shade800,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const CustomText(
                        text: 'Termos e Condições',
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      const SizedBox(height: 10),
                      CustomText(
                        text:
                            '2. Os Termos e Condições do LGPD Compliance regem o uso deste Site e todo o seu conteúdo ("Site"). Estes Termos descrevem as regras e regulamentos que orientam o uso de LGPD Compliance localizado em https://lgpdcompliance.com. Todos os materiais/informações/documentos/serviços ou todas as outras entidades (coletivamente referidas como "conteúdo'
                            ') que aparecem no https://lgpdcompliance.com serão administrados de acordo com estes Termos e Condições.',
                        corText: Colors.grey.shade800,
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 20),
                      const CustomText(
                        text:
                            'ATENÇÃO: Não continue a usar este site se você tiver qualquer objeção a qualquer um dos Termos e Condições declarados nesta página.',
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text:
                              '3. O site é destinado a usuários com 18 (dezoito) anos de idade ou mais. ',
                          style: GoogleFonts.lexendDeca(
                            color: Colors.grey.shade800,
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  'Se você tem menos de 18 (dezoito) anos, não poderá usar ou registrar-se para usar este site ou seus serviços sem a permissão ou consentimento dos pais. ',
                              style: GoogleFonts.lexendDeca(
                                color: Colors.grey.shade800,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'Ao concordar com estes Termos e Condições, você tem a capacidade legal necessária para cumprir e ficar vinculado por estes Termos e Condições. ',
                              style: GoogleFonts.lexendDeca(
                                color: Colors.grey.shade800,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '4. LGPD Compliance faz uso de cookies. Ao acessar nosso site, você concorda em usar cookies de acordo com nossa Política de Cookies. "Algum dos nossos parceiros de site podem usar cookies."',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '5.LGPD Compliance detêm os direitos de propriedade intelectual de todo o conteúdo. Todos os direitos de propriedade intelectual são reservados. Você pode acessar qualquer conteúdo do site para seu uso pessoal, sujeito às restrições definidas nestes termos e condições.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            'LGPD Compliance, por meio deste, determina que o usuário do site não cometa as seguintes ações:',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '• Reproduzir, republicar, duplicar ou copiar qualquer conteúdo do LGPD Compliance;',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const CustomText(
                        text:
                            '• Vender, alugar, sublicenciar e/ou de outra forma comercializar qualquer conteúdo do LGPD Compliance;',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const CustomText(
                        text:
                            '• Executar e / ou exibir publicamente qualquer conteúdo do LGPD Compliance;',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const CustomText(
                        text:
                            '• Usar este site de forma que seja, ou talvez, danifique e/ou afete o acesso do usuário a este site;',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const CustomText(
                        text:
                            '• Usar este site contrário às regras, leis e regulamentos relevantes do seu país de residência, ou de uma maneira que cause, ou possa causar, danos ao site ou a qualquer pessoa ou entidade comercial;',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const CustomText(
                        text:
                            '• Realizar mineração de dados ou qualquer outra atividade semelhante relacionada a este site, ou durante o uso deste site;',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const CustomText(
                        text:
                            '• Usando este site para se envolver em qualquer forma de publicidade ou marketing empresarial.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '6. Áreas específicas deste site podem ser restritas ao acesso do usuário, e LGPD Compliance pode estender ainda mais essa restrição a todo o site, a qualquer momento e a seu exclusivo critério. Qualquer identificação de usuário, chave de segurança ou senha que você possa ter neste site são confidenciais e você é responsável por manter a confidencialidade dessas informações.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text: 'Link e Hiperlink',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '7. Nós nos reservamos o direito de registrar solicitações para que você remova todos os links ou qualquer link específico criado por você que redirecione para o nosso site, e você aprova a remoção imediata desses links para o nosso site, mediante solicitação.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '8. Podemos alterar os termos e condições desses direitos de vinculação a qualquer momento. Ao conectar-se continuamente ao nosso site, você concorda em se comprometer e seguir os termos desta política de links.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '9. Por favor, entre em contato conosco se encontrar algum link em nosso site que seja ofensivo, e poderemos considerar e analisar solicitações de remoção de tais links.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text: 'Link para conteúdo de terceiros',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '10. Este site pode conter links para sites ou aplicativos operados por terceiros. Não controlamos nenhum desses sites ou aplicativos de terceiros ou o operador de terceiros. Este Site, objeto do presente Termos de Uso não é responsável e não endossa quaisquer sites ou aplicativos de terceiros ou sua disponibilidade ou conteúdo. LGPD Compliance não se responsabiliza pelos anúncios contidos no site. Você concorda em fazê-lo por sua própria conta e risco ao adquirir quaisquer bens e / ou serviços de terceiros. O anunciante é quem permanece responsável por tais bens e/ou serviços, e se você tiver alguma dúvida ou reclamação sobre eles, você deve entrar em contato com o anunciante',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text: 'Conteúdo do usuário',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '11.Importante salientar que o termo usado "Conteúdo do Usuário" significa qualquer áudio, vídeo, texto, imagens ou outro material ou conteúdo que você decida exibir neste Site. Com relação ao conteúdo do usuário, ao exibi-lo, você concede ao LGPD Compliance uma licença não exclusiva, mundial, irrevogável, isenta de royalties e sublicenciável para usar, reproduzir, adaptar, publicar, traduzir e distribuir em qualquer mídia.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const CustomText(
                        text:
                            '12.O Conteúdo do Usuário deve ser seu e não deve infringir os direitos de terceiros. LGPD Compliance reserva-se o direito de remover qualquer parte do seu conteúdo deste site a qualquer momento, sem aviso prévio. LGPD Compliance tem permissão para monitorar suas atividades no site e remover qualquer conteúdo do usuário considerado impróprio, ofensivo, contrário às leis e regulamentos aplicáveis, ou que cause uma violação destes Termos e Condições.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text: 'Política de Privacidade',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '13. Ao acessar este Site, informações específicas sobre o Usuário, como endereços de protocolo de Internet (IP), navegação no site, software do usuário e tempo de navegação, juntamente com outras informações semelhantes, serão armazenadas nos servidores de LGPD Compliance . As informações sobre suas identidades, como nome, endereço, detalhes de contato, informações de faturamento e outras informações armazenadas neste site, serão estritamente usadas apenas para fins estatísticos e não serão publicadas para acesso geral. LGPD Compliance , no entanto, não assume nenhuma responsabilidade pela segurança dessas informações.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '14. O site é fornecido, com todas as responsabilidades e não assume compromissos, representações ou garantias expressas ou implícitas de qualquer tipo relacionadas a este site ou ao conteúdo nele contido.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text: 'Indenização',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '15. O usuário concorda em indenizar o Site e suas afiliadas em toda a extensão, frente à todas as ações, reclamações, responsabilidades, perdas, danos, custos, demandas e despesas decorrentes do uso deste Site pelo Usuário, incluindo, sem limitação, qualquer reclamação relacionada à violação de qualquer uma das disposições destes Termos e Condições. Se estiver insatisfeito com algum ou todo o conteúdo deste site ou qualquer um ou todos os seus Termos e Condições, o usuário pode interromper o uso deste site.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '16. Em qualquer momento, os usuários podem interromper o uso do Site para isso, no site, estão disponíveis  as orientações necessárias. Caso ainda fique algum dúvida, não hesite em enviar um e-mail para contato@lgpdcompliance.com.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '17. Nós nos reservamos o direito e critério exclusivo de, e sem aviso prévio ou responsabilidade, negar o acesso e uso do site (incluindo o bloqueio de endereços IP específicos) a qualquer usuário por qualquer motivo, incluindo, mas não se limitando à violação de qualquer representação, garantia ou acordo nestes Termos ou em qualquer lei ou regulamento aplicável.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text: 'Disposições Gerais',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '18. Os Termos e Condições deste site serão regidos e interpretados de acordo com as leis do país ou estado em que o Site opera. Você, por meio deste, se submete incondicionalmente à jurisdição não exclusiva dos tribunais localizados no Brasil para a resolução de quaisquer disputas.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '19. Este Site reserva-se o direito de revisar estes Termos a qualquer momento conforme julgar adequado. Por isso é fundamental que os seus usuários estejam atentos à essas aleterações.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '20. O Site reserva-se o direito de ceder, transferir e subcontratar seus direitos e/ou obrigações sob este Acordo sem qualquer notificação ou consentimento prévio necessário. Os usuários não terão permissão para atribuir, transferir ou subcontratar qualquer um de seus direitos e/ou obrigações sob estes Termos. Além disso, uma pessoa que não seja parte destes Termos e Condições não terá o direito de fazer cumprir qualquer disposição neles contida.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '21. Estes Termos e Condições, incluindo quaisquer avisos legais e isenções de responsabilidade neste site, constituem o acordo completo entre o Site e você em relação ao uso deste site. Em última análise, este Acordo substitui todos os acordos e entendimentos anteriores relativos ao mesmo.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text:
                            '22. Qualquer dúvida, entre em contato por meio do endereço de e-mail: contato@lgpdcompliance.com.',
                        fontSize: 12,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
