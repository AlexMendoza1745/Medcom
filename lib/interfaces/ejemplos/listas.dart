import 'package:flutter/material.dart';
import 'package:medocom/interfaces/lista_hospitales/Maria_Isabel.dart';
import 'package:medocom/interfaces/lista_hospitales/Martin_Munguia.dart';
import 'package:medocom/interfaces/lista_hospitales/Materno.dart';
import 'package:medocom/interfaces/lista_hospitales/San_Vicente.dart';
import 'package:medocom/interfaces/lista_hospitales/Zona6.dart';
import 'package:medocom/interfaces/screens_laterales/home.dart';

import 'package:medocom/router/rutas.dart';

class Lista_ejemplo extends StatelessWidget {
  const Lista_ejemplo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('menu principal'),
          ),
          body: ListView.separated(
            itemCount: AppRutas.getAppRoute().length,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(AppRutas.options[index].name),
                trailing: Icon(AppRutas.options[index].icon),
                iconColor: Colors.indigo,
                onTap: () {
                  Navigator.push(context, de_mientras(index));
                },
              );
            },
          )),
    );
  }
}

de_mientras(int index) {
  if (index == 0) {
    final route = MaterialPageRoute(builder: (context) => const Maria_Isabel());
    return route;
  } else if (index == 1) {
    final route2 = MaterialPageRoute(builder: (context) => const Martin_Munguia());
    return route2;
  } else if (index == 2) {
    final route3 = MaterialPageRoute(builder: (context) => const Materno());
    return route3;
  }
   else if (index == 3) {
    final route4 = MaterialPageRoute(builder: (context) => const San_Vicente());
    return route4;
  }
   else if (index == 4) {
    final route5 = MaterialPageRoute(builder: (context) => const Zona6());
    return route5;
  }
}
