import 'package:flutter/material.dart';
import 'package:motherboard/screen/5_history_screen_two.dart';
import 'package:motherboard/widget/image_url_widget.dart';
import 'package:motherboard/widget/image_widget.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sejarah", style: TextStyle(fontWeight: .bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30.0),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ImageWidget(
                imagePath: './assets/images/p2p.jpg',
                height: 300,
                width: 500,
                fit: .cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Jauh sebelum adanya motherboard, rata-rata HP (telepon genggam) menggunakan sistem Point-to-Point Chassis yang berantakan dan tidak efisien untuk diproduksi",
                style: TextStyle(fontSize: 20.0),
                textAlign: .center,
              ),
            ),
            SizedBox(height: 100.0),
            Hero(
              tag: "next",
              child: FilledButton.icon(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoryScreenTwo()),
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
