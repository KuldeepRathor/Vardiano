// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/constants.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.controller,
    required this.validator,
    this.textInputAction = TextInputAction.next,
    required this.textInputType,
    this.maxLines = 1,
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final FormFieldValidator? validator;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final int maxLines;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.hintText,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 10),
          Stack(
            children: [
              Container(
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade100,
                  border:
                  Border.all(color: Colors.grey.shade700.withOpacity(0.15)),
                ),
              ),
              TextFormField(
                minLines: 1,
                maxLines: widget.maxLines,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                decoration: kTextFormFieldAuthDec.copyWith(
                  hintText: widget.hintText,
                  prefixIcon: Icon(
                    widget.icon,
                    color: Colors.black,
                  ),
                  errorStyle: TextStyle(color: Colors.red),
                ),
                keyboardType: widget.textInputType,
                textInputAction: widget.textInputAction,
                cursorColor: Colorsblack,
                controller: widget.controller,
                onSaved: (value) {
                  widget.controller.value =
                      widget.controller.value.copyWith(text: value);
                },
                validator: widget.validator,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
