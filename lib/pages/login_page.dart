// ignore_for_file: unused_field

import 'package:flutter/material.dart';

import '../utils/approutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _formData = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundColor: Theme.of(context).colorScheme.secondary,
                // backgroundImage: _image != null ? FileImage(_image!) : null,
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  // onChanged: (name) => _formData.name = name,
                  decoration: InputDecoration(
                    label: const Center(
                      child: Text(
                        'Email/Usuário',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(10)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: const Center(
                      child: Text(
                        'Senha',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(10)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    shape: const CircleBorder(),
                    value: false,
                    onChanged: (newValue) {
                      setState(() {});
                    },
                  ),
                  const Text('Lembrar de mim?')
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    // AppRoutes.SATISFACTION_RESEARCH,
                    AppRoutes.ASK_FOR_RETRIEVE,
                  );
                },
                child: const Text(
                  'Esqueceu a senha?',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.REGISTER_SCREEN,
                  );
                },
                child: const Text(
                  'Registrar agora!',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/teste_google.png',
                    scale: 7.9,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/images/teste_facebook.png',
                    scale: 6,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
