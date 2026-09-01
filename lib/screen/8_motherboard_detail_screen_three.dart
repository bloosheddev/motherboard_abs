import 'package:flutter/material.dart';
import 'package:motherboard/screen/9_vibrate_screen.dart';
import 'package:motherboard/widget/image_url_widget.dart';

class MotherboardDetailScreenThree extends StatelessWidget {
  const MotherboardDetailScreenThree({super.key});

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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ImageUrlWidget(
                imageUrl:
                    'https://cdn.discordapp.com/attachments/1543875455067881493/1544165291653730394/20260901_085948.jpg?ex=6a97837e&is=6a9631fe&hm=30fff3a77b8610e86c7d941183814edd08df4760e342a929923d020139697dda&',
                height: 300,
                width: 500,
                fit: .cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Motherboard ini juga menggunakan warna biru sebagai pelapis pelindung dan juga menggunakan cangkang alumunium untuk melindungi komponen CPU/Processor",
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
                  MaterialPageRoute(builder: (context) => VibrateScreen()),
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
