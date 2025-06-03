
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class BottomNavigation extends StatelessWidget {

  final int currentIndex;
  const BottomNavigation({super.key, required this.currentIndex});
    @override

    Widget build(BuildContext context){

void handleLocation(int index) {
      if(index == 0){
            context.go("/Home");
      }else if(index == 1){
          context.go("/About");
      }
}
          return WillPopScope(
              
               onWillPop: () async {
                      final String location = GoRouter.of(context).routerDelegate.currentConfiguration.uri.toString();
                      if(location != "/Home"){
                            context.go("/Home");
                            return false;
                      }
                      return true;
               },
               child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.cyanAccent, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                   borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                   )
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  ),
                  child: BottomNavigationBar(
                         currentIndex: currentIndex,
                         onTap: handleLocation,
                         type: BottomNavigationBarType.fixed,
                         backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                         selectedItemColor: const Color.fromARGB(255, 237, 0, 0),
                           unselectedLabelStyle: TextStyle(
    fontWeight: FontWeight.bold,
  ),
                         selectedLabelStyle: TextStyle(
                            fontWeight: FontWeight.w700
                      ),
                  unselectedItemColor: Colors.black,
                  items: const [
                         BottomNavigationBarItem(
                             icon: Icon(Icons.home),
                             label: "Trang chủ"
                         ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book),
                  label: "Tự học"
                ),
                BottomNavigationBarItem(
                   icon:   Icon(Icons.school),
                    label: "Ôn luyện",                                               
                   )
                ,
                 BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                      label: "Tài khoản"
                ),
            
            ]
            
         )  ,
                )
                
                
       ,
               )
               
               
               
          );
          
        
    }
}