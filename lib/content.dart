import 'package:flutter/material.dart';

final joinCourseButton=ElevatedButton(
    onPressed: (){},
    child: const Text("Join Course")
);

final myappBar=AppBar(
  title: const Align(
    alignment: Alignment.centerLeft,
      child: Text('Hamming\nBird.'),
  ),
  actions: [
    TextButton(onPressed: (){}, child: const Text('Episods')),
    const SizedBox(width: 16,),
    TextButton(onPressed: (){}, child: const Text('About'))
  ],
);

