import 'package:flutter/material.dart';

class CardVideogame extends StatelessWidget {
  final String title;
  final String image;
  CardVideogame({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      elevation: 4,
      child: Column(
        children: [
          ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.network(image, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                IconButton.filled(
                  style: IconButton.styleFrom(minimumSize: Size(10, 10)),
                  onPressed: () => {},
                  icon: Icon(Icons.favorite, size: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
