import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imageuploader/app/modules/home/home_store.dart';

import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Uploader'),
      ),
      body: Observer(
        builder: (context) {
          return ListTile(
            leading: const Icon(Icons.attach_file_outlined),
            title: const Text('Send File'),
            onTap: store.pickImage,
            trailing: store.imageFromGallery != null ? Image.file(File(store.imageFromGallery!.path)) : null,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.takePicture();
        },
        child: const Icon(Icons.camera_alt_outlined),
      ),
    );
  }
}