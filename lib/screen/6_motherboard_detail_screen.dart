import 'package:flutter/material.dart';
import 'package:motherboard/screen/7_motherboard_detail_screen_two.dart';

import 'package:motherboard/widget/image_widget.dart';

class MotherboardDetailScreen extends StatelessWidget {
  const MotherboardDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Motherboard", style: TextStyle(fontWeight: .bold)),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30.0),

            Text(
              "Ambil contoh dari Motherboard Samsung Galaxy Note 8 (2017), motherboard ini memiliki ukuran yang ringkas dan padat dengan berbagai komponen",
              style: TextStyle(fontSize: 20.0),
              textAlign: .center,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ImageWidget(
                imagePath: './assets/images/main.jpg',
                height: 350,
                width: 250,
                fit: .cover,
              ),
            ),
            Text(
              "Bentuk: L\nPanjang: 12 cm\nLebar: 6,5 cm\nKondisi: Bubble pada beberapa komponen karena pernah tercelup air, bubble air ini membuat motherboard hp ini mengalami korsleting pada beberapa bagian di jalur konduktornya",
              style: TextStyle(fontSize: 20.0),
              textAlign: .center,
            ),

            SizedBox(height: 100.0),
            Hero(
              tag: "next",
              child: FilledButton.icon(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MotherboardDetailScreenTwo(),
                  ),
                ),
                icon: Icon(Icons.arrow_forward),
                iconAlignment: .end,
                label: Text("Selanjutnya", style: TextStyle(fontSize: 16.5)),
                style: FilledButton.styleFrom(minimumSize: Size(225, 50)),
              ),
            ),
            SizedBox(height: 80.0),
          ],
        ),
      ),
    );
  }
}
