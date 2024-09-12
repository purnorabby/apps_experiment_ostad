import 'package:flutter/material.dart';

class bodyTextTile extends StatelessWidget {
  const bodyTextTile({super.key, required this.crossAxisAlignment});

  final CrossAxisAlignment crossAxisAlignment;


  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("FLUTTER WEB.\n THE BASIS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
        Text('In this course we will go over the basics of using Flutter Web for development. Topics will include Responsive Layout, Deploying, Font Changes, Hover functionality, Modals and more.')
      ],
    );
  }
}
