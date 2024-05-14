import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:dekhlo/utils/routes/routes_controller.dart';
import 'package:dekhlo/views/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // Set design size based on your project needs (e.g., 360x640)
      designSize: Size(360, 640),
      builder: (BuildContext context,child) => GetMaterialApp(
        theme: ThemeData(
          useMaterial3: false,
          primaryColor: Colors.white, // Set primary color to white
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white, // Set app bar background color to white
          ),
          scaffoldBackgroundColor: Colors.white, // Set scaffold background color to white
          // Set accent color to black
        ),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: const Login(),
        //home: const HomeBuyer(),
        getPages: AppPages.pages,
      ),
    );
  }
}
