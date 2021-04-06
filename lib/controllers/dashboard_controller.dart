import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:honey_panel/pages/form_data.dart';

class DashboardController extends GetxController{
  CollectionReference users = FirebaseFirestore.instance.collection('honey_app');
  DashboardController(){
    // FirebaseFirestore firestore = FirebaseFirestore.instance;
    getData();



  }
  Future getData()async{
    await users.doc('123').get().then((value) {
      print('getting data from firestore');
      print('value: ${value.data()}');
      _dataFromFireStore.value = value.data().toString();
    });
  }
  RxInt _currentIndex = 0.obs;
  RxString _dataFromFireStore = ''.obs;

  selectPage(int pageIndex)=>
    _currentIndex.value = pageIndex;
  get currentIndex => _currentIndex.value;
  get dataFromFireStore => _dataFromFireStore.value;
}