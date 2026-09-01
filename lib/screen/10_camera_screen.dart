import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:motherboard/screen/11_flash_screen.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? _controller;
  Future<void>? _cameraFuture;
  bool _cameraOpened = false;

  Future<void> _openCamera() async {
    try {
      final cameras = await availableCameras();
      final firstCamera = cameras.first;

      final controller = CameraController(
        firstCamera,
        ResolutionPreset.medium,
        enableAudio: false,
      );

      _controller = controller;
      _cameraFuture = controller.initialize();

      if (!mounted) return;
      setState(() {
        _cameraOpened = true;
      });

      await _cameraFuture;

      if (!mounted) return;
      setState(() {});
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Kamera tidak dapat dibuka')));
    }
  }

  void _closeCamera() {
    if (_controller != null) {
      _controller!.dispose();
      _controller = null;
    }
    _cameraFuture = null;
    _cameraOpened = false;
  }

  @override
  void dispose() {
    _closeCamera();
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
              Icon(Icons.camera_alt, size: 50.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Coba untuk membuka kamera handphone ini",
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 25.0),
              FilledButton.icon(
                onPressed: _cameraOpened ? null : _openCamera,
                icon: Icon(Icons.camera_alt),
                iconAlignment: IconAlignment.end,
                label: Text(
                  _cameraOpened ? "Kamera Terbuka" : "Buka Kamera",
                  style: TextStyle(fontSize: 16.5),
                ),
                style: FilledButton.styleFrom(minimumSize: Size(225, 50)),
              ),
              if (_cameraOpened && _controller != null)
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: SizedBox(
                    width: 260,
                    height: 320,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: FutureBuilder<void>(
                        future: _cameraFuture,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                                  ConnectionState.done &&
                              _controller != null &&
                              _controller!.value.isInitialized) {
                            return AspectRatio(
                              aspectRatio: 1 / _controller!.value.aspectRatio,
                              child: CameraPreview(_controller!),
                            );
                          }
                          return Center(child: CircularProgressIndicator());
                        },
                      ),
                    ),
                  ),
                ),
              SizedBox(height: 30.0),
              Hero(
                tag: "next",
                child: FilledButton.icon(
                  onPressed: () {
                    _closeCamera();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FlashScreen()),
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
