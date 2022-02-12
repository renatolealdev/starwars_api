import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';

part 'consult_api.store.g.dart';

class ConsultApi = _ConsultApi with _$ConsultApi;

abstract class _ConsultApi with Store {
  final baseUrl = "https://swapi.dev/api/";

  @observable
  List filmList = [];

  @observable
  List peopleList = [];

  @action
  Future<void> loadFilmes() async {
    final response = await http.get(Uri.parse('${baseUrl}films/'));
    Map<String, dynamic> data = jsonDecode(response.body);
    var completeList = data['results'];
    for (var element in completeList) {
      filmList.add(element['title']);
    }
    print(filmList);
  }

  @action
  Future<void> loadPeople() async {
    final response = await http.get(Uri.parse('${baseUrl}people/'));
    Map<String, dynamic> data = jsonDecode(response.body);
    var completeList = data['results'];
    for (var element in completeList) {
      peopleList.add(element['name']);
    }
    print(peopleList);
 
  }
}
