class SValidator{
  static String? validateEmail(String? value) {
    if(value == null || value.isEmpty){
      return 'geometricpower.com or abapower.com email address required';
    }

    //Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)){
      return 'Invalide email address';
    }
    return null;
  }

  static String? validatePassword(String value) {

    if (value.isEmpty) {
      return 'Please enter password';
    } return null;
  }
}

