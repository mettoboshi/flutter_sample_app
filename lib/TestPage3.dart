import 'dart:html';

import 'package:flutter/material.dart';

class TestPage3 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Test3")),
        body: Center(
            child: TextButton(
                onPressed: () => {Navigator.of(context).pop()},
                child: const Text("戻る"))));
  }
}
