import 'package:flutter/material.dart';
import 'package:flutter_app_widgets/widgets/card-movie.dart';
import 'package:flutter_app_widgets/widgets/custom_app_bar.dart';

class Grids extends StatelessWidget {
  Grids({super.key});
  final List<Map<String, String>> peliculas = [
    {
      "name": "It",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStzUlEhnikQk_zieuAn332dqfNaYHy1mUYHLyJOzQDkjRnRR-q9BOxFikP&s=10",
    },
    {
      "name": "Halo",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStzUlEhnikQk_zieuAn332dqfNaYHy1mUYHLyJOzQDkjRnRR-q9BOxFikP&s=10",
    },
    {
      "name": "Resident Evil",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStzUlEhnikQk_zieuAn332dqfNaYHy1mUYHLyJOzQDkjRnRR-q9BOxFikP&s=10",
    },
    {
      "name": "Saw",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStzUlEhnikQk_zieuAn332dqfNaYHy1mUYHLyJOzQDkjRnRR-q9BOxFikP&s=10",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Grids'),
      body: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 8,
            childAspectRatio: .6,
          ),
          itemCount: peliculas.length,
          itemBuilder: (context, index) {
            return CardVideogame(
              title: peliculas[index]["name"]!,
              image: peliculas[index]["image"]!,
            );
          },
        ),
      ),
    );
  }
}
