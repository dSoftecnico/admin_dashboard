import 'package:admin_dashboard/exports/exports_packages.dart';
import 'package:admin_dashboard/exports/exports_widgets.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RegisterFormProvider(),
      child: Builder(builder: (context) {
        final registerFormProvider = Provider.of<RegisterFormProvider>(context, listen: false);
        // final authProvider = Provider.of<AuthProvider>(context);

        return Container(
          margin: const EdgeInsets.only(top: 100.0),
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 370.0),
              child: Form(
                key: registerFormProvider.formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (!EmailValidator.validate(value ?? '')) {
                          return 'Correo electrónico no válido';
                        }
                        return null;
                      },
                      style: const TextStyle(color: Colors.white),
                      onChanged: (value) => registerFormProvider.email = value,
                      decoration: CustomInputDecoration.customInputDecoration(
                        hint: 'Ingrese su correo electrónico',
                        label: 'Correo electrónico',
                        icon: Icons.email_outlined,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) return 'Ingrese su contraseña';
                        if (value.length < 8) return 'La contraseña debe ser mayor de 8 caracteres';
                        return null;
                      },
                      obscureText: true,
                      style: const TextStyle(color: Colors.white),
                      onChanged: (value) => registerFormProvider.password = value,
                      decoration: CustomInputDecoration.customInputDecoration(
                        hint: 'Ingrese su Contraseña',
                        label: 'Contraseña',
                        icon: Icons.password,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomOutlinedButtonSocial(
                          onPressed: () {},
                          horizontal: 13.0,
                          topLeft: 3.0,
                          bottomLeft: 3.0,
                          topRight: 0.0,
                          bottomRight: 0.0,
                          icon: FontAwesomeIcons.google,
                          iconColor: Colors.white,
                          iconSize: 24.0,
                        ),
                        const SizedBox(width: 10.0),
                        CustomOutlinedButtonSocial(
                          onPressed: () {},
                          horizontal: 5.0,
                          icon: FontAwesomeIcons.facebookSquare,
                          iconColor: Colors.white,
                          iconSize: 24.0,
                        ),
                        const SizedBox(width: 10.0),
                        CustomOutlinedButtonSocial(
                          onPressed: () {
                            Navigator.pushNamed(context, Flurorouter.loginRoute);
                          },
                          horizontal: 5.0,
                          icon: Icons.login_outlined,
                        ),
                        const SizedBox(width: 10.0),
                        CustomOutlinedButton(
                          topRight: 3.0,
                          bottomRight: 3.0,
                          onPressed: () {
                            registerFormProvider.validForm();
                          },
                          horizontal: 14.0,
                          text: 'Registrar',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  // void onFormSubmit(
  //     RegisterFormProvider registerFormProvider, AuthProvider authProvider) {
  //   final validForm = registerFormProvider.validForm();
  //   if (!validForm) return;

  //   authProvider.register(
  //     registerFormProvider.email,
  //     registerFormProvider.password,
  //   );
  // }
}
