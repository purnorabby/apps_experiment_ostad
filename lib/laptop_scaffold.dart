import 'package:apps_experiment_ostad/bodyTextTile.dart';
import 'package:apps_experiment_ostad/content.dart';
import 'package:flutter/material.dart';

class LaptopScaffold extends StatefulWidget {
  const LaptopScaffold({super.key});

  @override
  State<LaptopScaffold> createState() => _LaptopScaffoldState();
}

class _LaptopScaffoldState extends State<LaptopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          children: [
            myappBar,
            const SizedBox(height: 40,),
            Center(
              heightFactor: 2,
              child: Row(
                children: [
                  const Expanded(
                      child: bodyTextTile(crossAxisAlignment: CrossAxisAlignment.start),
                  ),
                   const SizedBox(width: 180,),
                  joinCourseButton
                ],
              ),
            )

          ],

        ),
      )
    );
  }
}
