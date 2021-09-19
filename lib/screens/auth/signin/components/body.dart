// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/components/custom_suffix_icon.dart';
import 'package:ecommerce_ui/components/default_button.dart';
import 'package:ecommerce_ui/components/form_error.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class SignInScreenBody extends StatelessWidget {
  const SignInScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20.0),
          ),
          child: Column(
            children: [
              Text(
                'Welcome Back',
                style: TextStyle(
                  color: kBlackColor,
                  fontSize: getProportionateScreenWidth(28.0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Sign in with your email and password \nor continue with social media',
                textAlign: TextAlign.center,
              ),
              AuthForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String? emailAddress, password;

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
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30.0)),
          DefaultButton(
            buttonText: 'Sign In',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      cursorColor: kTextColor,
      obscureText: true,
      onSaved: (password) => password = password,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPasswordNullError)) {
          setState(() {
            errors.remove(kPasswordNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPasswordError)) {
          setState(() {
            errors.remove(kShortPasswordError);
          });
        } else {
          return;
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPasswordNullError)) {
          setState(() {
            errors.add(kPasswordNullError);
          });
        } else if (value.length < 8 && !errors.contains(kShortPasswordError)) {
          setState(() {
            errors.add(kShortPasswordError);
          });
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

  TextFormField buildEmailFormField() {
    return TextFormField(
      cursorColor: kTextColor,
      onSaved: (email) => emailAddress = email,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        } else {
          return;
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
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
}
