import 'package:get/get.dart';

import '../../consts/consts.dart';
import '../../consts/lists.dart';
import '../../res/components/custom_textfield.dart';
import '../doctor_profile_view/doctor-profile_view.dart';
// Import Get package



class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color(0xff070f28),
          title: AppStyles.bold(
              title: "${AppStrings.welcome} User",
              color: AppColors.whiteColor,
              size: AppSizes.size18),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: const EdgeInsets.all(14),
              color: const Color(0xFFC9D8EF),
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      hint: AppStrings.search,
                      textColor: Colors.black,
                      borderColor: Colors.black,
                    ),
                  ),
                  10.widthBox,
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black
                      ))
                ],
              ),
            ),
            20.heightBox,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.blueColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.all(12),
                            margin: const EdgeInsets.only(right: 8),
                            child: Column(
                              children: [
                                Image.asset(
                                  iconsList[index],
                                  width: 30,
                                ),
                                5.heightBox,
                                AppStyles.normal(
                                    title: iconsTitleList[index],
                                    color: AppColors.whiteColor),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  10.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: AppStyles.bold(
                        title: "Popular Doctors",
                        color: AppColors.blueColor,
                        size: AppSizes.size18),
                  ),
                  10.heightBox,
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (buildContext, int index) {
                        return GestureDetector(
                          onTap: () {
                            Get.to(() => const DoctorProfileView());
                          },
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: AppColors.bgDarkColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            margin: const EdgeInsets.only(right: 8),
                            height: 150,
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  width: 150,
                                  alignment: Alignment.center,
                                  color: const Color(0xFFC9D8EF),
                                  child: Image.asset(
                                    AppAssets.imgDoc,
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                5.heightBox,
                                AppStyles.normal(title: "Doctor Name"),
                                5.heightBox,
                                AppStyles.normal(
                                    title: "Category", color: Colors.black54),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  5.heightBox,
                  GestureDetector(
                    onTap: () {},
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: AppStyles.normal(
                          title: "View All",
                          color: AppColors.blueColor,
                        )),
                  ),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        4,
                        (index) => Container(
                              decoration: BoxDecoration(
                                color: AppColors.blueColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  Image.asset(
                                    AppAssets.icBody,
                                    width: 25,
                                    // color: AppColors.whiteColor,
                                  ),
                                  5.heightBox,
                                  AppStyles.normal(
                                      title: "Lab Test",
                                      color: AppColors.whiteColor),
                                ],
                              ),
                            )),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
