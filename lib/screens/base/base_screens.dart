import 'package:flutter/material.dart';
import 'package:loja_virtual/common/common_custom_drawer/custom_drawer.dart';
import 'package:loja_virtual/models/page_maneger.dart';
import 'package:loja_virtual/screens/login/login_screen.dart';
import 'package:provider/provider.dart';

class BaseScreen extends StatelessWidget {
 
 final pageController = PageController(initialPage: 0);

  @override
Widget build (BuildContext context) {
  return Provider(
    create: (_) => PageManager(pageController), 
    child: PageView(
    controller: pageController,
    physics: const NeverScrollableScrollPhysics(),
    // ele tira o arrastar pro lado, ai so funciona no botão
    children: <Widget>[
     LoginScreen(),
      Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: const Text('Home2'),
        ),
      ),
      Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: const Text('Home3'),
        ),
      ),
      Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: const Text('Home4'),
        ),
      ),
            // FOI TIRADO AS CORES ABAIXO.
             /*   Container(color: Colors.red,
            /*  child: ElevatedButton(onPressed: (){pageController.jumpToPage(1); },
            child: Text('Proximo'), ), */ 
                  ),
             Container(color: Colors.green,),
             Container(color: Colors.yellow,), */
    ]
  )
  );
}
}