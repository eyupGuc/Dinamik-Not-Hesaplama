import 'package:flutter/material.dart';

import 'package:not_hesaplama/constans/app_constants.dart';

class OrtalamGoster extends StatelessWidget {
  final double ortalama;
  final int dersSayisi;
  const OrtalamGoster(
      {required this.ortalama, required this.dersSayisi, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          dersSayisi > 0 ? '$dersSayisi Ders Girildi' : 'Ders Seçiniz',
          style: Sabitler.ortlamaGosterBodyStyle,
        ),
        Text(
          ortalama >= 0 ? ortalama.toStringAsFixed(2) : '0.0',
          style: Sabitler.ortalamaStyle,
        ),
        Text(
          'ortalama',
          style: Sabitler.ortlamaGosterBodyStyle,
        )
      ],
    );
  }
}
