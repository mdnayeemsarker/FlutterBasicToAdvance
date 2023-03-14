import 'dart:io';

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:image_picker/image_picker.dart';

class ImagePickerPage extends StatelessWidget {
  const ImagePickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Picker")),
      body: const Imagepic(),
    );
  }
}

class Imagepic extends StatefulWidget {
  const Imagepic({super.key});

  @override
  State<Imagepic> createState() => _ImagepickerState();
}

class _ImagepickerState extends State<Imagepic> {
  File _image = File("");

  Future CameraImage() async {
    var image = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    setState(() {
      _image = File(image.path);
    });
  }

  Future GalleryImage() async {
    var image = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    setState(() {
      _image = File(image.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          color: Colors.blue,
          child: _image != null ? Image.file(_image) : const Text("null"),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                CameraImage();
              },
              child: const Icon(Icons.camera),
            ),
            const SizedBox(width: 20),
            FloatingActionButton(
              onPressed: () {
                GalleryImage();
              },
              child: const Icon(Icons.photo_library),
            ),
          ],
        )
      ],
    );
  }
}
