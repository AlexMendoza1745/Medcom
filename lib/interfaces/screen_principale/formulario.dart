import 'package:flutter/material.dart';
import 'package:medocom/interfaces/widgets/custom_textField.dart';
import 'package:medocom/interfaces/widgets/menu_lateral_elements.dart';

class Formulario extends StatelessWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final Map<String, String> formMap = {
      'nombre': 'valor nulo',
      'ingredientes activo': 'valor nulo',
      'uso': 'valor nulo',
      'inicio': 'valor nulo',
      'fin': 'valor nulo',
      'comentarios': 'valor nulo'
    };
    void displayDialog(BuildContext context) {
      showDialog(
          barrierDismissible: true,
          context: context,
          builder: (context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              title: const Text('Advertencia'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                      'Una vez creada la tarjeta no se podra modificar, desea continuar?')
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('cancelar')),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('aceptar'))
              ],
            );
          });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('formulario de recetas'),
        ),
        drawer: const menu_lateral_elements(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Form(
              key: formKey,
              onChanged: () {},
              child: Center(
                child: Column(children: [
                
                  custom_textField(
                    labeltextP: 'nombre',
                    hintextP: 'escribe el nombre del medicamento',
                    iconP: Icons.medication_liquid,
                    formProperty: 'nombre del medicamento',
                    formValue: formMap,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  custom_textField(
                    labeltextP: 'ingrediente activo',
                    hintextP: 'escriba el ingrediente activo',
                    iconP: Icons.vaccines_outlined,
                    formProperty: 'ingrediente activo',
                    formValue: formMap,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  custom_textField(
                    labeltextP: 'uso',
                    hintextP: 'describa el uso del medicamento',
                    iconP: Icons.question_mark,
                    formProperty: 'uso del medicamento',
                    formValue: formMap,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  custom_textField(
                    labeltextP: 'cantidad por dia',
                    hintextP: 'describa la cantidad de pastillas que tomara en el dia',
                    iconP: Icons.question_mark,
                    formProperty: 'cantidad por dia',
                    formValue: formMap,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  custom_textField(
                    labeltextP: 'tiempo',
                    hintextP: 'describa cada cuantas hora hay que tomar el medicamento',
                    iconP: Icons.question_mark,
                    formProperty: 'uso del medicamento',
                    formValue: formMap,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  custom_textField(
                    labeltextP: 'fecha de inicio',
                    hintextP: '',
                    iconP: Icons.today,
                    formProperty: 'fecha de incio',
                    formValue: formMap,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  custom_textField(
                    labeltextP: 'fecha de finalizacion',
                    hintextP: '',
                    iconP: Icons.event,
                    formProperty: 'fecha de finalizacion',
                    formValue: formMap,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  custom_textField(
                    labeltextP: 'comentarios',
                    hintextP:
                        'deja un comentario opcional sobre este mmedicamento',
                    iconP: Icons.announcement,
                    formProperty: 'seccion de comentarios',
                    formValue: formMap,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                        shape: const StadiumBorder(),
                        elevation: 3,
                      ),
                      onPressed: () {
                        displayDialog(context);
                        print(formMap);
                      },
                      child: const SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Text('guardar'),
                        ),
                      ))
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
