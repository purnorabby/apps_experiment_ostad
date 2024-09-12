import 'package:apps_experiment_ostad/device_type.dart';
import 'package:apps_experiment_ostad/laptop_scaffold.dart';
import 'package:apps_experiment_ostad/mobile_scaffold.dart';
import 'package:apps_experiment_ostad/tablet_scaffold.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key,
    required this.mobile,
    required this.tablet,
    required this.laptop
  });

  final Widget mobile;
  final Widget tablet;
  final Widget laptop;

  @override
  Widget build(BuildContext context) {
    final x=MediaQuery.of(context).size;
    final DeviceType deviceType=ScreenUnites.getDeviceType(x.width);
    if(deviceType==DeviceType.mobile){
      return const MobileScaffold();
    }else if(deviceType==DeviceType.tablet){
      return const TabletScaffold();
    }
    return const LaptopScaffold();
  }
}
