import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import '../colleague_detail.dart';
import 'colleague.dart';


class ColleagueListItem extends StatelessWidget{

  final Colleague colleague;

  ColleagueListItem(this.colleague);

  @override
  Widget build(BuildContext context) {
      return new ListTile(
        leading: new CircleAvatar(child: new Text(colleague.name, textScaleFactor: 0.8, maxLines: 2, textAlign: TextAlign.justify), maxRadius: 60),
        title: new Text(colleague.title),
        subtitle: new Text(colleague.birthdayDate),
      onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => ColleagueDetails(colleague: this.colleague)))},);
  }


}