import 'package:flutter/material.dart';
import 'package:teste/tracking.dart';

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