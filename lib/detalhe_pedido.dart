import 'package:flutter/material.dart';


class DetalhePedidoView extends StatelessWidget {

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
        title: Text('Detalhe do pedido nº 7847631', style: const TextStyle(fontSize: 18)),
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            _getItemList('732482', 'APT PITAGORAS EM 2o SÉRIE POR CADERNO 08 PR', '1', 'R\$ 10,00','10%', 'R\$ 9,10', context),
            _getItemList('732482', 'APT PITAGORAS EM 2o SÉRIE POR CADERNO 08 PR', '1', 'R\$ 10,00','10%', 'R\$ 9,10', context),
            _getItemList('732482', 'APT PITAGORAS EM 2o SÉRIE POR CADERNO 08 PR', '1', 'R\$ 10,00','10%', 'R\$ 9,10', context),
            _getItemList('732482', 'APT PITAGORAS EM 2o SÉRIE POR CADERNO 08 PR', '1', 'R\$ 10,00','10%', 'R\$ 9,10', context),
            _getItemList('732482', 'APT PITAGORAS EM 2o SÉRIE POR CADERNO 08 PR', '1', 'R\$ 10,00','10%', 'R\$ 9,10', context),
            _getItemList('732482', 'APT PITAGORAS EM 2o SÉRIE POR CADERNO 08 PR', '1', 'R\$ 10,00','10%', 'R\$ 9,10', context),
          ],),
        )
      )
    );
  }

}

_getItemList(codigo, produto, quantidade, valorUnitario, desconto, valorTotal, context) {
  
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
                        child: Text('Código: ',
                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                        ),
                      ),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('$codigo',
                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 10,),

                  Column(
                    
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Descrição: ',
                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                        ),
                      ),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('$produto',
                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Align(
                            alignment: Alignment.centerRight,
                            child: 
                              Column(

                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Quantidade: ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('$quantidade',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),
                                  ),
                                ],
                              ),
                      ),

                      SizedBox(height: 10,),

                      Align(
                            alignment: Alignment.centerLeft,
                            child: 
                              Column(
                                
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Valor unitário: ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('$valorUnitario',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),
                                  ),
                                ],
                              ),
                      ),

                      SizedBox(height: 10,),

                      Align(
                            alignment: Alignment.centerLeft,
                            child: 
                              Column(
                                
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Desconto: ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('$desconto',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),
                                  ),
                                ],
                              ),
                      ),

                      SizedBox(height: 10,),

                      Align(
                            alignment: Alignment.centerLeft,
                            child: 
                              Column(
                                
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Valor total: ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('$valorTotal',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),
                                  ),
                                ],
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
