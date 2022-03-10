import 'package:flutter/material.dart';

class PageScaffold extends StatelessWidget {
  final Widget child;

  const PageScaffold({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: 1440,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 48,
                right: 48,
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
