import 'package:flutter/material.dart';
import 'package:flutter_app_widgets/widgets/custom_app_bar.dart';

class ButtonsScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Botones Decorados"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(onPressed: () {}, child: Text("Text Button")),
            SizedBox(height: 10),
            FilledButton(onPressed: () {}, child: Text("Boton Relleno")),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                "Outline Button",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            FilledButton.icon(
              onPressed: () {},
              icon: Icon(Icons.abc_outlined),
              label: Text("Botonaso"),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              label: Text('Outline Icon'),
              icon: Icon(Icons.tungsten),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 7, 2, 53),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text("Boton"),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.black,
                    Color.fromARGB(255, 45, 130, 240),
                    Color.fromARGB(255, 44, 9, 172),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                onPressed: () {
                  print("Botón degradado");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "Botón degradado",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 40,
                ),
              ),
              child: const Text("Btn Btn"),
            ),
          ],
        ),
      ),
    );
  }
}
