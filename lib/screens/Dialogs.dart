import 'package:flutter/material.dart';
import 'package:flutter_app_widgets/widgets/custom_app_bar.dart';

class Dialogs extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    void mostrarDialog(BuildContext context) {
      showDialog<void>(
        context: context,
        builder: (context) {
          return Dialog(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.person_pin, size: 100),
                  Text('Tu Nombre Completo Iniciando Por Apellidos.'),
                  Text('Carrera: Tecnologias de la Informacion.'),
                  Text('Cuatrimestre: 10mo'),
                  SizedBox(height: 10),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 8,
                    children: [
                      Chip(label: Text('Angular')),
                      Chip(label: Text('Nest.js')),
                      Chip(label: Text('Flutter')),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cerrar'),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    void mostrarAlerta(BuildContext context) {
      showDialog<void>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Eliminar alumno'),
            content: const Text('¿Estás seguro de eliminar a este alumno?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Eliminar'),
              ),
            ],
          );
        },
      );
    }

    void mostrarMateria(BuildContext context) {
      showDialog<void>(
        context: context,
        builder: (context) {
          return Dialog(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.menu_book, size: 100),
                  const Text(
                    'Materia: Desarrollo Móvil Integral',
                    textAlign: TextAlign.center,
                  ),
                  const Text('Cuatrimestre: 10mo'),
                  const Text('Tema: Diálogos y alertas'),
                  const SizedBox(height: 10),
                  const Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 8,
                    children: [
                      Chip(label: Text('Flutter')),
                      Chip(label: Text('Dart')),
                      Chip(label: Text('Widgets')),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cerrar'),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    void mostrarInscripcion(BuildContext context) {
      showDialog<void>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Inscribir alumno'),
            content: const Text(
              '¿Deseas inscribir a este alumno en Desarrollo Móvil Integral?',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Inscribir'),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: const CustomAppBar(title: 'Dialogs'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () => mostrarDialog(context),
              label: Text('Información personalizada'),
              icon: Icon(Icons.school),
            ),
            SizedBox(height: 15),
            ElevatedButton.icon(
              onPressed: () => mostrarAlerta(context),
              label: Text('Eliminar alumno'),
              icon: Icon(Icons.delete),
            ),
            const SizedBox(height: 15),
            ElevatedButton.icon(
              onPressed: () => mostrarMateria(context),
              label: const Text('Información de la materia'),
              icon: const Icon(Icons.menu_book),
            ),
            const SizedBox(height: 15),
            ElevatedButton.icon(
              onPressed: () => mostrarInscripcion(context),
              label: const Text('Inscribir alumno'),
              icon: const Icon(Icons.person_add),
            ),
          ],
        ),
      ),
    );
  }
}
