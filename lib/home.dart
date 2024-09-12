import 'package:apps_experiment_ostad/laptop_scaffold.dart';
import 'package:apps_experiment_ostad/mobile_scaffold.dart';
import 'package:apps_experiment_ostad/responsive_layout.dart';
import 'package:apps_experiment_ostad/tablet_scaffold.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: MobileScaffold(),
      tablet: TabletScaffold(),
      laptop: LaptopScaffold(),

    );
  }
}
