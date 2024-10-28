import 'package:flutter/material.dart';
import 'list_item.dart';
import 'makanan.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Makanan> makananList = [
      Makanan(
        nama: 'BUBUR AYAM TEU GENAH',
        harga: 'Rp 14.000',
        gambar: 'assets/bubur.jpg',
        deskripsi:
            'Seperti namanya, rasa dari bubur ayam ini teu genah tapi kalo di makan pasti ludes.\nBubur ini dibuat dengan mood pedagang yang berubah-ubah',
        gambarTambahan: [
          'assets/bahan/ayam.png',
          'assets/bahan/bawang.png',
          'assets/bahan/daunBawang.png',
          'assets/bahan/kacang.png',
          'assets/bahan/kecap.png',
        ],
      ),
      Makanan(
        nama: 'PECEL',
        harga: 'Rp 7.500',
        gambar: 'assets/pecel1.jpg',
        deskripsi: 'PECEL MENYEHATKAN TUBUH\n10 manfaat makan pecel.',
        gambarTambahan: [
          'assets/bahan/sayur.png',
          'assets/bahan/tomat.png',
          'assets/bahan/telur.png',
          'assets/bahan/kentang.png',
          'assets/bahan/cabai.png',
        ],
      ),
      Makanan(
        nama: 'SOTO YESUS',
        harga: 'Rp 10.000',
        gambar: 'assets/soto.jpg',
        deskripsi:
            'Soto adalah Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nCras ut nisl id libero aliquet sagittis ut sit amet augue. Vestibulum lacinia velit sed dapibus laoreet.\n *maas maf bingung nambahin deskripsi🙏 ',
        gambarTambahan: [
          'assets/bahan/ayam.png',
          'assets/bahan/daunBawang.png',
          'assets/bahan/daging.png',
        ],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List Kuliner',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 205, 92, 8),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 245, 228),
      body: ListView.builder(
        itemCount: makananList.length,
        itemBuilder: (context, index) {
          return ListItem(makanan: makananList[index]);
        },
      ),
    );
  }
}
