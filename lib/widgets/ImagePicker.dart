import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  ImagePicker _picker = ImagePicker();
  XFile? file;
  List<XFile>? _files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey.shade100,
              child: Center(
                  child: file == null
                      ? Text('Image Not Picked')
                      : Image.file(
                          File(file!.path),
                          fit: BoxFit.cover,
                        )),
            ),
            ElevatedButton(
                onPressed: () async {
                  final XFile? photo =
                      await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    file = photo;
                  });
                  print('Image Picked');
                  print(photo!.path);
                },
                child: Text('Pick Image')),
            ElevatedButton(
                onPressed: () async {
                  final List<XFile>? images = await _picker.pickMultiImage();
                  setState(() {
                    _files = images;
                  });
                  print('Image Picked');
                  for (int i = 0; i < _files!.length; i++) {
                    print(_files![i].path);
                  }
                },
                child: Text('Pick Image'))
          ],
        ),
      ),
    );
  }
}
