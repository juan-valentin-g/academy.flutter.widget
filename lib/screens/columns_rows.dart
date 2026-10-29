import 'package:flutter/material.dart';
import 'package:flutter_app_widgets/widgets/custom_app_bar.dart';

class ColumnsRowsScreen extends StatelessWidget {
  const ColumnsRowsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Tamaño proporcional de los iconos según la pantalla.
    final double iconSize = (MediaQuery.sizeOf(context).shortestSide * 0.12)
        .clamp(28.0, 56.0);

    return Scaffold(
      appBar: const CustomAppBar(title: "Columns and Rows"),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.battery_unknown, size: iconSize),
                      const Text('Batería'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.airport_shuttle_outlined, size: iconSize),
                      const Text('Transporte'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.castle, size: iconSize),
                      const Text('Castillo'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.delete, size: iconSize),
                      const Text('Eliminar'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.scanner, size: iconSize),
                      const Text('Escáner'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.workspace_premium, size: iconSize),
                      const Text('Premium'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.assignment_ind_rounded, size: iconSize),
                      const Text('Perfil'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.radio_button_on, size: iconSize),
                      const Text('Radio'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.volume_off, size: iconSize),
                      const Text('Silencio'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
