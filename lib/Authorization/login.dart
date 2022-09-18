// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../screens/profile/profile_info.dart';
import '../widgets/bottomnavigationbar.dart';


class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController otpcontroller = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  String verificationIDReceived = "";

  bool otpCodeVisible = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {

      return Colors.black;
    }
    return Colors.black;
  }

  bool value = false;

  late Timer _timer;
  int _start = 60;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                tooltip: MaterialLocalizations.of(context).backButtonTooltip,
              );
            },
          ),
          centerTitle: true,
          title: Text(
            'Login',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Stack(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    Text(
                      'Welcome to Vardiano',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),

                    SizedBox(
                      height: size.height * 0.1,
                    ),

                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text('Phone number'),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    TextFormField(
                      controller: phonecontroller,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                        // fillColor: Colors.grey.shade300,
                        filled: true,
                        hintText: "Enter mobile number",
                        prefixIcon: Icon(Icons.mobile_friendly_rounded),
                        hintStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          fillColor:
                          MaterialStateProperty.resolveWith(getColor),
                          value: value,
                          onChanged: (bool? newvalue) {
                            setState(() {
                              value = newvalue!;
                            });
                          },
                        ),
                        Text(
                          'Accept terms and privacy policy',
                          style: TextStyle(),
                        ),
                      ],
                    ),
                    Visibility(
                      visible: otpCodeVisible,
                      child: TextFormField(
                        controller: otpcontroller,
                        decoration: InputDecoration(
                          // fillColor: Colors.grey.shade300,
                          filled: true,
                          hintText: "Enter otp",
                          prefixIcon: Icon(Icons.password),
                          hintStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: size.height * 0.05,
                    // ),
                    // Center(
                    //   child: InkWell(
                    //     onTap: () {
                    //       verifyNumber();
                    //       // Navigator.push(
                    //       //     context,
                    //       //     MaterialPageRoute(
                    //       //         builder: (context) => VerificationPage()));
                    //     },
                    //     child: Container(
                    //       width: size.width,
                    //       height: size.height * 0.06,
                    //       decoration: // ignore: prefer_const_constructors
                    //           BoxDecoration(
                    //         color: Color(0xff0065FF),
                    //         borderRadius: BorderRadius.circular(20),
                    //       ),
                    //       child: Center(
                    //         child: Text(
                    //           'Next',
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //             fontSize: 20,
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    Visibility(
                      visible: otpCodeVisible,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _start.toString(),
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black),
                        ),
                        onPressed: () {
                          if (otpCodeVisible == false) {
                            print("verify Number function is called");
                            verifyNumber();
                          } else {
                            print("verify otp function is called");
                            verifyCode();
                          }
                          // verifyNumber();
                        },
                        child: Text(otpCodeVisible ? "Login" : "Verify"),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => ProfileInfo(),
                              ));
                        },
                        child: Text('homepage'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void verifyNumber() {
    auth.verifyPhoneNumber(
      phoneNumber: "+91${phonecontroller.text.trim()}",
      timeout: const Duration(seconds: 60),
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) => {
          print("You are logged in successfully"),
          Navigator.pushReplacement(
              context,
              CupertinoPageRoute(
                builder: (context) => ProfileInfo(),
              ))
        });
      },
      verificationFailed: (FirebaseAuthException exception) {
        print("The error is ${exception.message}");
      },
      codeSent: (String verificationID, int? resendToken) {
        setState(() {
          verificationIDReceived = verificationID;
          otpCodeVisible = true;
          startTimer();
        });
      },
      codeAutoRetrievalTimeout: (String verificationID) {},
    );
  }

  void verifyCode() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationIDReceived,
      smsCode: otpcontroller.text.trim(),
    );
    await auth.signInWithCredential(credential).then((value) {
      print('You are logged in successfully');
      Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (context) => navigationbar(),
          ));
    });
  }
}




// import 'dart:async';
//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
// import 'package:kas_goods/screens/homepage.dart';
//
// import '../components/my_button.dart';
// import '../widgets/constants.dart';
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   TextEditingController phonecontroller = TextEditingController();
//   TextEditingController otpcontroller = TextEditingController();
//
//   FirebaseAuth auth = FirebaseAuth.instance;
//
//   String verificationIDReceived = "";
//
//   bool otpCodeVisible = false;
//
//   Color getColor(Set<MaterialState> states) {
//     const Set<MaterialState> interactiveStates = <MaterialState>{
//       MaterialState.pressed,
//       MaterialState.hovered,
//       MaterialState.focused,
//     };
//     if (states.any(interactiveStates.contains)) {
//       return Colors.blue;
//     }
//     return Colors.blue;
//   }
//
//   bool value = false;
//
//   late Timer _timer;
//   int _start = 60;
//
//   void startTimer() {
//     const oneSec = Duration(seconds: 1);
//     _timer = Timer.periodic(
//       oneSec,
//           (Timer timer) {
//         if (_start == 0) {
//           setState(() {
//             timer.cancel();
//           });
//         } else {
//           setState(() {
//             _start--;
//           });
//         }
//       },
//     );
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _timer.cancel();
//     super.dispose();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//
//
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           SizedBox(
//             height: 180,
//             width: size.width,
//             child: Stack(
//               children: [
//
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 32),
//                   child: Column(
//                     children: [
//                       SizedBox(height: size.height * 0.06),
//                       MyAppbar(),
//                       SizedBox(height: size.height * 0.04),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 32.0),
//             child: Form(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Center(
//                     child: Text(
//                       appName,
//                       style: TextStyle(
//                         fontSize: 45,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.grey.shade700,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: size.height*0.1,),
//                   const Text(
//                     "Phone Number",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   SizedBox(height: size.height*0.01,),
//                   IntlPhoneField(
//                     decoration: kPhoneInputDec,
//                     initialCountryCode: 'IN',
//                     onChanged: (phone) {},
//                   ),
//                   SizedBox(height: size.height*0.03,),
//                   MyButton(
//                     text: "Request OTP",
//                     backColor: Colors.black,
//                     onTap: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (context) => HomePage(),
//                         ),
//                       );
//                     },
//                   ),
//                   SizedBox(height: size.height*0.3,)
//                 ],
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }
//
//
//
// class MyAppbar extends StatelessWidget {
//   const MyAppbar({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: const [
//             Text(
//               "Login Account",
//               style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.w600,
//                   color: Colors.black),
//             ),
//             SizedBox(height: 10),
//             Text(
//               "Hello, welcome back",
//               style: TextStyle(fontSize: 16, color: Colors.black),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
