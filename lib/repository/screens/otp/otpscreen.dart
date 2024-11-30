import 'package:chatappui/domain/constants/appcolors.dart';
import 'package:chatappui/repository/screens/profile/profilescreen.dart';
import 'package:chatappui/repository/screens/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white
              : Colors.black,
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.otpdarkmode
          : AppColors.otplightmode,
      borderRadius: BorderRadius.circular(7),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.otpdarkmode
              : AppColors.otplightmode),
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
                text: "Enter Code",
                fontsize: 24,
                context: context,
                fontfamily: "bold",
                fontweight: FontWeight.bold),
            SizedBox(
              height: 5,
            ),
            UiHelper.CustomText(
                text: "We have sent you an SMS with the code",
                fontsize: 14,
                context: context),
            UiHelper.CustomText(
                text: "to +62 1309 - 1710 - 1920",
                fontsize: 14,
                context: context),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Pinput(
                onCompleted: (value) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
                autofocus: true,
                controller: otpController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: TextButton(
          onPressed: () {},
          child: Text(
            "Resend OTP",
            style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.otptextdark
                    : AppColors.otptextlight),
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
