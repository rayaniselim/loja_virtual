import 'package:flutter/material.dart';
import 'package:loja_virtual/common/common_custom_drawer/custom_drawer.dart';

class BaseScreen extends StatelessWidget {
 
 final PageController pageController = PageController();

  @override
Widget build (BuildContext context) {
  return PageView(
    controller: pageController,
    physics: const NeverScrollableScrollPhysics(),
    // ele tira o arrastar pro lado, ai so funciona no botão
    children: <Widget>[
      Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: const Text('Home'),
        ),
      ),
      Container(
        color: Colors.red,
       /*  child: ElevatedButton(onPressed: (){pageController.jumpToPage(1); },
        child: Text('Proximo'), ), */
      ),
      Container(color: Colors.green,),
      Container(color: Colors.yellow,),
    ]
  );
}
}