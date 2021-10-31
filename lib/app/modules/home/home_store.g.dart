// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$imageFromGalleryAtom = Atom(name: 'HomeStoreBase.imageFromGallery');

  @override
  XFile? get imageFromGallery {
    _$imageFromGalleryAtom.reportRead();
    return super.imageFromGallery;
  }

  @override
  set imageFromGallery(XFile? value) {
    _$imageFromGalleryAtom.reportWrite(value, super.imageFromGallery, () {
      super.imageFromGallery = value;
    });
  }

  final _$imageFromCameraAtom = Atom(name: 'HomeStoreBase.imageFromCamera');

  @override
  XFile? get imageFromCamera {
    _$imageFromCameraAtom.reportRead();
    return super.imageFromCamera;
  }

  @override
  set imageFromCamera(XFile? value) {
    _$imageFromCameraAtom.reportWrite(value, super.imageFromCamera, () {
      super.imageFromCamera = value;
    });
  }

  @override
  String toString() {
    return '''
imageFromGallery: ${imageFromGallery},
imageFromCamera: ${imageFromCamera}
    ''';
  }
}
