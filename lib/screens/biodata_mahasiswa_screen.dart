import 'package:flutter/material.dart';
import '../widgets/custom_radio_button.dart';
import '../widgets/date_picker.dart';

class BiodataMahasiswaScreen extends StatefulWidget {
  @override
  _BiodataMahasiswaScreenState createState() => _BiodataMahasiswaScreenState();
}

class _BiodataMahasiswaScreenState extends State<BiodataMahasiswaScreen> {
  // Controllers untuk text input
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nimController = TextEditingController();
  final TextEditingController tempatLahirController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController nomorHPController = TextEditingController();

  // State untuk radio button dan date picker
  String jenisKelamin = 'Laki-Laki';
  String kelas = 'A';
  String programStudi = 'Teknik Informatika';
  String fakultas = 'Fakultas Teknik';
  DateTime? tanggalLahir;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Biodata Mahasiswa')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Input Nama
            TextField(
              controller: namaController,
              decoration: const InputDecoration(labelText: 'Nama'),
            ),

            // Input NIM
            TextField(
              controller: nimController,
              decoration: const InputDecoration(labelText: 'NIM'),
            ),

            // Radio Button Jenis Kelamin
            const Text('Jenis Kelamin'),
            Row(
              children: [
                CustomRadioButton(
                  label: 'Laki-Laki',
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value!;
                    });
                  },
                ),
                CustomRadioButton(
                  label: 'Perempuan',
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value!;
                    });
                  },
                ),
              ],
            ),

            // Radio Button Kelas
            const Text('Kelas'),
            Row(
              children: [
                CustomRadioButton(
                  label: 'A',
                  groupValue: kelas,
                  onChanged: (value) {
                    setState(() {
                      kelas = value!;
                    });
                  },
                ),
                CustomRadioButton(
                  label: 'B',
                  groupValue: kelas,
                  onChanged: (value) {
                    setState(() {
                      kelas = value!;
                    });
                  },
                ),
              ],
            ),

            // Radio Button Program Studi
            const Text('Program Studi'),
            Row(
              children: [
                CustomRadioButton(
                  label: 'Teknik Informatika',
                  groupValue: programStudi,
                  onChanged: (value) {
                    setState(() {
                      programStudi = value!;
                    });
                  },
                ),
                CustomRadioButton(
                  label: 'Sistem Informasi',
                  groupValue: programStudi,
                  onChanged: (value) {
                    setState(() {
                      programStudi = value!;
                    });
                  },
                ),
              ],
            ),

            // Radio Button Fakultas
            const Text('Fakultas'),
            Row(
              children: [
                CustomRadioButton(
                  label: 'Fakultas Teknik',
                  groupValue: fakultas,
                  onChanged: (value) {
                    setState(() {
                      fakultas = value!;
                    });
                  },
                ),
                CustomRadioButton(
                  label: 'Fakultas Ekonomi',
                  groupValue: fakultas,
                  onChanged: (value) {
                    setState(() {
                      fakultas = value!;
                    });
                  },
                ),
              ],
            ),

            // Input Tempat Lahir
            TextField(
              controller: tempatLahirController,
              decoration: const InputDecoration(labelText: 'Tempat Lahir'),
            ),

            // Date Picker Tanggal Lahir
            const SizedBox(height: 16),
            const Text('Tanggal Lahir'),
            DatePicker(
              onDateSelected: (date) {
                setState(() {
                  tanggalLahir = date;
                });
              },
            ),
            if (tanggalLahir != null)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                    'Tanggal Lahir: ${tanggalLahir!.toLocal()}'.split(' ')[0]),
              ),

            // Input Alamat
            TextField(
              controller: alamatController,
              decoration: const InputDecoration(labelText: 'Alamat'),
            ),

            // Input Nomor HP
            TextField(
              controller: nomorHPController,
              decoration: const InputDecoration(labelText: 'Nomor HP'),
            ),

            // Tombol Simpan
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _saveData();
              },
              child: const Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }

  void _saveData() {
    // Simpan data ke backend atau proses lainnya
    print('Nama: ${namaController.text}');
    print('NIM: ${nimController.text}');
    print('Jenis Kelamin: $jenisKelamin');
    print('Kelas: $kelas');
    print('Program Studi: $programStudi');
    print('Fakultas: $fakultas');
    print('Tempat Lahir: ${tempatLahirController.text}');
    print('Tanggal Lahir: ${tanggalLahir?.toLocal()}'.split(' ')[0]);
    print('Alamat: ${alamatController.text}');
    print('Nomor HP: ${nomorHPController.text}');
  }
}
