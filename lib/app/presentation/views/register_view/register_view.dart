import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:proyecto_base/app/presentation/widgets/my_social_button.dart';
import '../../widgets/my_text_form.dart';
import '../login_view/login_view.dart';
import 'widgets/register_divider.dart';


class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  static const String name = 'register_view';

  final _primerNombre = TextEditingController();
  final _segundoApellido = TextEditingController();
  final _apodo = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16.0),
              const Text(
                'Registrar',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              MyTextForm(
                labelText: 'primer nombre',
                hintText: 'escribe tu nombre',
                textInputType: TextInputType.text,
                controller: _primerNombre,
                obscureText: false,
                suffixIcon: true,
              ),
              const SizedBox(height: 16.0),
              MyTextForm(
                labelText: 'primer apellido',
                hintText: 'escribe tu primer apellido',
                textInputType: TextInputType.text,
                obscureText: false,
                suffixIcon: true,
                controller: _segundoApellido,
              ),
              const SizedBox(height: 16.0),
              MyTextForm(
                labelText: 'Apodo',
                hintText: 'escribe tu apodo',
                textInputType: TextInputType.text,
                controller: _apodo,
                obscureText: false,
                suffixIcon: true,
              ),
              const SizedBox(height: 16.0),
              MyTextForm(
                labelText: 'Email',
                hintText: 'escriba tu email',
                textInputType: TextInputType.emailAddress,
                controller: _email,
                obscureText: false,
                suffixIcon: true,
              ),
              const SizedBox(height: 16.0),
              MyTextForm(
                labelText: 'contraseña',
                hintText: 'escriba tu contraseña',
                textInputType: TextInputType.visiblePassword,
                controller: _password,
                obscureText: true,
                suffixIcon: true,
              ),
              const SizedBox(height: 16.0),
              MyTextForm(
                labelText: 'confirmar contraseña',
                hintText: 'escriba tu contraseña',
                textInputType: TextInputType.visiblePassword,
                controller: _password,
                obscureText: true,
                suffixIcon: true,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  print('REGISTRAR');
                },
                child: const Text('Registrar'),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  context.goNamed(LoginView.name);
                },
                child: const Text('Login'),
              ),
              const RegisterDivider(),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MySocialButton(
                    onTap: () {},
                    imagepPath: 'assets/images/google.png',
                  ),
                  MySocialButton(
                    onTap: () {},
                    imagepPath: 'assets/images/google.png',
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
    );
  }
}

