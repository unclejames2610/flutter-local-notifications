import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  // final String payload;
  const SecondPage({
    super.key,
    // required this.payload,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Text("payload"),
    );
  }
}
