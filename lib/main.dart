import 'package:flutter/material.dart';
import 'screens/biodata_mahasiswa_screen.dart';
import 'screens/status_matakuliah_screen.dart';
import 'screens/daftar_mahasiswa_matakuliah_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Mahasiswa',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Mahasiswa')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Biodata Mahasiswa'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BiodataMahasiswaScreen()),
              );
            },
          ),
          ListTile(
            title: const Text('Status Matakuliah'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StatusMatakuliahScreen()),
              );
            },
          ),
          ListTile(
            title: const Text('Daftar Mahasiswa dan Matakuliah'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DaftarMahasiswaMatakuliahScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
