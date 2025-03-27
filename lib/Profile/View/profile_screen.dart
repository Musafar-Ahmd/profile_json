import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../constants/colors.dart';
import '../ViewModel/profile_view_model.dart';
import 'Widgets/custom_row.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late ProfileViewModel _profileViewmodel = ProfileViewModel();

  @override
  void initState() {
    super.initState();
    _profileViewmodel = Provider.of<ProfileViewModel>(context, listen: false);
    _profileViewmodel.getProfilejsonData();
  }

  @override
  Widget build(BuildContext context) {
    _profileViewmodel = Provider.of<ProfileViewModel>(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            paddingHoriZontal16(ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                      height: ScreenSize.width * .06,
                    ),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _profileViewmodel.profileJsonresponse.length,
                itemBuilder: (context, index) {
                  var datas = _profileViewmodel.profileJsonresponse[index];
                  return GestureDetector(
                    onTap: () async {
                      switch (index) {
                        ///navigations will handle on here
                        case 0:
                          break;
                        case 1:
                          break;
                        case 2:
                          break;
                        case 3:
                          break;
                        case 4:
                          break;
                        case 5:
                          break;
                        case 6:
                          break;
                        case 7:
                          break;
                        case 8:
                          break;
                      }
                    },
                    child: CustomRowProfile(
                        image: datas.image ?? "", title: datas.title ?? ""),
                  );
                }))
          ],
        ),
      ),
    );
  }
}

paddingHoriZontal16(Widget widget){
  return Padding(padding: EdgeInsets.symmetric(horizontal:16),
    child: widget,
  );
}