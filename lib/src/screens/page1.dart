import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.red[300],
        child: const Center(
          child: Text(
            'Page1',
          ),
        ),
      ),
    );
  }
}
