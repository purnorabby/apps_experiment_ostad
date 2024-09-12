enum DeviceType{
  mobile,
  tablet,
  desktop
}

class ScreenUnites {
  static double mobileMaxWidth = 640;
  static double tabletMaxWidth = 1008;
  static double desktopMinWidth = tabletMaxWidth;

  static DeviceType getDeviceType(double width) {
    if (width < ScreenUnites.mobileMaxWidth) {
      return DeviceType.mobile;
    } else if (width >= ScreenUnites.mobileMaxWidth &&
        width < ScreenUnites.tabletMaxWidth) {
      return DeviceType.tablet;
    }
    return DeviceType.desktop;
  }
}