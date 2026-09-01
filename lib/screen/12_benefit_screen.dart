import 'package:flutter/material.dart';
import 'package:motherboard/screen/1_get_started_screen.dart';

class BenefitScreen extends StatelessWidget {
  const BenefitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manfaat", style: TextStyle(fontWeight: .bold)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: .center,
                children: [
                  Icon(Icons.vibration),
                  SizedBox(width: 15.0),
                  Icon(Icons.camera_alt),
                  SizedBox(width: 15.0),
                  Icon(Icons.flash_on),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Dari beberapa fitur ini, kita telah merasakan manfaat dari penggunaan motherboard pada hp. Sehingga kita dapat menggunakan banyak sekali fitur pada hp dikarenakan semua fitur dan komponen tersebut dihubungkan dengan motherboard.",
                  style: TextStyle(fontSize: 20.0),
                  textAlign: .center,
                ),
              ),
              SizedBox(height: 100.0),
              Hero(
                tag: "next",
                child: FilledButton.icon(
                  onPressed: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GetStartedScreen(),
                    ),
                    (route) =>
                        false, // This condition destroys all previous routes
                  ),
                  icon: Icon(Icons.replay_outlined),
                  iconAlignment: .end,
                  label: Text(
                    "Ulang Dari Awal",
                    style: TextStyle(fontSize: 16.5),
                  ),
                  style: FilledButton.styleFrom(minimumSize: Size(205, 50)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
