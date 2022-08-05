import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrtalamGoster extends StatelessWidget {
  final double ortalama;
  final int dersSayisi;
  const OrtalamGoster(
      {required this.ortalama, required this.dersSayisi, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(dersSayisi > 0 ? '$dersSayisi Ders Gİrildi' : 'Ders Seçiniz'),
        Text('2.85'),
        Text('ortalama')
      ],
    );
  }
}
