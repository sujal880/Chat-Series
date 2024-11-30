import 'package:chatappui/domain/constants/appcolors.dart';
import 'package:chatappui/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(CupertinoIcons.back)),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: UiHelper.CustomText(
            text: "Your Profile",
            fontsize: 18,
            context: context,
            fontweight: FontWeight.bold,
            fontfamily: "bold"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme.of(context).brightness == Brightness.dark
                ? UiHelper.CustomImage(imgurl: "darkprofile.png")
                : UiHelper.CustomImage(imgurl: "lightprofile.png"),
            SizedBox(
              height: 30,
            ),
            UiHelper.CustomTextField(
                controller: firstnameController,
                text: "First Name (Required)",
                textinputtype: TextInputType.name,
                context: context),
            SizedBox(height: 10,),
            UiHelper.CustomTextField(
                controller: lastnameController,
                text: "Last Name (Required)",
                textinputtype: TextInputType.name,
                context: context)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: UiHelper.CustomButton(buttonnname: "Save", callback: (){}),
    );
  }
}
