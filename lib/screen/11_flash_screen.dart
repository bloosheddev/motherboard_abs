import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:motherboard/screen/12_benefit_screen.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({super.key});

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  CameraController? _controller;
  bool _flashOn = false;

  Future<void> _toggleFlash() async {
    try {
      if (_controller == null) {
        final cameras = await availableCameras();
        if (cameras.isEmpty) {
          if (!mounted) return;
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Tidak ada kamera yang tersedia.')),
          );
          return;
        }

        _controller = CameraController(
          cameras.first,
          ResolutionPreset.low,
          enableAudio: false,
        );

        await _controller!.initialize();
      }

      final nextMode = _flashOn ? FlashMode.off : FlashMode.torch;
      await _controller!.setFlashMode(nextMode);

      if (!mounted) return;
      setState(() {
        _flashOn = !_flashOn;
      });
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Flash tidak dapat diaktifkan: $e')),
      );
    }
  }

  @override
  void dispose() {
    _controller?.setFlashMode(FlashMode.off).catchError((_) {});
    _controller?.dispose();
    super.dispose();
  }

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
              Icon(_flashOn ? Icons.flash_on : Icons.flash_off, size: 50.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Coba untuk nyalakan flash handphone ini",
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 25.0),
              FilledButton.icon(
                onPressed: _toggleFlash,
                icon: Icon(_flashOn ? Icons.flash_off : Icons.flash_on),
                iconAlignment: IconAlignment.end,
                label: Text(
                  _flashOn ? "Matikan Flash" : "Nyalakan Flash",
                  style: TextStyle(fontSize: 16.5),
                ),
                style: FilledButton.styleFrom(minimumSize: Size(225, 50)),
              ),
              SizedBox(height: 30.0),
              Hero(
                tag: "next",
                child: FilledButton.icon(
                  onPressed: () async {
                    if (_controller != null) {
                      await _controller!.setFlashMode(FlashMode.off);
                      await _controller!.dispose();
                      _controller = null;
                    }
                    if (!mounted) return;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BenefitScreen()),
                    );
                  },
                  icon: Icon(Icons.arrow_forward),
                  iconAlignment: IconAlignment.end,
                  label: Text("Selanjutnya", style: TextStyle(fontSize: 16.5)),
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
