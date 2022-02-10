// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Application on _Application, Store {
  final _$currentPageViewAtom = Atom(name: '_Application.currentPageView');

  @override
  int get currentPageView {
    _$currentPageViewAtom.reportRead();
    return super.currentPageView;
  }

  @override
  set currentPageView(int value) {
    _$currentPageViewAtom.reportWrite(value, super.currentPageView, () {
      super.currentPageView = value;
    });
  }

  final _$filmesColorTabAtom = Atom(name: '_Application.filmesColorTab');

  @override
  bool get filmesColorTab {
    _$filmesColorTabAtom.reportRead();
    return super.filmesColorTab;
  }

  @override
  set filmesColorTab(bool value) {
    _$filmesColorTabAtom.reportWrite(value, super.filmesColorTab, () {
      super.filmesColorTab = value;
    });
  }

  final _$personagensColorTabAtom =
      Atom(name: '_Application.personagensColorTab');

  @override
  bool get personagensColorTab {
    _$personagensColorTabAtom.reportRead();
    return super.personagensColorTab;
  }

  @override
  set personagensColorTab(bool value) {
    _$personagensColorTabAtom.reportWrite(value, super.personagensColorTab, () {
      super.personagensColorTab = value;
    });
  }

  final _$favoritosColorTabAtom = Atom(name: '_Application.favoritosColorTab');

  @override
  bool get favoritosColorTab {
    _$favoritosColorTabAtom.reportRead();
    return super.favoritosColorTab;
  }

  @override
  set favoritosColorTab(bool value) {
    _$favoritosColorTabAtom.reportWrite(value, super.favoritosColorTab, () {
      super.favoritosColorTab = value;
    });
  }

  final _$siteOficialColorButtomAtom =
      Atom(name: '_Application.siteOficialColorButtom');

  @override
  bool get siteOficialColorButtom {
    _$siteOficialColorButtomAtom.reportRead();
    return super.siteOficialColorButtom;
  }

  @override
  set siteOficialColorButtom(bool value) {
    _$siteOficialColorButtomAtom
        .reportWrite(value, super.siteOficialColorButtom, () {
      super.siteOficialColorButtom = value;
    });
  }

  final _$_ApplicationActionController = ActionController(name: '_Application');

  @override
  dynamic filmesForTrue() {
    final _$actionInfo = _$_ApplicationActionController.startAction(
        name: '_Application.filmesForTrue');
    try {
      return super.filmesForTrue();
    } finally {
      _$_ApplicationActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic personagensForTrue() {
    final _$actionInfo = _$_ApplicationActionController.startAction(
        name: '_Application.personagensForTrue');
    try {
      return super.personagensForTrue();
    } finally {
      _$_ApplicationActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic favoritosForTrue() {
    final _$actionInfo = _$_ApplicationActionController.startAction(
        name: '_Application.favoritosForTrue');
    try {
      return super.favoritosForTrue();
    } finally {
      _$_ApplicationActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic siteOficialForTrue() {
    final _$actionInfo = _$_ApplicationActionController.startAction(
        name: '_Application.siteOficialForTrue');
    try {
      return super.siteOficialForTrue();
    } finally {
      _$_ApplicationActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPageView: ${currentPageView},
filmesColorTab: ${filmesColorTab},
personagensColorTab: ${personagensColorTab},
favoritosColorTab: ${favoritosColorTab},
siteOficialColorButtom: ${siteOficialColorButtom}
    ''';
  }
}
