import 'package:bank_app_ui/colors.dart';
import 'package:bank_app_ui/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BACK_GROUND_COLOR,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              height: 125,
              child: Image.asset(
                "images/logo.png",
              ),
            ),
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 126,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: Text(
                      "Email Address",
                      style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  ),
                  CustomTextField(
                    label: "Email",
                    prefixIcon: Icons.email,
                  ),
                ],
              ),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(25))),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 126,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: Text(
                      "Password",
                      style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  ),
                  CustomTextField(
                    label: "Password",
                    prefixIcon: Icons.lock,
                    suffixIcon: Icons.visibility,
                  ),
                ],
              ),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(25))),
            ),
            CustomButton(
              label: "Login",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            Padding(
              padding: EdgeInsets.only(left: 28, right: 28),
              child: Row(
                children: [
                  Text(
                    "SignUp",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Forget Password ?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData prefixIcon;
  final IconData suffixIcon;
  CustomTextField({this.label, this.prefixIcon, this.suffixIcon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon),
            filled: true,
            isDense: true,
            fillColor: Color(0xFFE4E4E4),
            hintText: label,
            suffixIcon: Icon(suffixIcon),
            hintStyle: TextStyle(
              fontSize: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            )),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String label;
  CustomButton({this.label, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.BUTTON_COLOR,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
              child: Text(
            label,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          )),
        ));
  }
}

// now to avoid such type of error we will wrap our main column in singleChildScrollView
