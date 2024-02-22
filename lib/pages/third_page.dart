import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  // final String payload;
  const ThirdPage({
    super.key,
    // required this.payload,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Third Page"),
        ),
        body: Text("payload"));
  }
}
