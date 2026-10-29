import 'package:flutter/material.dart';
import 'package:flutter_app_widgets/app_routes.dart';
import 'package:flutter_app_widgets/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final menu = Routes().menu;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: CustomAppBar(title: 'Menu Widges'),

      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(menu[index].title),
            onTap: () => Navigator.pushNamed(context, menu[index].route),
            trailing: Icon(Icons.double_arrow_rounded),
            leading: Icon(menu[index].icon),
          );
        },
      ),
    );
  }
}
