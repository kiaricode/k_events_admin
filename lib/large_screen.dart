import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Row(children: [
        Expanded(child: Container(color: Colors.orange[400])),
        Expanded(child: Container(color: Colors.orange[400])),
      ]),
    );
  }
}
