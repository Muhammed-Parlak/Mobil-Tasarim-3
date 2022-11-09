import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({super.key, required this.imageSocialPath});
  final String imageSocialPath;
  @override
  Widget build(BuildContext context) {
    //gesture detector
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40,
        width: 40,
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 30),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
              image: AssetImage(
                "assets/images/$imageSocialPath",
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
