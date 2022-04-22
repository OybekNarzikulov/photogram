import './app_routes.dart';
import '../ui/home/home_page.dart';
import '../ui/registration_1/registration_page_1.dart';
import '../ui/registration_2/registration_page_2.dart';
import '../ui/user_login/login_page.dart';
import '../ui/login/login_page.dart';

class AppPages {
  static final page = {
    AppRoutes.home: (context) => const HomePage(),
    AppRoutes.registration_1: (context) => const RegistationPage_1(),
    AppRoutes.registration_2: (context) => const RegistationPage_2(),
    AppRoutes.loginPage: (context) => const LoginPage(),

  };
}
