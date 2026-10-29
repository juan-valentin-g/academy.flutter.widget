import 'package:flutter/material.dart';
import 'package:flutter_app_widgets/model/menu-item.dart';
import 'package:flutter_app_widgets/screens/screens.dart';

class Routes {
  final menu = <MenuOption>[
    MenuOption(
      'Buttons',
      '/buttons',
      ButtonsScreen(),
      Icons.radio_button_checked,
    ),
    MenuOption('Cards', '/cards', Cards(), Icons.card_giftcard),
    MenuOption(
      'Columns and Rows',
      '/columns',
      ColumnsRowsScreen(),
      Icons.view_column_sharp,
    ),
    MenuOption('Dialongs', '/dialogs', Dialogs(), Icons.dialpad),
    MenuOption('Forms', '/forms', Forms(), Icons.fork_left),
    MenuOption('Grids', '/grids', Grids(), Icons.grid_3x3_sharp),
  ];
}
