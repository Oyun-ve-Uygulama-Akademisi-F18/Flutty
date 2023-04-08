import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../constants/constants.dart';

class SignFormTextField extends StatelessWidget {
  const SignFormTextField(
      {Key? key,
      required TextEditingController name,
      required this.enableSuggestions,
      this.hintText,
      required this.isPassword,
      required this.textInputType,
      required this.validator,
      this.icon})
      : _name = name,
        super(key: key);

  final TextEditingController _name;
  final bool enableSuggestions;
  final String? hintText;
  final bool isPassword;
  final TextInputType textInputType;
  final FieldValidator validator;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: TextFormField(
            style: TextStyle(color: Constants.mainColor),
            validator: validator,
            controller: _name,
            keyboardType: textInputType,
            obscureText: isPassword,
            enableSuggestions: enableSuggestions,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: Constants.mainColor),
              ),
              prefixIcon: icon,
              isDense: true,
              constraints: const BoxConstraints(maxHeight: 70),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              hintText: hintText,
            )));
  }
}
