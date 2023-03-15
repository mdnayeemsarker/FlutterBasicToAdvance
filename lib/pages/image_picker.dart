import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:image_picker/image_picker.dart';

class ImagePickerPage extends StatelessWidget {
  ImagePickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker")),
      body: Imagepic(),
    );
  }
}

class Imagepic extends StatefulWidget {
  Imagepic({super.key});

  @override
  State<Imagepic> createState() => _ImagepickerState();
}

class _ImagepickerState extends State<Imagepic> {
  File? _image;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.blue,
            child: _image != null ? Image.file(_image as File) : Text("null"),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                  child: Icon(Icons.camera),
                  onPressed: () {
                    setState(() {
                      _getFromCamera();
                    });
                  }),
              SizedBox(width: 10),
              FloatingActionButton(
                  child: Icon(Icons.photo_library),
                  onPressed: () {
                    setState(() {
                      _getFromGallery();
                    });
                  })
            ],
          )
        ],
      ),
    );
  }

  /// Get from gallery
  _getFromCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this._image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  /// Get from gallery
  _getFromGallery() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this._image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }
}

  // /// Get from Camera
  // _getFromCamera() async {
  //   PickedFile pickedFile = await ImagePicker().getImage(
  //     source: ImageSource.camera,
  //     maxWidth: 1800,
  //     maxHeight: 1800,
  //   );
  //   if (pickedFile != null) {
  //     setState(() {
  //       _image = File(pickedFile.path);
  //     });
  //   }
  // }

