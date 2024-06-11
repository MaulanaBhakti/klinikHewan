import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/pemilikHome_controller.dart';

class PemilikhomeView extends GetView<PemilikhomeController> {
  const PemilikhomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
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
              // Aksi ketika ikon lonceng ditekan
            },
          ),
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 16.0), // Jarak antara AppBar dan body
        child: ListView(
          children: [
            _buildListTile(
              title: 'Data Pemilik',
              icon: Icons.arrow_forward,
              onTap: () {
                Get.toNamed('/pemilik');
              },
            ),
            _buildListTile(
              title: 'Data Hewan',
              icon: Icons.arrow_forward,
              onTap: () {
                Get.toNamed('/hewan');
              },
            ),
            _buildListTile(
              title: 'Data Rekam Medis',
              icon: Icons.arrow_forward,
              onTap: () {
                Get.toNamed('/rekam-medis');
              },
            ),
            _buildListTile(
              title: 'Data Pembayaran',
              icon: Icons.arrow_forward,
              onTap: () {
                Get.toNamed('/pembayaran');
              },
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Cari'),
      //     BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorit'),
      //     BottomNavigationBarItem(icon: Icon(Icons.add), label: '+'),
      //     BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Pesan'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
      //   ],
      // ),
    );
  }

  Widget _buildListTile({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(8),
      child: ListTile(
        title: Text(title),
        trailing: Icon(icon),
        onTap: onTap,
      ),
    );
  }
}
