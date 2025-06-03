import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../screens/Home/bottom-navigation/bottom-navigation.dart';
import '../../untils/custom-name-app-bar.dart';
import '../main-app-bar/main-app-bar.dart';

class mainLayout extends StatelessWidget {
  final Widget child; // thực hiện khai báo một thuộc tính 
  const mainLayout({super.key, required this.child});
      @override

      Widget build(BuildContext context) {
            final String location = GoRouter.of(context).routerDelegate.currentConfiguration.uri.toString();
            Map<String,dynamic> nameAppBar = locationIndex(location);
            int index = 0;
            String preLocation = "/";
            index =  nameAppBar['indexLocation'];
            preLocation = nameAppBar['nameLocation'];
                  return Scaffold(
                        appBar: MainAppBar(
                              nameAppBar:  preLocation,
                              indexAppBar: index
                        ),
                        body: child ,
                        bottomNavigationBar: BottomNavigation(currentIndex: index),
                        drawer: Drawer(
                            
                        ),
                  );
      }

}


    



