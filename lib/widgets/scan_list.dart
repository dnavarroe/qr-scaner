

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scanner/providers/providers.dart';
import 'package:qr_scanner/utils/utils.dart';



class ScanList extends StatelessWidget {

  final String tipo;

  const ScanList({super.key, required this.tipo});

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans =  scanListProvider.scans;
    print(scans);

    return ListView.builder(
      itemCount: scans.length,
      itemBuilder: (_, i) => Dismissible(
        key: UniqueKey(),
        background: Container(
          color: Colors.blue[900],
        ),
        onDismissed: (direction) => {
          Provider.of<ScanListProvider>(context, listen: false).borrarScansPorId(scans[i].id!)
        },
        child: ListTile(
          leading: Icon(
            tipo == 'http'
              ? Icons.home_outlined 
              : Icons.map_outlined,
            color: Colors.purple,),
          title: Text(scans[i].valor),
          subtitle: Text('${scans[i].id}'),
          trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,),
          onTap: () => launchUrl(context, scans[i]),
        ),
      )
    );
  }
}