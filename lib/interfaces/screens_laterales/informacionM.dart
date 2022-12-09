import 'package:flutter/material.dart';
import 'package:medocom/interfaces/widgets/menu_lateral_elements.dart';
import 'package:medocom/services/informacionM_services.dart';
import 'package:medocom/tarjetas/tarjeta.dart';
import 'package:medocom/tarjetas/tarjeta_image.dart';
import 'package:provider/provider.dart';

class Informacion extends StatelessWidget {
  const Informacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final informacion_services = Provider.of<informacionM_services>(context);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('informacion medica'),
          ),
          drawer: const menu_lateral_elements(),
          body: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children:  [
                  Tarjeta(
                    informacionM: informacion_services.informacion_list[index],
                    ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              );
            },
            itemCount: informacion_services.informacion_list.length,
          )),
    );
  }
}
