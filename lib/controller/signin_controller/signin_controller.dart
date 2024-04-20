import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysql1/mysql1.dart';

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
     final conn = await MySqlConnection.connect(ConnectionSettings(
        host: '167.99.195.7',
        port: 3306,
        user: 'swfuser',
        db: 'APLEICT',
        password: 'ApleNewSwf321'
    ));

    try {
      // Call the stored procedure with the email parameter
      var results = await conn.query(
      'CALL swfgetuser("${email.text.trim()}")');
      print(results);

      // Iterate through the results and print them
      for (var row in results) {
        print('Email: ${row[0]}, Password: ${row[1]}, Active: ${row[2]}');
        // Here you can set the state of your widget to display the data
        Get.offAll(()=> SigninScreen());
      }
  }catch(e){

  }
}

}
