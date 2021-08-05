import 'package:flutter/material.dart';


class NotificacoesView extends StatelessWidget {

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
        title: Text('Mensagens', style: const TextStyle(fontSize: 18)),
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            _getItemList('Seu pedido está chegando', 'Pedido emcaminhado para \ntransportadora', '11/11/2021 10:00', context),
            _getItemList('Seu pedido está chegando', 'Pedido emcaminhado para \ntransportadora', '11/11/2021 10:00', context),
          
          ],),
        )
      )
    );
  }

}

_getItemList(mensagem1, mensagem2, data, context) {
  
  return Card(
    
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
        side: new BorderSide(color: Colors.black, width: 0.5)
      ),
      child:
      
      Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: new BorderRadius.circular(2.0),
          color: Colors.white,
        ),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            
            children: [
              
                  Column(
                    
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('$mensagem1: ',
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)
                        ),
                      ),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('$mensagem2',
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black)
                        ),
                      ),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('$data',
                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                        ),
                      ),
                    ],
                  ),
            ]
          ),
        ),
      )
    );
}
