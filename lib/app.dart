import 'package:apps_experiment_ostad/my_bag_screen.dart';
import 'package:flutter/material.dart';

class MyBagApp extends StatelessWidget {
  const MyBagApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyBagScreen(),
      theme: ThemeData(
          textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 24,
        ),

            bodySmall: TextStyle(
              fontSize: 18
            )
      ),
        iconButtonTheme: IconButtonThemeData(
            style: IconButton.styleFrom(
                backgroundColor:Colors.grey.shade200,
              foregroundColor: Colors.grey.shade600,
              shadowColor: Colors.grey.shade200,
              elevation: 1
            ))
      ),
    );
  }
}
