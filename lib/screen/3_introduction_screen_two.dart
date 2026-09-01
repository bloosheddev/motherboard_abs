import 'package:flutter/material.dart';
import 'package:motherboard/screen/4_history_screen.dart';
import 'package:motherboard/widget/card_widget.dart';
import 'package:motherboard/widget/image_url_widget.dart';

class IntroductionScreenTwo extends StatelessWidget {
  const IntroductionScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengenalan", style: TextStyle(fontWeight: .bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30.0),
            Text(
              "Dan fungsi motherboard untuk menghubungkan ini semua:",
              style: TextStyle(fontSize: 25.0),
              textAlign: .center,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ImageUrlWidget(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbP9vh8K2dkkf4nRgyT08XP2pVB91LMqE2EJxh55khptpxgkKCKFoVACY&s=10',
                height: 300,
                width: 500,
                fit: .cover,
              ),
            ),

            Text("Catu Daya (Power Supply)", style: TextStyle(fontSize: 25.0)),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ImageUrlWidget(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-LB9U4Di8zL4ED9g7DMQlKU6zFtuBrhX-q2OhsxIQjOScdefVSBviNuI&s=10',
                height: 300,
                width: 500,
                fit: BoxFit.cover,
              ),
            ),
            Text("Chip Komputer/HP", style: TextStyle(fontSize: 25.0)),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ImageUrlWidget(
                imageUrl:
                    'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjxGl2laDHHhSjPQcWYU8PmCq94erYT0m9eaWihT3IrGNNGelrRtAGKLNGS6oOrxWvL8KhhMtKvd8GH9ZPNjY2-cBNXD54b23Z7xhsJBpMt1AmHCDUnNSskjK-3gOrLf1fRGXCoY_yHIdMnrOy1pMxLpjUEk4qHBEg2UhAmrNc9aCkLCNj_3cIZkr15gOVx/s305/modul-kamera.PNG',
                height: 300,
                width: 500,
                fit: BoxFit.cover,
              ),
            ),
            Text("Modul Kamera\n", style: TextStyle(fontSize: 25.0)),
            Text(
              "Dan masih banyak hal lainnya",
              style: TextStyle(fontSize: 25.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardWidget(title: "LED/Flash"),
                CardWidget(title: "Baterai"),
                CardWidget(title: "USB-C"),
                CardWidget(title: "Resistor"),
              ],
            ),

            SizedBox(height: 100.0),
            Hero(
              tag: "next",
              child: FilledButton.icon(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoryScreen()),
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
