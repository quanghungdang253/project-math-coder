import 'package:flutter/material.dart';
import './routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 825),
      builder: (context, child) =>MaterialApp.router(
      title: 'Project',
      routerConfig: go_router,  // cấu hình router
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    )
    );
    

  }
}
