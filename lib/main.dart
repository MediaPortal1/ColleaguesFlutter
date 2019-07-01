import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'colleagues/colleague.dart';
import 'dart:convert';
import 'colleagues_list.dart';

void main() => runApp(MaterialApp(title: "Colleagues", home: MainScreen()));

class MainScreen extends StatefulWidget {

  @override
  State createState() {
    return new ColleaguesRestDataState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Colleagues")),
        body: Center(child: new CircularProgressIndicator()));
  }
}

class ColleaguesRestDataState extends State<MainScreen> {
  final String url = "http://172.29.11.44:8080/colleagues/get";
  List<Colleague> data = [];

  Future<String> getColleaguesFromJSON() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    var decodedJson = json.decode(response.body) as List<dynamic>;
    var colleaguesList = new List<Colleague>();
    decodedJson
        .forEach((element) => colleaguesList.add(Colleague.fromJson(element)));
    setState(() {
      data = colleaguesList;
    });
    return "Success";
  }

  @override
  void initState() {
    super.initState();
    this.getColleaguesFromJSON();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Colleagues")),
        body: new ColleaguesList(data));
  }
}
