import 'dart:convert';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:firebase_storage/firebase_storage.dart';

class DashboardController extends GetxController{
  CollectionReference users = FirebaseFirestore.instance.collection('honey_app');
  DashboardController(){
    // FirebaseFirestore firestore = FirebaseFirestore.instance;
    _getData();
    uploadImage();


  }
  Future _getData()async{
    await users.doc('123').get().then((value) {
      print('getting data from firestore');
      print('value: ${value.data()}');
      _dataFromFireStore.value = value.data().toString();
    });
  }
  RxInt _currentIndex = 0.obs;
  RxString _dataFromFireStore = ''.obs,imageLink = ''.obs;


  selectPage(int pageIndex)=>
    _currentIndex.value = pageIndex;
  get currentIndex => _currentIndex.value;
  get dataFromFireStore => _dataFromFireStore.value;

  // Future<void> _downloadLink(firebase_storage.Reference ref) async {
  //   final link = await ref.getDownloadURL();
  // print('link $link');
  // }
uploadImage(/*var imageFile */) async {
  print('getting data..');
    return await FirebaseStorage.instance.ref().child('images/gorakh_hill_shot.jpg').getData().then((value){

      print('getting data from firebase storage');
      print('value ${value}');
      imageLink.value = jsonEncode(value.toString());

    });

    // await FirebaseStorage.instance. ref() .putFile(imageFile).then((uploadTask) async{
    //   await uploadTask.ref.getDownloadURL().then((imageDownloadUrl) {
    //     print('imageDownloadUrl $imageDownloadUrl');
    //   });
    // });


  }
}