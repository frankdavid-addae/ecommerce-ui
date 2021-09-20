// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_ui/components/custom_suffix_icon.dart';
import 'package:ecommerce_ui/components/default_button.dart';
import 'package:ecommerce_ui/components/form_error.dart';
import 'package:ecommerce_ui/components/no_account_text.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreenBody extends StatelessWidget {
  const ForgotPasswordScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20.0),
          ),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              Text(
                'Forgot Password',
                style: TextStyle(
                  color: kBlackColor,
                  fontSize: getProportionateScreenWidth(28.0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Please enter your email and we will send \nyou a link to return to your account',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.1),
              ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? emailAddress;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
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
                return '';
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
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
          ),
          SizedBox(height: getProportionateScreenHeight(30.0)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight! * 0.1),
          DefaultButton(
            buttonText: 'Submit',
            onPressed: () {
              if (_formKey.currentState!.validate()) {}
            },
          ),
          SizedBox(height: SizeConfig.screenHeight! * 0.1),
          NoAccountText(),
        ],
      ),
    );
  }
}
