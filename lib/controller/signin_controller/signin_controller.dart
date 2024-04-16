import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninController extends GetxController{
  static SigninController get instance => Get.find();
  //Variables
  final email = TextEditingController();
  final password = TextEditingController();

  GlobalKey<FormState> signinformKey = GlobalKey<FormState>();

  ///--SIGNING

Future<void> Signin()async{
  try{
    if(!signinformKey.currentState!.validate()) return;
  }catch(e){

  }
}

}