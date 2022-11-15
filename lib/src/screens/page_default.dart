import 'package:flutter/material.dart';

class PageDefault extends StatelessWidget {
  const PageDefault({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.green[300],
        child: const Center(
          child: Text(
            'Page Default',
          ),
        ),
      ),
    );
  }
}
