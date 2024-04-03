import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bgImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Gap(80.h),
            Image.asset(loginImage, scale: 1.5.sp),
            Gap(10.h),
            Text(tAppName,style: GoogleFonts.poppins(fontSize:18.sp,color:tPrimaryColor,fontWeight:FontWeight.w700)),
            Text('Revolutionizing Trade Finance',style: GoogleFonts.poppins(fontSize:8.5.sp,color:tPrimaryColor,fontWeight:FontWeight.w500)),
            Gap(45.h),
            Text('Enter Verification Code',style: GoogleFonts.poppins(fontSize:12.sp,color:tPrimaryColor,fontWeight:FontWeight.w500)),
            Gap(10.h),
            OtpTextField(
              showFieldAsBox: true,
              mainAxisAlignment: MainAxisAlignment.center,
              numberOfFields: 6,
              textStyle: TextStyle(color: tPrimaryColor),
              fillColor: Colors.white.withOpacity(0.5),
              borderColor:tPrimaryColor,
              filled: true,
              //obscureText:true,
              keyboardType: TextInputType.number,
              onSubmit: (code) async {
                print(code);
              },
            ),
            Gap(10.h),
            RichText(
              text: TextSpan(
                style: GoogleFonts.poppins(fontSize: 14.sp),
                children: <TextSpan>[
                  TextSpan(text: 'Didn’t receive the OTP? ',style: GoogleFonts.poppins(color:tPrimaryColor,fontSize: 8.sp)),
                  TextSpan(text: 'Resend OTP',style: GoogleFonts.poppins(color: tPrimaryColor,fontSize: 8.sp,fontWeight:FontWeight.w700))
                ],
              ),
            ),
            Gap(30.h),
            Center(
              child: SizedBox(
                  width: 165.w,
                  child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: tPrimaryColor2, // Set the primary color to blue
                      ),child: Text('Verify',style: GoogleFonts.poppins(fontSize:10.sp,color:tWhiteColor),))),
            )
          ],
        ),
      ),
    )
    );
  }
}
