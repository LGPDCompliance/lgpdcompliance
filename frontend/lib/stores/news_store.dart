import 'package:lgpb_compliance/models/news_model.dart';
import 'package:lgpb_compliance/repository/news_repository.dart';
import 'package:mobx/mobx.dart';

part 'news_store.g.dart';

class NewsStore = _NewsStore with _$NewsStore;

abstract class _NewsStore with Store {
  ObservableList<NewsModel> news = ObservableList<NewsModel>();

  @observable
  bool loadingPage = false;

  @action
  Future<void> getNewsAtLGPD() async {
    try {
      loadingPage = true;
      final result = await NewsRepository().getNews();
      news.addAll(result);
      loadingPage = false;
    } catch (error) {
      print("NewsStore.getNewsAtLGPD ERROR: $error}");
      return Future.error('Error');
    }
  }

}