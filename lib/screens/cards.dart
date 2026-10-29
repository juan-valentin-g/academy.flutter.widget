import 'package:flutter/material.dart';
import 'package:flutter_app_widgets/widgets/custom_app_bar.dart';

class Cards extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Cards"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SimpleCard(),
            SimpleCard(),
            ImageCard(),
            ImageCard(),
            ProductCard(),
            LocalImage(),
            FavoriteCard(),
            ProductCard2(),
          ],
        ),
      ),
    );
  }
}

class ProductCard2 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      elevation: 5,
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset('assets/images/Naranja.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Naranja',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$5',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Align(
                alignment: AlignmentGeometry.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButton(
                    onPressed: () => {},
                    child: Text('Comprar'),
                  ),
                ),
              ),
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.remove, color: Colors.black),
              ),
              Text('5'),
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.add, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FavoriteCard extends StatefulWidget {
  const new({super.key});

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.asset('assets/images/ima444ges.jpg'),
              ),
              Align(
                alignment: AlignmentGeometry.centerRight,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () => {
                      setState(() {
                        favorite = !favorite;
                      }),
                    },
                    icon: Icon(
                      favorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Text(
                'Espacio Exterior.',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LocalImage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      elevation: 5,
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset('assets/images/ima444ges.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ESPACIO EXTERIOR',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      elevation: 5,
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            //child: Image.network('src'),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nombre del Producto.',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$20',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentGeometry.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FilledButton(
                onPressed: () => {},
                child: Text('Agregar al Carrito.'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SimpleCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.blueGrey,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'afhalkjhf; an;adsf;naksdf;aisfbk lsl kfj;sadfjlnhclahds f afjadjflajfd aflafdhlad fj',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          //ClipRRect(
          //borderRadius: BorderRadius.circular(10),
          //child: Image.network('')),
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Text(
              'Rey Misterio',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Rey misterio es uno de los influyentes de la lucha libre mexicana mas famosos que existe, su trayectorio profecional es muy conocida.',
            ),
          ),
        ],
      ),
    );
  }
}
