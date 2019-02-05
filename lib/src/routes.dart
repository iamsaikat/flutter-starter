import 'screens/home.dart';
import 'screens/login.dart';
import 'screens/welcome.dart';

final routes = {
  '/': (context) => WelcomeScreen(),
  '/login': (context) => LoginScreen(),
  '/home': (context) => HomeScreen()
};