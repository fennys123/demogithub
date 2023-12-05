import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:proyecto_base/app/presentation/views/login_view/widgets/login_divider.dart';
import 'package:proyecto_base/app/presentation/widgets/my_button_form.dart';
import 'package:proyecto_base/app/presentation/widgets/my_social_button.dart';
import 'package:proyecto_base/app/presentation/widgets/my_text_form.dart';

import '../register_view/register_view.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  static const String name = 'login_view';

  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/images/dragones.svg',
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary,
                    BlendMode.srcIn,
                  ),
                  alignment: Alignment.topCenter,
                  width: 100,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Login to your account',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                MyTextForm(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                  suffixIcon: true,
                  controller: _email,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextForm(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  suffixIcon: true,
                  controller: _password,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButtonForm(
                    text: 'Login',
                    onTap: () {
                      print('login');
                    }),
                const SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    context.goNamed(RegisterView.name);
                  }, child: const Text('Registrar'),
                ),
                const LoginDivider(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MySocialButton(
                      onTap: () {},
                      imagepPath: 'assets/images/google.png',
                    ),
                    MySocialButton(
                      onTap: () {},
                      imagepPath: 'assets/images/dragones.png',
                    ),
                    MySocialButton(
                      onTap: () {},
                      imagepPath: 'assets/images/google.png',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } // PARA DESLISAR COMO UNA PANTALLA//
}
