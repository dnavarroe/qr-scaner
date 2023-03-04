import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/ui_provider.dart';


class CustomNavigator extends StatelessWidget {
  const CustomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;

    return CurvedNavigationBar(
      color: Colors.purple,
      onTap: (int i) => uiProvider.selectedMenuOpt=i,
      //selectedItemColor: Colors.amber,
      backgroundColor: Colors.white,
      index: currentIndex,
      animationDuration: const Duration(milliseconds: 300),
      animationCurve: Curves.ease,
      height: 55,
      //elevation: 0,
      items:  const [
          Icon(Icons.map, color: Colors.white),
          //label: 'Mapa'
          Icon(Icons.compass_calibration, color: Colors.white),
          //label: 'Direcciones'

      ]
    );
  }
}