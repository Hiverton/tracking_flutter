import 'package:flutter/material.dart';
import 'package:teste/tracking.dart';
import 'package:teste/notificacoes.dart';

class ListaPedidoView2 extends StatefulWidget {
  @override
  _ListaPedidoView2State createState() => _ListaPedidoView2State();
}

class _ListaPedidoView2State extends State<ListaPedidoView2> {
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        
        child: Container(
          color: Colors.white,
          child: Column(
            
            children: [
              SizedBox(height: 20),
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.pink.shade800,
                      Colors.purple.shade800,
                    ],
                  )
                ),
                accountName: Text('Hiverton Alves'),
                accountEmail: Text('hiverton.alves@gmail.com'),
                currentAccountPicture: ClipRRect(
                  child: Image.asset('assets/mandala.png'),
                  borderRadius: BorderRadius.circular(40),
                ) ,
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.black),
                title: Text('Home', style: TextStyle(color: Colors.black),),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
                trailing: Icon(Icons.arrow_right, color: Colors.black),
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.black),
                trailing: Icon(Icons.arrow_right, color: Colors.black),
                title: Text('Logout', style: TextStyle(color: Colors.black),),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              )
            ],
          ),
        ),
      ),

      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.pink.shade800,
                Colors.purple.shade800,
              ],
            )
          ),
        ),

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

        backgroundColor: Colors.pink,
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
              }),

              IconButton(
                icon: myAppBarIcon(context),
                alignment: Alignment.centerLeft,
                tooltip: 'Back',
                onPressed: () {
              })
              
        ],

      ),

      backgroundColor: Colors.pink,

      body: Stack(
        children: [
          /*SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(getImageFundo(),
              fit:BoxFit.cover,
            ),
          ),*/

          getFundoGradient(),

          //Padding(
          //  padding: EdgeInsets.all(8),
          //  child: 
          ListView(
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
          //),
        ]
      ),
    );
  }

  
}


_getItemList(pedido, data, status, icone, cor, param, context) {
  

  return /*Card(
            elevation: 0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.0),
              side: new BorderSide(color: Colors.black, width: 0.5)
            ),
            child: */
            
            Container(
              
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.circular(2.0),
                
                color: Colors.white,
                /*gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue,
                    Colors.red,
                  ],
                )*/
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(8.0),
                dense: true,
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
          //);
}


getFundoGradient() {
  return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.white,
              Colors.white,
            ],
          )
        ),
      );
}
  

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

Widget myAppBarIcon(context){
return Container(
  width: 30,
  height: 30,
  child: Stack(
    children: [
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => NotificacoesView()));
        },
        child: Icon(Icons.notifications, size: 30, color: Colors.white),
      ),
      
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => NotificacoesView()));
        },
        child: Container(
          
          width: 30,
          height: 50,
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(top: 5, left: 10, right: 0),
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink.shade800,
                border: Border.all(color: Colors.white, width: 1)),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Center(
                child: Text('2',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  ),
);
}