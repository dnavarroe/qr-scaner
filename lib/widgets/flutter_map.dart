

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatelessWidget {
  final String apiKey;

  const MapScreen({super.key, required this.apiKey});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(40.7128, -74.0060), // Nueva York, EE. UU.
        zoom: 13.0,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://api.mymappi.com/v1/maps/raster/{z}/{x}/{y}.png?access_token=$apiKey',
          additionalOptions: {
            'accessToken': apiKey,
            'id': 'mymappi.streets', // nombre de la capa de mapa
          },
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(40.7128, -74.0060),
              builder: (context) => const Icon(Icons.location_pin),
            ),
          ],
        ),
      ],
    );
  }
}

