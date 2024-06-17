import 'package:flutter/material.dart';
import 'package:klinik_hewan/app/modules/Resep/controllers/ubahResep_controller.dart';

class resepObat extends StatefulWidget {
  const resepObat({super.key});

  @override
  State<resepObat> createState() => _resepObatState();
}

class _resepObatState extends State<resepObat> {
  final _formKey = GlobalKey<FormState>();
  final _rekamMedisCtrl = TextEditingController();
  final _obatCtrl = TextEditingController();
  final _jumlahCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Resep Obat',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                _fieldResep("Rekam Medis", _rekamMedisCtrl, TextInputType.text),
                SizedBox(
                  height: 15,
                ),
                _fieldResep("Obat", _obatCtrl, TextInputType.text),
                SizedBox(
                  height: 15,
                ),
                _fieldResep("jumlah", _jumlahCtrl, TextInputType.text),
                SizedBox(
                  height: 20,
                ),
                _tombolSimpan(),
              ],
            )),
      ),
    );
  }

  _fieldResep(String label, Ctrl, keyboardtext) {
    return TextField(
      keyboardType: keyboardtext,
      decoration:
          InputDecoration(labelText: label, border: OutlineInputBorder()),
      controller: Ctrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        //blm diisi
      },
      child: const Text("Simpan"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        minimumSize: Size(200, 50),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(8.0), // Ubah nilai sesuai keinginan
        ),
      ),
    );
  }
}
