import 'package:ecommerce_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115.0,
      width: 115.0,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.jpg'),
          ),
          Positioned(
            right: -10.0,
            bottom: 0.0,
            child: SizedBox(
              height: 46.0,
              width: 46.0,
              child: ElevatedButton(
                child: SvgPicture.asset('assets/icons/Camera Icon.svg'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  primary: const Color(0xFFF5F6F9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  side: const BorderSide(color: kWhiteColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
