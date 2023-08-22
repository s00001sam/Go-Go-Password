import 'package:flutter/material.dart';

// TODO wait use
Future<void> showListDialog(BuildContext context) async {
  List<String> values = ['one', 'two', 'three'];
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        children: [
          ...values.map((value) {
            return SimpleDialogOption(
              padding: const EdgeInsets.all(16.0),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(value),
            );
          }),
        ],
      );
    },
  );
}
