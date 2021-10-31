// ignore_for_file: avoid_init_to_null

import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  XFile? imageFromGallery = null;

  @observable
  XFile? imageFromCamera = null;

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    imageFromGallery = await picker.pickImage(source: ImageSource.gallery);
  }

  Future<void> takePicture() async {
    final ImagePicker picker = ImagePicker();
    imageFromCamera = await picker.pickImage(source: ImageSource.camera);
  }
}
