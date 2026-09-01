import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motherboard/screen/10_camera_screen.dart';

class VibrateScreen extends StatelessWidget {
  const VibrateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Motherboard", style: TextStyle(fontWeight: .bold)),
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.0),

              Icon(Icons.vibration),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Coba untuk getarkan handphone ini",
                  style: TextStyle(fontSize: 20.0),
                  textAlign: .center,
                ),
              ),
              SizedBox(height: 25.0),
              Hero(
                tag: "next",
                child: FilledButton.icon(
                  onPressed: () {
                    HapticFeedback.heavyImpact();
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Berhasil!"),
                            IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(Icons.close),
                              tooltip: "Tutup",
                            ),
                          ],
                        ),
                        content: Text("Handphone berhasil digetarkan."),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CameraScreen(),
                              ),
                            ),
                            child: Text("Lanjutkan"),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: Icon(Icons.vibration),
                  iconAlignment: .end,
                  label: Text("Getarkan", style: TextStyle(fontSize: 16.5)),
                  style: FilledButton.styleFrom(minimumSize: Size(225, 50)),
                ),
              ),
              SizedBox(height: 80.0),
            ],
          ),
        ),
      ),
    );
  }
}
