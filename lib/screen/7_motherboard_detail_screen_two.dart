import 'package:flutter/material.dart';
import 'package:motherboard/screen/8_motherboard_detail_screen_three.dart';
import 'package:motherboard/widget/image_url_widget.dart';

class MotherboardDetailScreenTwo extends StatelessWidget {
  const MotherboardDetailScreenTwo({super.key});

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
                    'https://down-id.img.susercontent.com/file/4629b51c8294d27d8decf31a40d917fc',
                height: 300,
                width: 500,
                fit: .cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Konektor/fleksibel berwarna kuning sebagai pembeda dari motherboard maupun komponen lainnya",
                style: TextStyle(fontSize: 20.0),
                textAlign: .center,
              ),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ImageUrlWidget(
                imageUrl:
                    'https://down-id.img.susercontent.com/file/4629b51c8294d27d8decf31a40d917fc',
                height: 300,
                width: 500,
                fit: .cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Adapun label pada motherboard HP ini yaitu “2017.06.11 N950F_08 G40” untuk mengetahui tanggal produksi dan seri model motherboard, namun tidak semua komponen pada motherboard diberi label",
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
                  MaterialPageRoute(
                    builder: (context) => MotherboardDetailScreenThree(),
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
