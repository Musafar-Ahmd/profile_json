import 'package:flutter/material.dart';
import 'package:profile_json/Profile/View/profile_screen.dart';
import 'package:provider/provider.dart';

import 'Profile/View/Widgets/custom_row.dart';
import 'Profile/ViewModel/profile_view_model.dart';
import 'constants/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.width = MediaQuery.of(context).size.width;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProfileViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProfileScreen(),
      ),
    );
  }
}

