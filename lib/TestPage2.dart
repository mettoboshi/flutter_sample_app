import 'package:flutter/material.dart';
import 'package:flutter_sample_app/TestPage3.dart';

class TestPage2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Test2")),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
              onPressed: () => {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return TestPage3();
                    }))
                  },
              child: const Text("進む")),
          TextButton(
              onPressed: () => {Navigator.of(context).pop()},
              child: const Text("戻る"))
        ])));
  }
}
