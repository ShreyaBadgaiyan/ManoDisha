import 'package:manodisha/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';


class AppointmentDetailsView extends StatelessWidget {
  const AppointmentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.blueColor,
        title: AppStyles.bold(
            title: "Doctor Name",
            color: AppColors.whiteColor,
            size: AppSizes.size18),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppStyles.bold(title: "Select Appointment Date"),
            5.heightBox,
            AppStyles.normal(title: "Selected Date"),
            10.heightBox,
            AppStyles.bold(title: "Select Appointment Time"),
            5.heightBox,
            AppStyles.normal(title: "Selected Time"),
            10.heightBox,
            AppStyles.bold(title: "Mobile Number"),
            5.heightBox,
            AppStyles.normal(title: "Mobile Number"),
            10.heightBox,
            AppStyles.bold(title: "Full Name"),
            5.heightBox,
            AppStyles.normal(title: "Name"),
            10.heightBox,
            AppStyles.bold(title: "Message"),
            5.heightBox,
            AppStyles.normal(title: "Message"),
          ],
        ),
      ),
    );
  }
}
