import 'package:get/get.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/material.dart';

class PesquisaController extends GetxController {

  var valorCodigoBarras = '';

  Future<void> escanearCodigoBarras(context) async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
    '#ff6666' , 'Cancelar', true, ScanMode.BARCODE);

    if(barcodeScanRes == '-1'){
      ScaffoldMessenger.of(context).showSnackBar(
         const SnackBar(content: Text('leitura cancelada')),
      );

    } else {
      valorCodigoBarras = barcodeScanRes;
      ScaffoldMessenger.of(context).showSnackBar(
         SnackBar(content: Text(valorCodigoBarras)),
      );
      update();
    }
  }

}