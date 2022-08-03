import 'package:flutter/material.dart';
import 'package:not_hesaplama/constans/app_constants.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({Key? key}) : super(key: key);

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Text(Sabitler.baslikText),
        ),
      ),
      body: const Center(
        child: Text('Merhaba'),
      ),
    );
  }
}
