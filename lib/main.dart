import 'dart:developer';

import 'package:flutter/material.dart';
import 'app_screens/home.dart';

void main() {
  runApp(MaterialApp(
    title: "Exploring UI widgets",
    home: Scaffold(
        appBar: AppBar(title: Text('Long list')), body: getListViews()),
  ));
}

List<String> getListElements() {
  var items = List<String>.generate(20, (counter) => "Item $counter");
  List<String> itemss = List(3);
  itemss[0] = 'One';
  itemss[1] = 'Two';
  itemss[2] = 'Three';
  return items;
}

Widget getListViews() {
  var listItems = getListElements();
  var listView = ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(listItems[index]),
      );
    },
  );
  return listView;
}
