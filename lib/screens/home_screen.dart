import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scanner/providers/providers.dart';
import 'package:qr_scanner/screens/screens.dart';
import 'package:qr_scanner/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Center(child:Text('Historial')),
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ScanListProvider>(context, listen: false)
              .borrarTodos();
            }, 
            icon: const Icon(Icons.delete),
          )
        ],
      ),
      body: const _HomeScreenBody(),
      bottomNavigationBar: const CustomNavigator(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}

class _HomeScreenBody extends StatelessWidget {
  const _HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    //Usar el scan list provider
    final scanListProvider = Provider.of<ScanListProvider>(context, listen: false);

    //TODO: temporal leer la base de datos
    //final tempScan =  ScanModel(valor: 'http://google.com');
    //DBProvider.db.deleteAll().then(print);

    switch(currentIndex){
      case 0:
        scanListProvider.cargarScansPorTipo('geo');
        return const MapasScreen();
      case 1:
        scanListProvider.cargarScansPorTipo('http');
        return const DireccionesScreen();
      
      default:
        return const MapasScreen();

    }
  }
}