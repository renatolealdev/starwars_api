import 'package:mobx/mobx.dart';

part 'application.store.g.dart';

class Application = _Application with _$Application;

abstract class _Application with Store {

  @observable
  int currentPageView = 0;

  @observable
  bool filmesColorTab = true;

  @observable
  bool personagensColorTab = false;

  @observable
  bool favoritosColorTab = false;

  @observable
  bool siteOficialColorButtom = false;

    @action
  filmesForTrue() {
    filmesColorTab = true;
    personagensColorTab = false;
    favoritosColorTab = false;
    siteOficialColorButtom = false;
  }

  @action
  personagensForTrue() {
    personagensColorTab = true;
    filmesColorTab = false;
    favoritosColorTab = false;
    siteOficialColorButtom = false;
  }

  @action
  favoritosForTrue() {
    favoritosColorTab = true;
    filmesColorTab = false;
    personagensColorTab = false;
    siteOficialColorButtom = false;
  }

  @action
  siteOficialForTrue() {
    siteOficialColorButtom = true;
    favoritosColorTab = false;
    filmesColorTab = false;
    personagensColorTab = false;
  }

}
