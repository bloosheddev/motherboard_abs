import 'package:flutter/material.dart';
import 'package:motherboard/screen/6_motherboard_detail_screen.dart';
import 'package:motherboard/widget/image_widget.dart';

class HistoryScreenTwo extends StatelessWidget {
  const HistoryScreenTwo({super.key});

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
              child: Text(
                "Namun pada tahun 1973, Motorola berhasil membuat handphone dengan sistem motherboard yang membuat HP lebih ringkas dan mudah dibawa setelah 15 tahun riset",
                style: TextStyle(fontSize: 20.0),
                textAlign: .center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ImageWidget(
                imagePath: './assets/images/moto.jpg',
                height: 300,
                width: 500,
                fit: .cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Motorola DynaTAC 8000X",
                style: TextStyle(fontSize: 25.0, fontWeight: .bold),
                textAlign: .center,
              ),
            ),
            SizedBox(height: 30.0),
            Text("Diciptakan Oleh:", style: TextStyle(fontSize: 25.0)),
            SizedBox(height: 15.0),
            SingleChildScrollView(
              scrollDirection: .horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      ImageWidget(
                        imagePath: "./assets/images/mc.png",
                        width: 150,
                        height: 150,
                        fit: .cover,
                      ),
                      SizedBox(height: 5),
                      Text("Martin Cooper", style: TextStyle(fontSize: 20.0)),
                    ],
                  ),
                  SizedBox(width: 35.0),
                  Column(
                    children: [
                      ImageWidget(
                        imagePath: "./assets/images/rk.jpeg",
                        width: 150,
                        height: 150,
                        fit: .cover,
                      ),
                      SizedBox(height: 5),
                      Text("Rudy Krolopp", style: TextStyle(fontSize: 20.0)),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 100.0),
            Hero(
              tag: "next",
              child: FilledButton.icon(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MotherboardDetailScreen(),
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
