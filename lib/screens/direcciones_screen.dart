import 'package:flutter/material.dart';
import 'package:qr_scanner/widgets/widgets.dart';


class DireccionesScreen extends StatelessWidget {
   
  const DireccionesScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) { 
    return const ScanList(tipo: 'geo');
  }
}