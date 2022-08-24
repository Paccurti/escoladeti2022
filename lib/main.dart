import 'package:flutter/material.dart';
import 'package:teste_cesu/pages/ask_for_retrieve_password_screen.dart';
import 'package:teste_cesu/pages/change_password_screen.dart';
import 'package:teste_cesu/pages/login_page.dart';
import 'package:teste_cesu/pages/register_screen.dart';

import 'utils/approutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData(
      textTheme: ThemeData.light().textTheme.copyWith(
            headline6: const TextStyle(
              fontSize: 24,
              fontFamily: 'Montserrat',
            ),
          ),
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: tema.copyWith(
          colorScheme: tema.colorScheme.copyWith(
            primary: const Color.fromRGBO(255, 122, 0, 1),
            secondary: const Color.fromRGBO(217, 217, 217, 1),
          ),
        ),
        routes: {
          AppRoutes.LOGINPAGE: (ctx) => const LoginPage(),
          AppRoutes.REGISTER_SCREEN: (ctx) => RegisterScreen(onSubmit: () {}),
          AppRoutes.ASK_FOR_RETRIEVE: (ctx) =>
              const AskForRetrivePasswordScreen(),
          AppRoutes.CHANGE_PASSWORD_SCREEN: (ctx) =>
              const ChangePasswordScreen(),
          // AppRoutes.TESTE2: (ctx) => Teste2Screen(),
        });
  }
}
