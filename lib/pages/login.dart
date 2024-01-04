import 'package:flutter/material.dart';
import 'package:gochecker/models/user.dart';
import 'package:gochecker/theme/app_images.dart';

import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late TextEditingController email = TextEditingController();
  late TextEditingController senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Center(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        AppImages.logo,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: email,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        obscureText: true,
                        controller: senha,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Senha',
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              User user = User(
                                id: 1,
                                name: 'Roberto',
                                email: email.text,
                              );
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (_) => HomePage(
                                          user: user,
                                        )),
                              );
                            },
                            child: const Text('Entrar'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              User user = User(
                                id: 1,
                                name: 'Roberto',
                                email: email.text,
                              );
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (_) => HomePage(
                                          user: user,
                                        )),
                              );
                            },
                            child: const Text('Criar conta'),
                          ),
                        ),
                      ],
                    ),
                  ],
                )))));
  }
}
