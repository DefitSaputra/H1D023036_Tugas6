import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final String tahunLahir;

  const TampilData({
    super.key,
    required this.nama,
    required this.nim,
    required this.tahunLahir,
  });

  int _hitungUmur() {
    if (tahunLahir.isEmpty) return 0;
    try {
      int tahun = int.parse(tahunLahir);
      return DateTime.now().year - tahun;
    } catch (e) {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    int umur = _hitungUmur();
    final Color primaryColor = Theme.of(context).colorScheme.primary;
    final Color secondaryColor = Theme.of(context).colorScheme.secondary;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perkenalan Diri'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0), 
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [primaryColor.withOpacity(0.9), secondaryColor.withOpacity(0.9)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey.shade200, 
                      backgroundImage: AssetImage('assets/profile.webp'), 
                    ),
                    const SizedBox(height: 30),

                    Text(
                      'Halo! Saya',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    Text(
                      nama.isEmpty ? "[Nama Lengkap Anda]" : nama,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'dengan NIM ${nim.isEmpty ? "[NIM Anda]" : nim},',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.white.withOpacity(0.9),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'dan umur saya adalah $umur tahun.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

extension ColorExtension on Color {
  Color darken([int amount = 10]) {
    assert(amount >= 0 && amount <= 100);
    final int r = (red - (255 * amount / 100)).round().clamp(0, 255);
    final int g = (green - (255 * amount / 100)).round().clamp(0, 255);
    final int b = (blue - (255 * amount / 100)).round().clamp(0, 255);
    return Color.fromARGB(alpha, r, g, b);
  }
}