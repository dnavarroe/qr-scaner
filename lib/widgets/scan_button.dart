import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'package:qr_scanner/providers/scan_list_provider.dart';
import 'package:qr_scanner/utils/utils.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({super.key});

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    return FloatingActionButton(
      elevation: 0,
      child: const Icon(Icons.filter_center_focus),
      onPressed: () async {

        String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode( "#ff6666", "Cancel", false, ScanMode.DEFAULT);

        
        //scanListProvider.nuevoScan(barcodeScanRes);

        //final barcodeScanRes = 'geo:45.280089,-75.922405';

        if (barcodeScanRes == '-1'){
          return;
        }

        final nuevoScan = await scanListProvider.nuevoScan(barcodeScanRes);

        launchUrl(context, nuevoScan);

      }
    );
  }
}