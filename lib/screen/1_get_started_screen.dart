import 'package:flutter/material.dart';
import 'package:motherboard/screen/2_introduction_screen.dart';
import 'package:motherboard/widget/image_widget.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Hero(
                tag: "motherboard-hero",
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(25.0)),
                  child: ImageWidget(
                    imagePath: './assets/images/motherboard.jpeg',
                  ),
                ),
              ),
            ),
            const Text(
              'Motherboard',
              style: TextStyle(fontSize: 35.0, fontWeight: .w500),
            ),
            SizedBox(height: 30.0),
            Hero(
              tag: "next",
              child: FilledButton.icon(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IntroductionScreen()),
                ),
                icon: Icon(Icons.arrow_forward),
                iconAlignment: .end,
                label: Text("Mulai", style: TextStyle(fontSize: 16.5)),
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
