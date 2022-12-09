import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medocom/interfaces/ejemplos/listas.dart';
import 'package:medocom/interfaces/screen_principale/formulario.dart';
import 'package:medocom/interfaces/screens_laterales/contacto.dart';
import 'package:medocom/interfaces/screens_laterales/informacionM.dart';
import 'package:medocom/interfaces/widgets/calendario.dart';

class Tarjetas_home extends StatelessWidget {
  const Tarjetas_home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(children:  [
      TableRow(children: [
        //_Cards()
        _Cards(
          icon: Icons.calendar_today,
          nombre: 'nueva receta',
          colorcillo: Colors.red,
          colorTexto: Colors.blue,
          ruta: MaterialPageRoute(builder: (context) => const Formulario())
        ),
        _Cards(
            icon: Icons.new_releases,
            nombre: 'seguimiento',
            colorcillo: Colors.purple,
            colorTexto: Colors.purple,
            ruta: MaterialPageRoute(builder: (context) => const Informacion())
            )
      ]),
      TableRow(children: [
        // _Cards()
        _Cards(
            icon: Icons.check,
            nombre: 'calendario',
            colorcillo: Colors.green,
            colorTexto: Colors.green,
            ruta: MaterialPageRoute(builder: (context) => const Calendario())
            ),
        _Cards(
            icon: Icons.account_balance_wallet,
            nombre: 'hospitales',
            colorcillo: Colors.red,
            colorTexto: Colors.red,
                   ruta: MaterialPageRoute(builder: (context) => const Lista_ejemplo())
            )
      ]),
      TableRow(children: [
        // _Cards()
        _Cards(
            icon: Icons.check,
            nombre: 'contacta con un medico',
            colorcillo: Colors.green,
            colorTexto: Colors.green,
                   ruta: MaterialPageRoute(builder: (context) => const Contacto())
            ),
        _Cards(
            icon: Icons.account_balance_wallet,
            nombre: 'otra cosa',
            colorcillo: Colors.red,
            colorTexto: Colors.red,
                   ruta: MaterialPageRoute(builder: (context) => const Formulario())
            )
      ]),
    ]);
  }
}

class _Cards extends StatelessWidget {
  final IconData icon;
  final String nombre;
  final Color colorcillo;
  final Color colorTexto;
  final Route ruta;
  const _Cards({
    Key? key,
    required this.icon,
    required this.nombre,
    required this.colorcillo,
    required this.colorTexto, required this.ruta,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            //margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            height: 130,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: IconButton(
                    iconSize: 30,
                    icon: Icon(
                      icon,
                      color: colorcillo,
                    ),
                    onPressed: () {
                    
                      Navigator.push(context, ruta);
                    },
                  ),
                  radius: 30,
                ),
                Text(
                  nombre,
                  style: TextStyle(color: colorTexto),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
