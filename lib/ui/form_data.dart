import 'package:flutter/material.dart';
import 'package:h1d023036_tugas6/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({super.key});

  @override
  State<FormData> createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunLahirController = TextEditingController();

  @override
  void dispose() {
    _namaController.dispose();
    _nimController.dispose();
    _tahunLahirController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Data Diri'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0), 
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(30.0), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Formulir Biodata',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Theme.of(context).colorScheme.primary, 
                          fontWeight: FontWeight.w700,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30), 

                  TextField(
                    controller: _namaController,
                    decoration: const InputDecoration(
                      labelText: 'Nama Lengkap',
                      prefixIcon: Icon(Icons.person_outline),
                    ),
                  ),
                  const SizedBox(height: 20), 

                  TextField(
                    controller: _nimController,
                    decoration: const InputDecoration(
                      labelText: 'NIM',
                      prefixIcon: Icon(Icons.badge_outlined),
                    ),
                  ),
                  const SizedBox(height: 20),

                  TextField(
                    controller: _tahunLahirController,
                    decoration: const InputDecoration(
                      labelText: 'Tahun Lahir',
                      prefixIcon: Icon(Icons.calendar_today_outlined),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      _kirimData();
                    },
                    child: const Text('Simpan & Lihat'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _kirimData() {
    String nama = _namaController.text;
    String nim = _nimController.text;
    String tahunLahir = _tahunLahirController.text;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TampilData(
          nama: nama,
          nim: nim,
          tahunLahir: tahunLahir,
        ),
      ),
    );
  }
}