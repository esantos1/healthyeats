import 'package:healthyeats/pages/calculator_page.dart';
import 'package:healthyeats/pages/carte_page.dart';
import 'package:healthyeats/pages/chat_page.dart';
import 'package:healthyeats/pages/home_page.dart';
import 'package:healthyeats/pages/loading_page.dart';
import 'package:healthyeats/pages/login_page.dart';
import 'package:healthyeats/pages/profile_page.dart';
import 'package:healthyeats/pages/sign_up.dart';

final routes = {
  '/': (context) => LoginPage(),
  '/loading': (context) => LoadingPage(),
  '/signup': (context) => SignUp(),
  '/home': (context) => HomePage(),
  '/profile': (context) => ProfilePage(),
  '/calculator': (context) => CalculatorPage(),
  '/carte': (context) => CartePage(),
  '/chat': (context) => ChatPage(),
};
