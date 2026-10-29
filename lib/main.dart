import 'package:flutter/material.dart';
import 'package:flutter_app_widgets/core/theme/app_theme.dart';
import 'package:flutter_app_widgets/screens/Dialogs.dart';
import 'package:flutter_app_widgets/screens/Forms.dart';
import 'package:flutter_app_widgets/screens/Grids.dart';
import 'package:flutter_app_widgets/screens/buttons_screen.dart';
import 'package:flutter_app_widgets/screens/cards.dart';
import 'package:flutter_app_widgets/screens/columns_rows.dart';
import 'package:flutter_app_widgets/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/buttons': (context) => ButtonsScreen(),
        '/columns': (context) => ColumnsRowsScreen(),
        '/cards': (context) => Cards(),
        '/dialogs': (context) => Dialogs(),
        '/forms': (context) => Forms(),
        '/grids': (context) => Grids(),
      },
    );
  }
}
