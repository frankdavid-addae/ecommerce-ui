// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/components/custom_suffix_icon.dart';
import 'package:ecommerce_ui/components/default_button.dart';
import 'package:ecommerce_ui/components/form_error.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String? emailAddress, password, confirmPassword;

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30.0)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30.0)),
          buildConfirmPasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40.0)),
          DefaultButton(
            buttonText: 'Sign Up',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Nagivate to complete profile screen if all fields are valid
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      cursorColor: kTextColor,
      onSaved: (email) => emailAddress = email,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        emailAddress = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return '';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Enter your email address',
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Mail.svg'),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      cursorColor: kTextColor,
      obscureText: true,
      onSaved: (password) => password = password,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPasswordNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPasswordError);
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPasswordNullError);
          return '';
        } else if (value.length < 8) {
          addError(error: kShortPasswordError);
          return '';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        hintText: 'Enter your password',
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Lock.svg'),
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      cursorColor: kTextColor,
      obscureText: true,
      onSaved: (password) => password = password,
      onChanged: (value) {
        if (password == confirmPassword) {
          removeError(error: kMatchPasswordError);
        }
        confirmPassword = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return '';
        } else if (password != confirmPassword) {
          addError(error: kMatchPasswordError);
          return '';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        hintText: 'Confirm your password',
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Lock.svg'),
      ),
    );
  }
}
