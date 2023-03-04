import 'package:flutter/material.dart';
import 'package:qr_scanner/models/scan_model.dart';

class MapaScreen extends StatelessWidget {
   
  const MapaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final scana = ModalRoute.of(context)!.settings.arguments ;
    final scan = scana as ScanModel;
    

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(child: Text('Mapa')),
      ),
      body: Center(
         child: Text(scan.valor),
      ),
    );
  }
}

//import 'package:flutter/material.dart';
//import 'package:qr_scanner/widgets/flutter_map.dart';
//
//
//class MapaScreen extends StatelessWidget {
//  final String apiKey = '7f5bb843-af24-420a-b9fb-3d7468ac1168';
//
//  const MapaScreen({super.key});
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: const Text('Map'),
//      ),
//      body: MapScreen(apiKey: apiKey),
//    );
//  }
//}
