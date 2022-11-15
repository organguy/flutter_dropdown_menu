import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blue[300],
        child: const Center(
          child: Text(
            'Page2',
          ),
        ),
      ),
    );
  }
}
