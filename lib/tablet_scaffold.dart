import 'package:apps_experiment_ostad/bodyTextTile.dart';
import 'package:apps_experiment_ostad/content.dart';
import 'package:flutter/material.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          children: [
            myappBar,
            const SizedBox(height: 24,),
            const Padding(
              padding: EdgeInsets.all(48.0),
              child: bodyTextTile(crossAxisAlignment: CrossAxisAlignment.center),
            ),
            const SizedBox(height: 24,),
            joinCourseButton
          ],

        ),
      ),
    );
  }
}
