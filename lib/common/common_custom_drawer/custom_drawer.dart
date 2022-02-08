import 'package:flutter/material.dart';

import 'package:flutter/Material.dart';
import 'package:loja_virtual/common/common_custom_drawer/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  @override 
  Widget build(BuildContext) {
    return Drawer(
      child: ListView (
        children: <Widget>[
          DrawerTile(iconData: Icons.close_sharp, title: '' ),
          DrawerTile(iconData: Icons.home, title: 'Inicio'),
          DrawerTile(iconData: Icons.list, title: 'Produtos'),
          DrawerTile(iconData: Icons.playlist_add_check, title: 'Meus Pedidos'),
          DrawerTile(iconData: Icons.location_on, title: 'Lojas'),
        ],
        ),
    );
  }
}