import 'package:flutter/material.dart';

class detailRekamMedis extends StatefulWidget {
  const detailRekamMedis({super.key});

  @override
  State<detailRekamMedis> createState() => _detailRekamMedisState();
}

class _detailRekamMedisState extends State<detailRekamMedis> {
  final _formKey = GlobalKey<FormState>();
  final _hewanCtrl = TextEditingController();
  final _pegawaiCtrl = TextEditingController();
  final _obatCtrl = TextEditingController();
  final _keluhanCtrl = TextEditingController();
  final _diagnosaCtrl = TextEditingController();
  final _tglPeriksaCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Rekam Medis',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {

            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child:
            Column(
              children: [
                SizedBox(height: 15,),
                _fieldRekamMedis("Nama Hewan",_hewanCtrl,TextInputType.text),
                SizedBox(height: 15,),
                _fieldRekamMedis("Nama Pegawai",_pegawaiCtrl,TextInputType.text),
                SizedBox(height: 15,),
                _fieldRekamMedis("Obat",_obatCtrl,TextInputType.text),
                SizedBox(height: 15,),
                _fieldRekamMedis("Keluhan",_keluhanCtrl,TextInputType.text),
                SizedBox(height: 15,),
                _fieldRekamMedis("Diagnosa",_diagnosaCtrl,TextInputType.text),
                SizedBox(height: 15,),
                _fieldRekamMedis("Tgl Periksa",_tglPeriksaCtrl,TextInputType.text),
                SizedBox(height: 20,),
                _tombolUbah(),
                SizedBox(height: 20,),
                _tombolHapus(),
              ],
            )
        ),
      ),
    );
  }
}
_fieldRekamMedis(String label, Ctrl, keyboardtext){
  return TextField(
    keyboardType: keyboardtext,
    decoration: InputDecoration(labelText: label, border: OutlineInputBorder()),
    controller: Ctrl,
  );
}

_tombolUbah(){
  return ElevatedButton(
    onPressed: () {

    },
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

_tombolHapus(){
  return ElevatedButton(
    onPressed: () {

    },
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
