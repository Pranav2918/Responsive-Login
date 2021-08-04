import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_app/colors.dart';

class HomePage extends StatelessWidget {
  final String signUpImg =
      "https://theuniqueacademy.co.in/assets/images/test.png";
  @override
  build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 846),
      builder: () => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(signUpImg), fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 52.h,
                  ),
                  Text(
                    "Sign Up to Masterminds",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: darkTextColor,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Wrap(
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: lightTextColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: purpleColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  getTextField(hint: "Full Name"),
                  SizedBox(
                    height: 16.h,
                  ),
                  getTextField(hint: "Email"),
                  SizedBox(
                    height: 16.h,
                  ),
                  getTextField(hint: "Password"),
                  SizedBox(
                    height: 16.h,
                  ),
                  getTextField(hint: "Confirm Password"),
                  SizedBox(
                    height: 16.h,
                  ),
                  submitButton('Create Account'),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      Expanded(child: Divider()),
                      SizedBox(
                        width: 16.w,
                      ),
                      Text(
                        "or sign up via",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: lightTextColor,
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(BorderSide(
                            color: borderColor,
                          )),
                          foregroundColor:
                              MaterialStateProperty.all(darkTextColor),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(vertical: 14.h)),
                          textStyle: MaterialStateProperty.all(TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ))),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset("assets/Google.png"),
                          SizedBox(width: 10.w),
                          Text("Google"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Wrap(
                    children: [
                      Text(
                        "By signing up to Masterminds you agree to our ",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: lightTextColor,
                        ),
                      ),
                      Text(
                        "terms and conditions",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: purpleColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

getTextField({required String hint}) {
  return TextField(
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        filled: true,
        fillColor: textFieldColor,
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        )),
  );
}

Widget submitButton(String status) {
  return SizedBox(
    width: double.infinity,
    child: TextButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(purpleColor),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          padding:
              MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.h)),
          textStyle: MaterialStateProperty.all(TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ))),
      child: Text(status),
    ),
  );
}
