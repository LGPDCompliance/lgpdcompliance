// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewsStore on _NewsStore, Store {
  late final _$loadingPageAtom =
      Atom(name: '_NewsStore.loadingPage', context: context);

  @override
  bool get loadingPage {
    _$loadingPageAtom.reportRead();
    return super.loadingPage;
  }

  @override
  set loadingPage(bool value) {
    _$loadingPageAtom.reportWrite(value, super.loadingPage, () {
      super.loadingPage = value;
    });
  }

  late final _$getNewsAtLGPDAsyncAction =
      AsyncAction('_NewsStore.getNewsAtLGPD', context: context);

  @override
  Future<void> getNewsAtLGPD() {
    return _$getNewsAtLGPDAsyncAction.run(() => super.getNewsAtLGPD());
  }

  @override
  String toString() {
    return '''
loadingPage: ${loadingPage}
    ''';
  }
}
