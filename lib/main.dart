import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:randomizer/randomizer.dart';
import 'package:teste/lista_pedido.dart';
import 'package:teste/tela_inicial.dart';


void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        brightness: Brightness.dark
      ),
      initialRoute: '/home',
      routes: {
        '/': (context) => InicialView(),
        '/home': (context) => ListaPedidoView2(),
      }
      //home: ListaPedidoView2() 
    );
  }
}

String getImageFundo() {
    Randomizer randomizer = Randomizer();
    
    String  image = randomizer.getrandomelementfromlist(['assets/fundo1.jpg', 'assets/fundo2.jpg', 
    'assets/fundo4.jpg']);
    
    return image;
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String textFromService = '';
  void _incrementCounter() async {
    final ret = await fetch();

    setState(() {
      textFromService = ret['title'].toString();
    });
  }

  Future<Map> fetch() async {
    var url = 'https://jsonplaceholder.typicode.com/todos/3';
    var response = await http.get(url);
    return jsonDecode(response.body);
  }

  
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView (
        child: SizedBox (
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                ]
              ),
            )
          ) 
    );
  }
}

