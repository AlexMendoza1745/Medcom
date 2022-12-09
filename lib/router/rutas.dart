import 'package:flutter/material.dart';
import 'package:medocom/interfaces/lista_hospitales/Maria_Isabel.dart';
import 'package:medocom/interfaces/lista_hospitales/Martin_Munguia.dart';
import 'package:medocom/interfaces/lista_hospitales/Materno.dart';
import 'package:medocom/interfaces/lista_hospitales/San_Vicente.dart';
import 'package:medocom/interfaces/lista_hospitales/Zona6.dart';
import 'package:medocom/interfaces/otros/login2.dart';
import 'package:medocom/interfaces/widgets/calendario.dart';
import 'package:medocom/models/opciones_menu.dart';
import '../models/exportaciones.dart';

class AppRutas {
  static List<Opcion_Menu> options = <Opcion_Menu>[
    Opcion_Menu(
        route: 'Maria',
        name: 'hospital Maria Isabel',
        icon: Icons.medical_services,
        screen: const Maria_Isabel()),
    Opcion_Menu(
        route: 'Martin',
        name: 'hospital Martin Munguia',
        icon: Icons.medical_services,
        screen: const Martin_Munguia()),
    Opcion_Menu(
        route: 'Materno',
        name: 'hospital Materno',
        icon: Icons.medical_services,
        screen: const Materno()),
    Opcion_Menu(
        route: 'San Vicente',
        name: 'hospital San Vicente',
        icon: Icons.medical_services,
        screen: const San_Vicente()),
    Opcion_Menu(
        route: 'Zona 6',
        name: 'hospital Zona 6',
        icon: Icons.medical_services,
        screen: const Zona6())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoute() {
    Map<String, Widget Function(BuildContext)> appRutas = {};
    for (final op in options) {
      appRutas.addAll({op.route: (context) => op.screen});
    }
    return appRutas;
  }

  static Route<dynamic> onGenerateRoute<RouteSettings>(settings) {
    return MaterialPageRoute(
      builder: (context) => const Login2(),
    );
  }

  static Map<String, Widget Function(BuildContext)> rutas = {
    'login': (context) => const Login2(),
    
    //'lateral': (context) => const Lateral(),
    Calendario.ruta: (context) => const Calendario()
  };
  static String initialRoute = 'login';
}
