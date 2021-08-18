import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_app/colors.dart';
import 'package:responsive_app/homepage.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 846),
      builder: () => SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 25.w, top: 55.h),
                child: Text(
                  'Welcome, Sign In',
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0),
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                margin: EdgeInsets.only(left: 27.w),
                child: Row(
                  children: <Widget>[
                    Text('No Account?', style: TextStyle(fontSize: 16.sp)),
                    SizedBox(width: 4.w),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Text('Sign Up?',
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: purpleColor,
                              fontWeight: FontWeight.w700)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35.h),
              textField('Email', context),
              textField('Password', context),
              SizedBox(height: 35.h),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 25.w),
                  child: submitButton('Sign In')),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
                child: Row(
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
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.w),
                child: SizedBox(
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
              ),
              terms()
            ],
          ),
        ),
      )),
    );
  }
}

Widget textField(String hint, context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
    child: TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.grey, width: 0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.grey, width: 0),
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          filled: true,
          fillColor: textFieldColor,
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          )),
    ),
  );
}

Widget terms() {
  return Container(
    margin: EdgeInsets.only(top: 25.h, left: 25.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
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
  );
}
