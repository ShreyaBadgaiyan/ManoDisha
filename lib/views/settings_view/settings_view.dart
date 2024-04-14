import 'package:emotion_tracker/consts/consts.dart';

import '../../consts/lists.dart';
class SettingsViews extends StatelessWidget {
  const SettingsViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.blueColor,
        title: AppStyles.bold(
            title: AppStrings.settings,
            color: AppColors.whiteColor,
            size: AppSizes.size18),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(child: Image.asset(AppAssets.imgSignup)),
            title: AppStyles.bold(title: "Username"),
            subtitle: AppStyles.normal(title: "user_email@gmail.com"),
          ),
          const Divider(),
          10.heightBox,
          ListView(
            shrinkWrap: true,
            children: List.generate(
                settingsList.length,
                (index) => ListTile(
                      onTap: () {},
                      leading: Icon(
                        settingsListIcon[index],
                        color: AppColors.blueColor,
                      ),
                      title: AppStyles.bold(title: settingsList[index]),
                    )),
          )
        ],
      ),
    );
  }
}
