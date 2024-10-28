import 'package:flutter/material.dart';
import 'makanan.dart';

class DetailPage extends StatelessWidget {
  final Makanan makanan;

  const DetailPage({required this.makanan, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 205, 92, 8),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 245, 228),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(makanan.gambar),
              const SizedBox(height: 16),
              Text(
                makanan.nama,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                makanan.harga,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(height: 16),
              Text(makanan.deskripsi),
              const SizedBox(height: 16),
              const Text(
                'Bahan Racikan:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: makanan.gambarTambahan.map((gambar) {
                  return Image.asset(
                    gambar,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
