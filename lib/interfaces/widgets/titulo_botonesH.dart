import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Titulo extends StatelessWidget {
  final NetworkImage imagen;
  final String nombre_hospital;
  final String informacion_hospital;
  const Titulo({
    Key? key,
    required this.imagen,
    required this.nombre_hospital,
    required this.informacion_hospital,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeInImage(
          placeholder: const AssetImage('assets/loading.gif'),
          image: imagen,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 230,
          fadeInDuration: const Duration(milliseconds: 200)
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nombre_hospital,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(informacion_hospital,
                  style: const TextStyle(
                    color: Colors.grey,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}

class Botones extends StatelessWidget {
  final IconData icono;
  final String nombre;
  final String? url;
  final String? tipo;
   
   const Botones({
    Key? key,
    required this.icono,
    required this.nombre,
    this.url,
    this.tipo,
   
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          color: Colors.blue,
          iconSize: 30,
          icon: Icon(icono),
          
          onPressed: () {
            launch('$tipo$url') ;
            
          },
        ),
        Text(
          nombre,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
