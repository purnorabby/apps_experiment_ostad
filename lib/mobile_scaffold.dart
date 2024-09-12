
import 'package:apps_experiment_ostad/bodyTextTile.dart';
import 'package:apps_experiment_ostad/content.dart';
import 'package:flutter/material.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
            child: Text('Hamming\nBird')),
      ),
      drawer: _buildMobileDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.all(48.0),
            child: bodyTextTile(crossAxisAlignment: CrossAxisAlignment.center
            ),
          ),
          joinCourseButton
        ],

      ),
    );
  }



  Drawer _buildMobileDrawer() {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.greenAccent.shade400,
            width: double.infinity,
            child:  DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('SKILL UP NOW',
                  style: TextStyle(fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  ),
                  TextButton(onPressed: () {}, child: const Text(
                      'TAP HERE',style: TextStyle(color:Colors.white),))
                ],
              ),

            ),
          ),
          const SizedBox(height: 24,),
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.ondemand_video_outlined),
                  title: Padding(
                    padding: EdgeInsets.symmetric(vertical: 00,horizontal: 20),
                    child: Text('Episodes'),
                  ),
                ),
                SizedBox(height: 42,),
                ListTile(
                  leading: Icon(Icons.announcement),
                  title: Padding(
                    padding: EdgeInsets.symmetric(vertical: 00,horizontal: 20),
                    child: Text('About'),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
