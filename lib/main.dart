import 'package:flutter/material.dart';
import 'screens/base/base_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Loja Virtual Ray',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 4, 125, 141),
       scaffoldBackgroundColor: const Color.fromARGB(255, 4, 125, 141),
       appBarTheme: const AppBarTheme(
         elevation: 0
       ),
       /*  appBarTheme: AppBarTheme(color: Colors.black), */
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
home: BaseScreen(),
    );
  }
}

     /*  home: MyHomePage(title: 'Loja Selim'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      drawer: Drawer(),
      bottomNavigationBar: Container(
        height: 56,
        color: Colors.blue,
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contagem de vezes:',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
 */