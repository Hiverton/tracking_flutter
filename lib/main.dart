import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:randomizer/randomizer.dart';

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
      home: ListaPedidoView2() 
    );
  }
}

//tracking

_getRowStatus(status, icone, cor){
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Row(
            children: [
              Icon(icone, color: cor,),
              SizedBox(width: 10,),
              Text(status,
                textScaleFactor: 1.2,
                style: const TextStyle(fontSize: 14, color: Colors.black)
              ),

            ],
          ),
  );
}

_getTitleCard(title) {
  return Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              children: [
                Text(title, 
                style: const TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold,
                  fontFamily: 'sans-serif'
                )),
              ],
            ),
          );
}

_getCards(){
  return Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.0),
            side: new BorderSide(color: Colors.grey, width: 1.0)
          ),
          child: Container (
            width: double.infinity,
            child: 
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 15, bottom: 15),
                child: Column(
                  children: [

                    _getRowStatus('11/11/2021 - Pedido recebido', Icons.check_circle_outline, Colors.green),
                    _getRowStatus('11/11/2021 - Aguardando separação', Icons.check_circle_outline, Colors.green),
                    _getRowStatus('11/11/2021 - Aguardando emissão NF', Icons.check_circle_outline, Colors.green),
                    _getRowStatus('11/11/2021 - Transportadora', Icons.local_shipping, Colors.grey),

                  ],
                ),
              )
            ),
          );
}


_getCardDadosCliente(){

  return Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.0),
            side: new BorderSide(color: Colors.grey, width: 1.0)
          ),
          child: Container (
            width: double.infinity,
            child: 
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 15, bottom: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    

                                    SizedBox(height: 10,),

                                    Text('Cliente: ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),

                                    Text('EDUCACIONAL UN SOCIEDADES SS LTDA - ME ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),

                                    SizedBox(height: 10,),

                                    Text('CNPJ: ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),

                                    Text('02.005.454/0001-80 ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),

                                    SizedBox(height: 10,),
                                    Text('Data: ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),

                                    Text('11/11/2021 ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),
                                    
                                    SizedBox(height: 10,),
                                    Text('Valor: ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),

                                    Text('R\$ 10.293,00 ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),

                                    SizedBox(height: 10,),
                                    Text('Tipo de pedido: ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),

                                    Text('Venda ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),

                                    SizedBox(height: 10,),
                                    Text('Frete: ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),

                                    Text('R\$ 59,10 ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),

                                    SizedBox(height: 10,),
                                    Text('Tipo frete: ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),

                                    Text('Por conta do emitente - CIF ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),

                                    SizedBox(height: 10,),
                                    Text('Condição de pagamento: ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),

                                    Text('30/60 DFS ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),

                                    SizedBox(height: 10,),
                                    Text('Endereço de entrega: ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),

                                    Text('R PRES ANTONIO CARLOS 799, CENTRO, \nVARGINHA - MG ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                

                              ],
                            ),
                    ),
                  ],
                ),
              )
            ),
          );
}

_getCardCentralRelacionamento(){

  return Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.0),
            side: new BorderSide(color: Colors.grey, width: 1.0)
          ),
          child: Container (
            width: double.infinity,
            child: 
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 5, bottom: 5),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    SizedBox(height: 10,),

                                    Text('Editoras (K12): ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),

                                    Text('(11) 4003-3061',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),

                                    SizedBox(height: 10,),

                                    Text('Ensino Técnico e Superior (SETS): ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),

                                    Text('(11) 3616-3666',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),

                                    SizedBox(height: 10,),

                                    Text('Sistema de Ensino: ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),

                                    Text('0800-772-0028',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),

                                  ],
                                ),
                                SizedBox(width: 10,),

                              ],
                            ),
                    ),
                  ],
                ),
              )
            ),
          );
}

class TrackingView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Pedido nº 7847631', style: const TextStyle(fontSize: 18)),
        backgroundColor: Colors.pink.shade300.withOpacity(0.85),
        elevation: 0,
      ),
      backgroundColor: Colors.pink.shade300.withOpacity(0.85),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 1.6,
              width: MediaQuery.of(context).size.width,
              child: 
                Image.asset(
                  getImageFundo(),
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                ),
            ),
            
            Container(
              color: Colors.pink.shade300.withOpacity(0.85),
              height: MediaQuery.of(context).size.height * 1.6,
              width: MediaQuery.of(context).size.width,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Image.asset('assets/accept.png'),
                  SizedBox(height: 10,),
                  Center(child: Text('Seu pedido foi entregue', 
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                  SizedBox(height: 20,),

                  _getTitleCard('Acompanhamento do pedido'),
                  _getCards(),

                  SizedBox(height: 20,),
                  _getTitleCard('Resumo do pedido'),
                  _getCardDadosCliente(),

                  SizedBox(height: 20,),
                  _getTitleCard('Central de relacionamento'),
                  _getCardCentralRelacionamento(),
                  _rowButtons()

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




//lista

getTextStatus(status, param){
  if(param == 1){
    return Text('$status', 
                    style: const TextStyle(fontSize: 18, 
                    color: Colors.green,
                    fontWeight: FontWeight.normal));
  } else {
    return Text('$status', 
                    style: const TextStyle(fontSize: 18, 
                    color: Colors.red,
                    fontWeight: FontWeight.normal));
  }
}

_getItemList(pedido, data, status, icone, cor, param, context) {
  

  return Card(
            elevation: 0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.0),
              side: new BorderSide(color: Colors.black, width: 0.5)
            ),
            child: ListTile(
              trailing: Icon(Icons.arrow_right, color: Colors.grey),
              title: Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Pedido: $pedido', style: const TextStyle(fontSize: 18, color: Colors.black)),
                    Text('Data: $data', style: const TextStyle(fontSize: 18, color: Colors.black)),
                  ],
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(icone, color: cor),
                  SizedBox(width: 10, height: 20,),
                  getTextStatus(status, param)
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TrackingView()));
              },
            ),
          );
}

class ListaPedidoView2 extends StatefulWidget {
  @override
  _ListaPedidoView2State createState() => _ListaPedidoView2State();
}

class _ListaPedidoView2State extends State<ListaPedidoView2> {
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    
      appBar: AppBar(
        title: !isSearching 
          
          ? Text('Lista de pedidos', style: const TextStyle(fontSize: 18)) 
          : TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white,)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white,)
                ),
                focusColor: Colors.white,
                icon: Icon(Icons.search, color: Colors.white,),
                hintText: 'Digite um pedido',
                hintStyle: const TextStyle(color: Colors.white)
              )
            ),

        backgroundColor: Colors.pink.shade300.withOpacity(0.85),
        elevation: 0,
        actions: 
          <Widget>[
            this.isSearching
            ? IconButton(icon: Icon(Icons.cancel),
              onPressed: () {
                setState((){
                  this.isSearching = !this.isSearching;
                });
              })
            : IconButton(icon: Icon(Icons.search),
              onPressed: () {
                setState((){
                  this.isSearching = !this.isSearching;
                });
              })
        ],
      ),

      backgroundColor: Colors.pink.shade300.withOpacity(0.85),

      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(getImageFundo(),
              fit:BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.pink.shade300.withOpacity(0.85),
          ),

          Padding(
            padding: EdgeInsets.all(8),
            child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: [
                      _getItemList('7989080', '11/11/2021', 'Pedido entregue', Icons.check_circle_outline, Colors.green, 1, context),
                      _getItemList('7989080', '11/11/2021', 'Nota fiscal não autorizada', Icons.error, Colors.red, 2, context),
                      _getItemList('7989080', '11/11/2021', 'Pedido entregue', Icons.check_circle_outline, Colors.green, 1, context),
                      _getItemList('7989080', '11/11/2021', 'Pedido entregue', Icons.check_circle_outline, Colors.green, 1, context),
                      _getItemList('7989080', '11/11/2021', 'Pedido entregue', Icons.check_circle_outline, Colors.green, 1, context),
                      _getItemList('7989080', '11/11/2021', 'Cliente recusou', Icons.error, Colors.red, 2, context),
                      _getItemList('7989080', '11/11/2021', 'Pagamento não autorizado', Icons.error, Colors.red, 2, context),
                      _getItemList('7989080', '11/11/2021', 'Nota fiscal emitida', Icons.check_circle_outline, Colors.green, 1, context),
                      
                    ],
                  ),
          ),
        ]
      ),
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

_rowButtons(){
  return Row (
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.purple,
                onPressed: (){},
                child: Text('Detalhe do pedido', textAlign: TextAlign.center),
                textColor: Colors.white,
              ),
              SizedBox(width: 10,),

              RaisedButton(
                color: Colors.purple,
                onPressed: (){},
                child: Text('Informar problema no pedido', textAlign: TextAlign.center),
                textColor: Colors.white,
              )
              
            ],
          
        );
}
