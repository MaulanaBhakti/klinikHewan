import 'package:flutter/material.dart';
import 'package:klinik_hewan/app/modules/Obat/controllers/obat_controller.dart';

class detailObat extends StatefulWidget {
  const detailObat({super.key});

  @override
  State<detailObat> createState() => _detailObatState();
}

class _detailObatState extends State<detailObat> {
  final _formKey = GlobalKey<FormState>();
  final _namaObatCtrl = TextEditingController();
  final _keteranganCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Obat',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                _fieldNamaObat("Nama Obat", _namaObatCtrl, TextInputType.text),
                SizedBox(
                  height: 15,
                ),
                _fieldNamaObat(
                    "Keterangan", _keteranganCtrl, TextInputType.text),
                SizedBox(
                  height: 20,
                ),
                _tombolUbah(),
                SizedBox(
                  height: 20,
                ),
                _tombolHapus()
              ],
            )),
      ),
    );
  }
}

_fieldNamaObat(String label, Ctrl, keyboardtext) {
  return TextField(
    keyboardType: keyboardtext,
    decoration: InputDecoration(labelText: label, border: OutlineInputBorder()),
    controller: Ctrl,
  );
}

_tombolUbah() {
  return ElevatedButton(
    onPressed: () {},
    child: Text("Ubah Data"),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      minimumSize: Size(200, 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  );
}

_tombolHapus() {
  return ElevatedButton(
    onPressed: () {},
    child: Text("hapus Data"),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      minimumSize: Size(200, 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  );
}
