import 'package:flutter/material.dart';
import 'package:medocom/interfaces/widgets/calendario.dart';
import 'package:medocom/models/TinformacionM.dart';

class Tarjeta extends StatelessWidget {
  final InformacionM informacionM;

  const Tarjeta({Key? key, required this.informacionM}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 10,
      child: Column(children: [
         ListTile(
          leading: const Icon(Icons.medication_liquid),
          iconColor: Colors.red,
          title: Text(informacionM.nombre),
          subtitle:  Text(
          'activo: '+informacionM.activo+
          ' uso: '+informacionM.uso+
          ' inicio: '+informacionM.inicio+
          ' fin: '+informacionM.fin+
          ' hora de toma: '+informacionM.tiempo.toString()+
          ''
           ),
              
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            children: [
              TextButton(
                onPressed: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const Calendario());
                  Navigator.push(context, route);
                },
                child: const Text('ir al calenadario'),
                style: TextButton.styleFrom(primary: Colors.greenAccent),
              ),
              const SizedBox(
                width: 100,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('ir al recetario'),
              )
            ],
          ),
        )
      ]),
    );
  }
}
