

import 'package:get/get.dart';

import '../../consts/consts.dart';
import '../../res/components/custom_textfield.dart';
import '../../res/custom_button.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 40),
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.imgSignup,
                  width: 200,
                ),
                10.heightBox,
                AppStyles.bold(
                    title: AppStrings.signupNow,
                    size: AppSizes.size18,
                    alignment: TextAlign.center)
              ],
            ),
            30.heightBox,
            Expanded(
                child: Form(
              child: Column(
                children: [
                  CustomTextField(hint: AppStrings.fullname),
                  10.heightBox,
                  CustomTextField(hint: AppStrings.email),
                  10.heightBox,
                  CustomTextField(hint: AppStrings.password),
                  20.heightBox,
                  CustomButton(buttonText: AppStrings.signup, onTap: () {
                  }),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppStyles.normal(title: AppStrings.alreadyHaveAccount),
                      8.widthBox,
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: AppStyles.bold(title: AppStrings.login),
                      )
                    ],
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
