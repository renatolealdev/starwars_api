// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consult_api.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConsultApi on _ConsultApi, Store {
  final _$filmListAtom = Atom(name: '_ConsultApi.filmList');

  @override
  List<dynamic> get filmList {
    _$filmListAtom.reportRead();
    return super.filmList;
  }

  @override
  set filmList(List<dynamic> value) {
    _$filmListAtom.reportWrite(value, super.filmList, () {
      super.filmList = value;
    });
  }

  final _$peopleListAtom = Atom(name: '_ConsultApi.peopleList');

  @override
  List<dynamic> get peopleList {
    _$peopleListAtom.reportRead();
    return super.peopleList;
  }

  @override
  set peopleList(List<dynamic> value) {
    _$peopleListAtom.reportWrite(value, super.peopleList, () {
      super.peopleList = value;
    });
  }

  final _$loadFilmesAsyncAction = AsyncAction('_ConsultApi.loadFilmes');

  @override
  Future<void> loadFilmes() {
    return _$loadFilmesAsyncAction.run(() => super.loadFilmes());
  }

  final _$loadPeopleAsyncAction = AsyncAction('_ConsultApi.loadPeople');

  @override
  Future<void> loadPeople() {
    return _$loadPeopleAsyncAction.run(() => super.loadPeople());
  }

  @override
  String toString() {
    return '''
filmList: ${filmList},
peopleList: ${peopleList}
    ''';
  }
}
