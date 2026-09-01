import 'package:flutter/material.dart';
import 'package:motherboard/screen/3_introduction_screen_two.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengenalan", style: TextStyle(fontWeight: .bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Hero(
                tag: "motherboard-hero",
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(25.0)),
                  child: Image.network(
                    'https://down-id.img.susercontent.com/file/id-11134207-23030-ug5j3j1e60nv68',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Ini Motherboard.\nBerbentuk PCB (Papan Sirkuit Cetak) yang dicetak berbasis komputer untuk menghubungkan semua komponen penting",
                style: TextStyle(fontSize: 25.0),
                textAlign: .center,
              ),
            ),
            SizedBox(height: 100.0),
            Hero(
              tag: "next",
              child: FilledButton.icon(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IntroductionScreenTwo(),
                  ),
                ),
                icon: Icon(Icons.arrow_forward),
                iconAlignment: .end,
                label: Text("Selanjutnya", style: TextStyle(fontSize: 16.5)),
                style: FilledButton.styleFrom(minimumSize: Size(205, 50)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
