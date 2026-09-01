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
                    'https://cdn.discordapp.com/attachments/1543875455067881493/1544165289024028852/20260901_085903.jpg?ex=6a97837e&is=6a9631fe&hm=472016e6cc98d4ccf766906ec3babf883b800e839a3b939d201f264102c6fe13&',
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
                    'https://cdn.discordapp.com/attachments/1543875455067881493/1544165287832584243/20260901_085834.jpg?ex=6a97837d&is=6a9631fd&hm=6aa0b4268135597bc2821eee1788f7722e217519bb291187fcfdc5e1d01ed20a&',
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
