import 'package:flutter/material.dart';
import 'package:flutter_app_widgets/widgets/custom_app_bar.dart';

class Dialogs extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    void mostrarDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Padding(
              padding: EdgeInsetsGeometry.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.person_pin, size: 100),
                  Text('Tu Nombre Completo Iniciando Por Apellidos.'),
                  Text('Carrera: Tecnologias de la Informacion.'),
                  Text('Cuatrimestre: 10mo'),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Chip(label: Text('Angular')),
                      Chip(label: Text('Nest.js')),
                      Chip(label: Text('Flutter')),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    void mostrarAlerta(context) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Eliminar Alumno.'),
            content: Text('Estas Seguro de Eliminar a Este Alumno?'),
            actions: [
              TextButton(onPressed: () => {}, child: Text('Cancelar')),
              TextButton(
                onPressed: () => {Navigator.pop(context)},
                child: Text('Eliminar'),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: CustomAppBar(title: 'Dialogs'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () => {mostrarDialog(context)},
              label: Text('Informacion Personalizada.'),
              icon: Icon(Icons.school),
            ),
            SizedBox(height: 15),
            ElevatedButton.icon(
              onPressed: () => {mostrarAlerta(context)},
              label: Text('Eliminar Alumno.'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
