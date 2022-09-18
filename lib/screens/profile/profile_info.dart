// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../components/my_button.dart';
import '../../components/text_field.dart';
import '../../components/validators.dart';
import '../../widgets/bottomnavigationbar.dart';
import '../../widgets/constants.dart';
import '../home.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  final GlobalKey<FormState> _formFieldKey = GlobalKey();

  TextEditingController usernameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController occupationController = TextEditingController();
  TextEditingController qualificationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = getSize(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Enter your details",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Form(
            key: _formFieldKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.03),
                Text(
                  "We just need some more information about you.",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: size.height * 0.05),
                MyTextField(
                  hintText: "Username*",
                  icon: Icons.person,
                  controller: usernameController,
                  validator: myValidator(requiredField: "Username"),
                  textInputType: TextInputType.name,
                ),
                MyTextField(
                  hintText: "Surname*",
                  icon: Icons.person,
                  controller: surnameController,
                  validator: myValidator(requiredField: "Surname"),
                  textInputType: TextInputType.name,
                ),
                MyTextField(
                  hintText: "Email*",
                  icon: Icons.email,
                  controller: emailController,
                  validator: emailValidator,
                  textInputType: TextInputType.emailAddress,
                ),
                // MyTextField(
                //   hintText: "Qualification",
                //   icon: Icons.school,
                //   controller: qualificationController,
                //   textInputType: TextInputType.name,
                //   textInputAction: TextInputAction.done,
                //   validator: (value) => null,
                // ),
                // MyTextField(
                //   hintText: "Occupation",
                //   icon: Icons.work_history_outlined,
                //   controller: occupationController,
                //   textInputType: TextInputType.name,
                //   validator: (value) => null,
                // ),
                SizedBox(height: size.height * 0.03),
                MyButton(
                  text: "Submit",
                  backColor: Colors.black,
                  onTap: () {
                    if (_formFieldKey.currentState!.validate()) {}
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => navigationbar(),
                      ),
                    );
                  },
                ),
                SizedBox(height: size.height * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
