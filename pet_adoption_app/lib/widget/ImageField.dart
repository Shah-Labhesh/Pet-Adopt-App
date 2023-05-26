import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageField extends StatefulWidget {
  @override
  _ImageFieldState createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  File? _imageFile;

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 300.0,
      child: OutlinedButton(
        
        
        onPressed: () {
          // Show the dialog to choose between camera or gallery
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Pick an image'),
              actions: [
                
                IconButton(onPressed: () {
                    _pickImage(ImageSource.camera);
                    Navigator.pop(context);
                  }, icon: Icon(Icons.camera_alt_outlined)),
                
                IconButton(onPressed: () {
                    _pickImage(ImageSource.gallery);
                    Navigator.pop(context);
                  }, icon: Icon(Icons.add_photo_alternate_outlined))
                
              ],
            ),
          );
        },
        child: _imageFile == null
            ? Icon(Icons.add_a_photo)
            : Image.file(_imageFile!),
      ),
    );
  }
}
