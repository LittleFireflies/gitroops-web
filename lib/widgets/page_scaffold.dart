import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/header.dart';
import 'package:gita_gitroops/widgets/responsive_widget.dart';

class PageScaffold extends StatelessWidget {
  final Widget child;

  const PageScaffold({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !ResponsiveWidget.isLargeScreen(context)
          ? AppBar(
              title: const Text('Gita Sekar Andarini'),
              centerTitle: false,
            )
          : null,
      drawer: !ResponsiveWidget.isLargeScreen(context) ? const Drawer() : null,
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: 1440,
            child: Column(
              children: [
                if (ResponsiveWidget.isLargeScreen(context)) ...[
                  const Header()
                ],
                child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
