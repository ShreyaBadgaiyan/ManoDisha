import 'package:get/get.dart';

import '../../consts/consts.dart';
import '../../consts/lists.dart';
import '../category_details_view/category_details_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.blueColor,
        title: AppStyles.bold(
          title: AppStrings.category,
          size: AppSizes.size18,
          color: AppColors.whiteColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              mainAxisExtent: 200,
            ),
            itemCount: iconsList.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Get.to(() => const CategoryDetailsView());
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFFC9D8EF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          iconsList[index],
                          width: 80,
                        ),
                      ),
                      const Divider(
                        color: Colors.white,
                      ),
                      20.heightBox,
                      AppStyles.bold(
                        title: iconsTitleList[index],
                        color: AppColors.textColor,
                        size: AppSizes.size16,
                      ),
                      10.heightBox,
                      AppStyles.normal(
                        title: "13 specialists",
                        color: AppColors.textColor.withOpacity(0.5),
                        size: AppSizes.size12,
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
