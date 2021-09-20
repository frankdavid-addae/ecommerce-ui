import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF979797), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kBlackColor = Color(0xFF000000);
const kWhiteColor = Color(0xFFFFFFFF);

const kAnimationDuration = Duration(microseconds: 200);

final headerStyle = TextStyle(
  color: kBlackColor,
  fontSize: getProportionateScreenWidth(28.0),
  fontWeight: FontWeight.bold,
  height: 1.5,
);

// Form Errors
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Email address field is required";
const String kInvalidEmailError = "Please enter a valid email address";
const String kPasswordNullError = "Password field is required";
const String kShortPasswordError = "Password should be at least 8 characters";
const String kMatchPasswordError = "Passwords don't match";
const String kFirstNameNullError = "First Name field is required";
const String kLastNameNullError = "Last Name field is required";
const String kPhoneNumberNullError = "Phone number field is required";
const String kAddressNullError = "Address field is required";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: kTextColor),
  );
}
