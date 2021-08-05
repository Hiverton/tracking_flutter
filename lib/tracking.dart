import 'package:flutter/material.dart';
import 'package:teste/detalhe_pedido.dart';
import 'package:teste/form.dart';

class TrackingView extends StatelessWidget {

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
        title: Text('Pedido nº 7847631', style: const TextStyle(fontSize: 18)),
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            /*SizedBox(
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
            ),*/
            
            /*Container(
              height: MediaQuery.of(context).size.height * 1.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.pink.shade50,
                    Colors.purple.shade50,
                  ],
                )
              ),
            ),*/


            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column (
              
                children: [

                  Container(
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
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Image.asset('assets/accept.png'),
                        SizedBox(height: 10,),
                        Center(child: Text('Seu pedido foi entregue', 
                          style: const TextStyle(
                            fontSize: 18, 
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ))),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),

                  _getTitleCard('Acompanhamento do pedido'),
                  _getCards(),

                  SizedBox(height: 20,),
                   _getTitleCard('Dados da nota fiscal'),
                   _dadosNotaFiscal(),

                  SizedBox(height: 20,),
                  _getTitleCard('Resumo do pedido'),
                  _getCardDadosCliente(),

                  SizedBox(height: 20,),
                  _getTitleCard('Central de relacionamento'),
                  _getCardCentralRelacionamento(),
                  _rowButtons(context)

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


_rowButtons(context){
  return Row (
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
            color: Colors.purple,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetalhePedidoView()));
            },
            child: Text('Detalhe do pedido', textAlign: TextAlign.center),
            textColor: Colors.white,
          ),
          SizedBox(width: 10,),

          RaisedButton(
            color: Colors.purple,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => FormReclamacao()));
            },
            child: Text('Informar problema no pedido', textAlign: TextAlign.center),
            textColor: Colors.white,
          )
          
        ],
      
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
                  fontFamily: 'sans-serif',
                  color: Colors.pinkAccent
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

_dadosNotaFiscal(){
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

                                    Text('NFE: ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),

                                    Text('358794-1',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),

                                    SizedBox(height: 10,),

                                    Text('Chave NFE: ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),

                                    Text('35210649323314000971550020001868091314918859',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),
                                    
                                    SizedBox(height: 10,),

                                    Text('Data: ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)
                                    ),

                                    Text('11/11/2021',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),

                                    SizedBox(height: 10,),

                                    Row(
                                      children: [
                                        RaisedButton(
                                          color: Colors.purple,
                                          onPressed: (){
                                            
                                          },
                                          child: Text('Baixar NF eletrônica', textAlign: TextAlign.center),
                                          textColor: Colors.white,
                                        ),

                                        SizedBox(width: 20,),
                                        
                                        RaisedButton(
                                          color: Colors.purple,
                                          onPressed: (){
                                            
                                          },
                                          child: Text('Comprovante de entrega', textAlign: TextAlign.center),
                                          textColor: Colors.white,
                                        ),
                                      ],
                                    )

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

                                    Text('R\$ 10.296,00 ',
                                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black)
                                    ),

                                    SizedBox(height: 10,),
                                    Text('Tipo do pedido: ',
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
