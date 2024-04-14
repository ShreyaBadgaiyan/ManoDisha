import 'package:get/get.dart';

import '../../consts/consts.dart';
import '../../res/components/custom_textfield.dart';
import '../../res/custom_button.dart';
import '../home_view/home.dart';
import '../signup_view/signup_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.icLogin,
                  width: 200,
                ),
                10.heightBox,
                AppStyles.bold(
                    title: AppStrings.welcomeBack, size: AppSizes.size18),
                AppStyles.bold(title: AppStrings.weAreExcited)
              ],
            ),
            20.heightBox,
            Expanded(
                child: Form(
              child: Column(
                children: [
                  CustomTextField(hint: AppStrings.email),
                  10.heightBox,
                  CustomTextField(hint: AppStrings.password),
                  10.heightBox,
                  Align(
                    alignment: Alignment.centerRight,
                    child: AppStyles.normal(title: AppStrings.forgotPassword),
                  ),
                  20.heightBox,
                  CustomButton(
                    buttonText: AppStrings.login,
                    onTap: () {
                      Get.to(() => const Home());
                    },
                  ),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppStyles.normal(title: AppStrings.dontHaveAccount),
                      8.widthBox,
                      GestureDetector(
                        onTap: () {
                          Get.to(() =>  const SignupView());
                        },
                        child: AppStyles.bold(title: AppStrings.signup),
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
