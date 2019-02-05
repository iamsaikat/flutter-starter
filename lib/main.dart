import 'package:flutter/material.dart';
import 'src/routes.dart';
import 'src/utils/color.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: _fStarterTheme,
      initialRoute: '/',
      routes: routes,
    );
  }
}

void main() {
  runApp(MainScreen());
}

final ThemeData _fStarterTheme = _buildFlutterTheme();

ThemeData _buildFlutterTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    colorScheme: fStarterColorScheme,
    accentColor: fColorGreen300,
    primaryColor: fColorGreen300,
    buttonColor: fColorGreen300,
    scaffoldBackgroundColor: fColorBackgroundWhite,
    cardColor: fColorBackgroundWhite,
    textSelectionColor: fColorGreen100,
    errorColor: fColorErrorRed,
    buttonTheme: const ButtonThemeData(
      colorScheme: fStarterColorScheme,
      textTheme: ButtonTextTheme.normal,
    ),
  );
}

const ColorScheme fStarterColorScheme = ColorScheme(
  primary: fColorGreen300,
  primaryVariant: fColorGreen300,
  secondary: fColorCyan600,
  secondaryVariant: fColorCyan600,
  surface: fColorSurfaceWhite,
  background: fColorBackgroundWhite,
  error: fColorErrorRed,
  onPrimary: fColorGreen300,
  onSecondary: fColorCyan900,
  onSurface: fColorSurfaceWhite,
  onBackground: fColorCyan900,
  onError: Colors.white,
  brightness: Brightness.dark,
);
