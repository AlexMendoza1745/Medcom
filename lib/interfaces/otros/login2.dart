import 'package:flutter/material.dart';
import 'package:medocom/interfaces/screens_laterales/home.dart';
import 'package:medocom/interfaces/widgets/card_container.dart';
import 'package:medocom/interfaces/widgets/login_backgorund.dart';
import 'package:medocom/providers/login_form_provider.dart';
import 'package:provider/provider.dart';
//import 'package:provider/provider.dart';

class Login2 extends StatelessWidget {
  const Login2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: login_background(
            child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 170),
              Card_Container(
                  child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'login',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ChangeNotifierProvider(
                    create: (_) => LoginFormProvider(),
                    child: const login_form(),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              )),
              const SizedBox(
                height: 50,
              ),
              const Text('no tienes una cuenta? crea una')
            ],
          ),
        )),
      ),
    );
  }
}

class login_form extends StatelessWidget {
  const login_form({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);
    return Container(
      child: Form(
        key: loginForm.key,
        child: Column(
          children: [
            ///////////////////////////
            const TextFormDecoration(
              hintText: 'ejemplo@gmail.com',
              labelText: 'email',
              icono: Icons.email,
              valor: true,
            ),
            const SizedBox(
              height: 10,
            ),
            /////////////////////////////////////////////////////
            const TextFormDecoration(
              hintText: '******',
              labelText: 'contra',
              icono: Icons.lock,
              valor: false,
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                disabledColor: Colors.grey,
                elevation: 2,
                color: Colors.deepPurple,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 55, vertical: 10),
                  child: const Text(
                    'ingresar',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                onPressed: () {
                  if (loginForm.isValid()) {
                    final route =
                        MaterialPageRoute(builder: (context) => const Home());
                    Navigator.push(context, route);
                  }
                })
          ],
        ),
      ),
    );
  }
}

/*class boton extends StatelessWidget {
  const boton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        disabledColor: Colors.grey,
        elevation: 2,
        color: Colors.deepPurple,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 10),
          child: const Text(
            'ingresar',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        onPressed: () {
          loginForm
        });
  }
}*/
////////////////////////////////////

class TextFormDecoration extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData icono;
  final bool valor;
  const TextFormDecoration({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.icono,
    required this.valor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginFormAux = Provider.of<LoginFormProvider>(context);
    return TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: (value) {
          if (valor == true) {
            loginFormAux.password = value;
          } else {
            loginFormAux.email = value;
          }
        },
        validator: (value) {
          if (valor == true) {
            String pattern =
                '[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,5}';
            RegExp regExp = RegExp(pattern);
            return regExp.hasMatch(value ?? '')
                ? null
                : 'el correo no es correcto';
          } else {
            return value != null && value.length >= 6
                ? null
                : 'la contrasena debe tener minimo 6 digitos ';
          }
        },
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple)),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple, width: 2)),
            hintText: hintText,
            labelText: labelText,
            labelStyle: const TextStyle(color: Colors.grey),
            prefixIcon: Icon(icono)));
  }
}
