import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerPage extends StatelessWidget {
  const ImagePickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker")),
      body: Imagepic(),
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
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  Future GalleryImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
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
          child: _image != null ? Image.file(_image) : Text("null"),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                CameraImage();
              },
              child: Icon(Icons.camera),
            ),
            SizedBox(width: 20),
            FloatingActionButton(
              onPressed: () {
                GalleryImage();
              },
              child: Icon(Icons.photo_library),
            ),
          ],
        )
      ],
    );
  }
}
