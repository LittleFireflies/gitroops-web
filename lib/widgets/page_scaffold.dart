import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/header.dart';

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
            child: Column(
              children: [
                const Header(),
                child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
