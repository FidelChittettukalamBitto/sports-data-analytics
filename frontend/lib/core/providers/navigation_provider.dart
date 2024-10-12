import 'package:flutter/material.dart';
import 'package:frontend/ui/screens/drivers_screen.dart';

class NavigationProvider extends ChangeNotifier {
  NavigationProvider() {}
  int _selectedIndex = 0;
  bool _extended = false;
  String _screenTitle = "DRIVERS";

  final List<Widget> _screens = [
    const DriversScreen(),
    const DriversScreen(),
    const DriversScreen(),
    const DriversScreen(),
    const DriversScreen(),
    const DriversScreen(),
  ];

  final List<NavigationRailDestination> _destinations = [
    const NavigationRailDestination(
      icon: Icon(Icons.calendar_month_outlined),
      label: Text('HOME'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.calendar_month_outlined),
      label: Text('RACES'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.calendar_month_outlined),
      label: Text('DRIVERS'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.calendar_month_outlined),
      label: Text('TEAMS'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.calendar_month_outlined),
      label: Text('GAME'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.calendar_month_outlined),
      label: Text('USER MANUAL'),
    ),
    /*NavigationRailDestination(
      icon: Icon(Icons.insert_drive_file_outlined),
      selectedIcon: Icon(Icons.insert_drive_file),
      label: Text('HEX Files'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.qr_code_scanner_outlined),
      selectedIcon: Icon(Icons.qr_code_scanner),
      label: Text('QR Reader'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.group_outlined),
      selectedIcon: Icon(Icons.group),
      label: Text('Users'),
    ),*/
  ];

  int get selectedIndex => _selectedIndex;
  void updateIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }

  bool get extended => _extended;
  void setExtended(bool value) {
    _extended = value;
    notifyListeners();
  }

  String get screenTitle => _screenTitle;
  void updateAppBar(String value) {
    _screenTitle = value;
    notifyListeners();
  }

  Widget get selectedScreen => _screens.elementAt(_selectedIndex);
  List<Widget> get screens => _screens;
  List<NavigationRailDestination> get destinations => _destinations;
}
