import 'package:flutter/material.dart';
import 'package:flutter_app_widgets/widgets/custom_app_bar.dart';

class Grids extends StatelessWidget {
  Grids({super.key});
  final List<Map<String, String>> peliculas = [
    {
      "name": "It",
      "image": "https://www.google.com/url?sa=t&source=web&rct=j&url=https%3A%2F%2Fwww.filmaffinity.com%2Fes%2Ffilm312346.html&ved=0CBcQjRxqFwoTCKCXt4mP_pcDFQAAAAAdAAAAABA3&opi=89978449",
    },
    {
      "name": "Halo",
      "image": "https://static.wikia.nocookie.net/halo/images/6/6f/Halo_4_Forward_Unto_Dawn.jpg/revision/latest/scale-to-width-down/1200?cb=20150727175751&path-prefix=es",
    },
    {
      "name": "Resident Evil",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStzUlEhnikQk_zieuAn332dqfNaYHy1mUYHLyJOzQDkjRnRR-q9BOxFikP&s=10",
    },
    {
      "name": "Saw",
      "image": "https://m.media-amazon.com/images/I/71ZmwhDbzUL._AC_UF894,1000_QL80_.jpg",
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
            childAspectRatio: .8,
          ),
          itemCount: peliculas.length,
          itemBuilder: (context, index) {
            return CardMovie(
              img: peliculas[index]["image"]!,
              titulo: peliculas[index]["name"]!,
            );
          },
        ),
      ),
    );
  }
}

class CardMovie extends StatelessWidget {
  String img;
  String titulo;
  CardMovie({super.key, required this.img, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Card(child: Column(children: [Image.network(img), Text(titulo)]));
  }
}
