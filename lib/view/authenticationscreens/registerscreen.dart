import 'package:abapower/controller/signup_controller/signup_controller.dart';
import 'package:abapower/controller/validator.dart';
import 'package:abapower/view/authenticationscreens/signin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    
    return Scaffold(
      backgroundColor: const Color(0xffF7C314),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 40, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/aple.png",
                      width: 100,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      child: Text(
                        'Register!',
                        style: GoogleFonts.leagueSpartan(
                            fontSize: 48, fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Please create an account  to continue',
                      style: GoogleFonts.leagueSpartan(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ), 
                  Form(
                    key: controller.signupformKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: TextFormField(
                            controller: controller.email,
                            validator: (value) => SValidator.validateEmail(value),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical:(16), horizontal: (16)),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: const BorderSide(
                                  color:Colors.black,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: const BorderSide(
                                  color: Colors.red, // Set to transparent to hide the default red border
                                ),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(6)),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                              prefixIcon: const Icon(Icons.email),
                              labelText: 'Please enter your official email',
                              floatingLabelStyle: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Padding(
                                  padding:   const EdgeInsets.symmetric(vertical: 4.0),
                                  child: TextButton(
                                    //Routes you to the loginscreen
                                    onPressed: ()=> controller.signup(),
                                    child: Text(
                                      'Register',
                                      style: GoogleFonts.leagueSpartan(
                                          fontSize: 24, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Padding(
                                  padding:   const EdgeInsets.symmetric(vertical: 4.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text('Already have an account?'),
                                      TextButton(
                                        //Routes you to the loginscreen
                                        onPressed: (){
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SigninScreen()));
                                        },
                                        child: Text(
                                          'Signin',
                                          style: GoogleFonts.leagueSpartan(
                                              fontSize: 20, color: Colors.blue),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
