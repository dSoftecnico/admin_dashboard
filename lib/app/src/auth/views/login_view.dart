import 'package:admin_dashboard/exports/exports_packages.dart';
import 'package:admin_dashboard/exports/exports_widgets.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return ChangeNotifierProvider(
      create: (_) => LoginFormProvider(),
      child: Builder(builder: (context) {
        final loginFromProvider = Provider.of<LoginFormProvider>(context, listen: false);
        return Container(
          margin: const EdgeInsets.only(top: 100.0),
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 370.0),
              child: Form(
                key: loginFromProvider.formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (!EmailValidator.validate(value ?? '')) {
                          return 'Correo electrónico no válido';
                        }
                        return null;
                      },
                      onFieldSubmitted: (_) => onFormSubmit(
                        loginFromProvider,
                        authProvider,
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) => loginFromProvider.email = value,
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
                      onFieldSubmitted: (_) => onFormSubmit(
                        loginFromProvider,
                        authProvider,
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      obscureText: true,
                      onChanged: (value) => loginFromProvider.password = value,
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
                          horizontal: 10.0,
                          topLeft: 3.0,
                          bottomLeft: 3.0,
                          topRight: 0.0,
                          bottomRight: 0.0,
                          icon: FontAwesomeIcons.google,
                          iconColor: Colors.white,
                        ),
                        const SizedBox(width: 10.0),
                        CustomOutlinedButtonSocial(
                          onPressed: () {},
                          horizontal: 5.0,
                          icon: FontAwesomeIcons.facebookSquare,
                          iconColor: Colors.white,
                        ),
                        const SizedBox(width: 10.0),
                        CustomOutlinedButtonSocial(
                          onPressed: () {
                            Navigator.pushNamed(context, Flurorouter.registerRoute);
                          },
                          horizontal: 5.0,
                          icon: Icons.post_add_rounded,
                        ),
                        const SizedBox(width: 10.0),
                        CustomOutlinedButton(
                          topRight: 3.0,
                          bottomRight: 3.0,
                          onPressed: () => onFormSubmit(loginFromProvider, authProvider),
                          horizontal: 20.0,
                          text: 'Ingresar',
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

  void onFormSubmit(LoginFormProvider loginFromProvider, AuthProvider authProvider) {
    final isValid = loginFromProvider.validForm();

    if (isValid) {
      authProvider.login(loginFromProvider.email, loginFromProvider.password);
    }
  }
}
