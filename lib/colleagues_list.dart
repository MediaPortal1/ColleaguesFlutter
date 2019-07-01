import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'colleagues/colleague.dart';
import 'colleagues/colleague_list_item.dart';

class ColleaguesList extends StatelessWidget {
  final List<Colleague> colleagueList;

  ColleaguesList(this.colleagueList);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.all(10.0),
      children: buildListItem(),
    );
  }

  List<ColleagueListItem> buildListItem() {
    return colleagueList
        .map((colleague) => new ColleagueListItem(colleague))
        .toList();
  }
}
