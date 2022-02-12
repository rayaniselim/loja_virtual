import 'package:flutter/material.dart';
import 'package:loja_virtual/models/page_maneger.dart';
import 'package:provider/provider.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({this.iconData, this.title, this.page});

  final IconData iconData;
  final String title;
  final int page;

  @override
  Widget build(BuildContext context) {
    // declaracao de variaveis
    final int curPage = context.watch<PageManager>().page;
    final Color primaryColor = Theme.of(context).primaryColor;
    // retorno de inkwel q significa uma area clicavel
    return InkWell(
      onTap: () {
        context.read<PageManager>().setPage(page);
/*       debugPrint ('toquei $page');
 */
      },
      // TEMA
      child: SizedBox(
        height: 60,
        child: Row(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Icon(
                  iconData,
                  size: 32,
                  color: curPage == page ? primaryColor : Colors.grey[700],
                )),
            const SizedBox(
              width: 30,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            )
          ],
        ),
      ),
    );
  }
}
