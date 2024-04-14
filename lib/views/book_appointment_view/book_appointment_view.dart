
import '../../consts/consts.dart';
import '../../res/components/custom_textfield.dart';
import '../../res/custom_button.dart';

class BookAppointmentView extends StatelessWidget {
  const BookAppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.blueColor,
          title: AppStyles.bold(
            title: "Doctor Name",
            color: AppColors.whiteColor,
            size: AppSizes.size18,
          )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppStyles.bold(title: "Select Appointment Date"),
              5.heightBox,
              const CustomTextField(hint: "Select Day"),
              10.heightBox,
              AppStyles.bold(title: "Select Appointment Time"),
              5.heightBox,
              const CustomTextField(hint: "Select Time"),
              20.heightBox,
              AppStyles.bold(title: "Mobile Number"),
              5.heightBox,
              const CustomTextField(hint: "Enter your Mobile Number"),
              10.heightBox,
              AppStyles.bold(title: "Full Name"),
              5.heightBox,
              const CustomTextField(hint: "Enter your Name"),
              10.heightBox,
              AppStyles.bold(title: "Message"),
              5.heightBox,
              const CustomTextField(hint: "Enter your Message"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomButton(
          buttonText: "Book an Appointment",
          onTap: () {},
        ),
      ),
    );
  }
}
