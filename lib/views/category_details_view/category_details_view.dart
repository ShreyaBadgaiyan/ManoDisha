
import 'package:velocity_x/velocity_x.dart';

import '../../consts/consts.dart';

class CategoryDetailsView extends StatelessWidget {
  const CategoryDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blueColor,
        title: AppStyles.bold(
          title: "Category Name",
          color: AppColors.whiteColor,
          size: AppSizes.size18,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 170,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: AppColors.bgDarkColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.only(right: 8),
                height: 100,
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color: const Color.fromARGB(255, 195, 195, 255),
                      child: Image.asset(
                        AppAssets.imgDoc,
                        width: 115,
                        fit: BoxFit.cover,
                      ),
                    ),
                    5.heightBox,
                    AppStyles.normal(title: "Doctor Name"),
                    VxRating(
                      normalColor: AppColors.yellowColor,
                      onRatingUpdate: (value) {},
                      maxRating: 5,
                      count: 5,
                      value: 4,
                      stepInt: true,
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
