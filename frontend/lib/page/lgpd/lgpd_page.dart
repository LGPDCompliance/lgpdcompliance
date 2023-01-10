import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/stores/news_store.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class LGPDPage extends StatelessWidget {
  LGPDPage({Key? key}) : super(key: key);

  final NewsStore newsStore = GetIt.I<NewsStore>();

  void openUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWrapper.of(context).isMobile ||
        MediaQuery.of(context).size.width == 450;
    return Observer(
      builder: (_) {
        return newsStore.loadingPage
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                controller: ScrollController(),
                itemCount: newsStore.news.length,
                itemBuilder: (BuildContext context, int index) {
                  final news = newsStore.news[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: CachedNetworkImage(
                            imageUrl: news.image,
                            height: 200,
                            fit: BoxFit.cover,
                            progressIndicatorBuilder:
                                (context, url, progress) => Center(
                              child: CircularProgressIndicator(
                                value: progress.progress,
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            height: 200,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: news.title,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  maxLines: 2,
                                  textOverflow: TextOverflow.ellipsis,
                                ),
                                CustomText(
                                  text: news.description,
                                  fontSize: 15,
                                  maxLines: isMobile ? 2 : 4,
                                  textOverflow: TextOverflow.ellipsis,
                                ),
                                Wrap(
                                  alignment: WrapAlignment.spaceBetween,
                                  spacing: 20,
                                  children: [
                                    CustomText(
                                      text:
                                          'Publicado em: ${DateFormat('dd/MM/yyyy').format(news.publishedAt)}',
                                      fontSize: 10,
                                    ),
                                    CustomText(
                                      text: 'Fonte: ${news.author}',
                                      fontSize: 10,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          const TextSpan(
                                            text: 'Acesse a notícia completa ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'clicando aqui',
                                            style: const TextStyle(
                                              color: primaryColor,
                                              fontSize: 10,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                openUrl(news.url);
                                              },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
      },
    );
  }
}
