import 'package:flutter/material.dart';
import 'package:qr_scanner/widgets/widgets.dart';


class MapasScreen extends StatelessWidget {
   
  const MapasScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const ScanList(tipo: 'http');
    
  }
}