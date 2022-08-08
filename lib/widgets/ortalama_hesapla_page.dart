import 'package:flutter/material.dart';
import 'package:not_hesaplama/constans/app_constants.dart';
import 'package:not_hesaplama/ortalama_goster.dart';

import '../helper/data_helper.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({Key? key}) : super(key: key);

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  double secilenDeger = 4;
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
    return Container(
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
          color: Sabitler.anaRenk.shade100.withOpacity(0.3),
          borderRadius: Sabitler.borderRadius),
      child: DropdownButton<double>(
        elevation: 0,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        value: secilenDeger,
        items: DataHelper.tumDerslerinHarfleri(),
        onChanged: (deger) {
          setState(() {
            secilenDeger = deger!;
            print(secilenDeger);
          });
        },
        underline: Container(),
      ),
    );
  }
}
