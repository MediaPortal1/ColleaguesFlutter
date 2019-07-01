import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'colleagues/colleague.dart';

class ColleagueDetails extends StatelessWidget {
  final Colleague colleague;

  ColleagueDetails({Key key, @required this.colleague}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text(colleague.name)),
        body: Container(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CircleAvatar(child: Center(child: Text(colleague.name, textAlign: TextAlign.center)), radius: 80),
                      Text(colleague.title),
                      Text(colleague.name),
                      Text(colleague.birthdayDate)
                    ],
                  ),
                ],
              ),
            )));
  }
}
