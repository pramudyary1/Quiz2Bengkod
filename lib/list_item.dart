import 'package:flutter/material.dart';
import 'makanan.dart';
import 'detail_page.dart';

class ListItem extends StatelessWidget {
  final Makanan makanan;

  const ListItem({required this.makanan, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(makanan: makanan),
          ),
        );
      },
      child: Card(
        child: ListTile(
          leading: Image.asset(makanan.gambar, width: 50, height: 50),
          title: Text(makanan.nama),
          subtitle: Text(makanan.harga),
        ),
      ),
    );
  }
}
