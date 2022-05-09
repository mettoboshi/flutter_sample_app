import 'package:flutter/material.dart';
import 'package:flutter_sample_app/TestPage2.dart';

class TestPage1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Test1")),
        body: Center(
            child: TextButton(
                onPressed: () => {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return TestPage2();
                      }))
                    },
                child: const Text("進む"))));
  }
}
