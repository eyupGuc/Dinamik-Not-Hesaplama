import 'package:flutter/material.dart';
import 'package:not_hesaplama/constans/app_constants.dart';
import 'package:not_hesaplama/ortalama_goster.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({Key? key}) : super(key: key);

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Text(
              Sabitler.baslikText,
              style: Sabitler.baslikStyle,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: _buildForm(),
                ),
                const Expanded(
                  flex: 1,
                  child: OrtalamGoster(ortalama: 4.67676, dersSayisi: 4),
                )
              ],
            ),
            Expanded(
                child: Container(
              child: Text('Liste buraya gelecek'),
              color: Colors.blue,
            ))
          ],
        ));
  }

  Widget _buildForm() {
    return Form(
        key: formKey,
        child: Column(
          children: [
            _buildTextFormField(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildHarfler(),
                IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
                IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit))
              ],
            )
          ],
        ));
  }

  Widget _buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Matematik',
          border: OutlineInputBorder(borderRadius: Sabitler.borderRadius),
          filled: true,
          fillColor: Sabitler.anaRenk.shade100.withOpacity(0.3)),
    );
  }

  Widget _buildHarfler() {
    double secilenDeger = 4;
    return Container(
      decoration: BoxDecoration(
          color: Sabitler.anaRenk.shade100.withOpacity(0.3),
          borderRadius: Sabitler.borderRadius),
      child: DropdownButton<double>(
        value: 4,
        items: const [
          DropdownMenuItem(
            child: Text('AA'),
            value: 4,
          ),
          DropdownMenuItem(
            child: Text('BA'),
            value: 3.5,
          ),
          DropdownMenuItem(
            child: Text('BB'),
            value: 3,
          ),
          DropdownMenuItem(
            child: Text('CB'),
            value: 2.5,
          ),
          DropdownMenuItem(
            child: Text('CC'),
            value: 2,
          )
        ],
        onChanged: (deger) {
          setState(() {
            secilenDeger = deger!;
          });
        },
      ),
    );
  }
}
