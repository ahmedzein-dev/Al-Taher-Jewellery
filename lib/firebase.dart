import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

// void main() async {
//   print('************************** all files *************************');
//   await fetchFiles();
// }

// final List bars = [];
//
// uploadFiles() {
//   bars.map(
//     (bar) => uploadFile(
//       image: bar.imge,
//       price: bar.price,
//       title: bar.title,
//       description: bar.description,
//     ),
//   );
// }
//
// Future<void> uploadFile({
//   required File image,
//   required String description,
//   required String title,
//   required String price,
// }) async {
//   Reference storageReference =
//       FirebaseStorage.instance.ref().child('jewellery images/${image.path}');
//   UploadTask uploadTask = storageReference.putFile(image);
//   TaskSnapshot taskSnapshot = await uploadTask.whenComplete(
//     () {},
//   );
//   final imageUrl = await taskSnapshot.ref.getDownloadURL();
//   addProductToFireStore(
//     imgUrl: imageUrl,
//     price: price,
//     title: title,
//     description: description,
//   );
// }

fetchFiles() async {
  List<File> files =
      await getAllFiles('C:\\Users\\Ahmed\\Desktop\\jewellery\\bars');
  log('length = ${files.length}');
  log('path of first image = ${files.first.path}');
  uploadImages(files);
}

Future<List<File>> getAllFiles(String path) async {
  final List<FileSystemEntity> entities = await Directory(path).list().toList();
  return entities.whereType<File>().toList();
}

Future<List<String>> uploadImages(List<File> images) async {
  List<String> imageUrls = await Future.wait(
    images.map(
      (image) async => await uploadImage(
        image,
      ),
    ),
  );
  for (String imgUrl in imageUrls) {
    log(imgUrl);
  }
  imageUrls.map(
    (imageUrl) => addProductToFireStore(
      imgUrl: imageUrl,
      title: 'سبيكة',
      price: '',
      description: '',
    ),
  );
  return imageUrls;
}

Future<String> uploadImage(File image) async {
  Reference storageReference =
      FirebaseStorage.instance.ref().child('jewellery images/${image.path}');
  UploadTask uploadTask = storageReference.putFile(image);
  await uploadTask.whenComplete(
    () {},
  );
  return await storageReference.getDownloadURL();
}

addProductToFireStore({
  required String imgUrl,
  required String description,
  required String title,
  required String price,
}) {
  CollectionReference ref =
      FirebaseFirestore.instance.collection('categories/bars');
  ref.add({
    'imgUrl': imgUrl,
    'title': title,
    'description': description,
    'price': price,
  });
}

// Future<List<FileSystemEntity>> dirContents(Directory dir) {
//   var files = <FileSystemEntity>[];
//   var completer = Completer<List<FileSystemEntity>>();
//   var lister = dir.list(recursive: false);
//   lister.listen((file) => files.add(file),
//       // should also register onError
//       onDone: () => completer.complete(files));
//   return completer.future;
// }
