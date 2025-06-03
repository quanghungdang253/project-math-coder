
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'main-app-bar-style.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String nameAppBar;
  final int indexAppBar;
const MainAppBar(
  {
    super.key , 
  required this.nameAppBar,
  required this.indexAppBar}
  );
  @override

  Widget build(BuildContext context){
    return AppBar(
        
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
        title: Text(nameAppBar, style: styled.textAppBar,),
        leading: Container(
            child:   (nameAppBar == "Trang chủ" 
                    
                     ) ? 
                    TextButton(
                        onPressed: (){
                            Scaffold.of(context).openDrawer();
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          decoration: BoxDecoration(
                       color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10)
                            )
                          ),
                               child:Icon(
                          Icons.menu,
                          size: 30,
                          color: Colors.black,                        
                      )                           
                    ,
                           
                    ) 
                    ) : 
                    TextButton(
                      onPressed: (){
                          context.pop();
                      },
                     child: Icon(
                      
                         color: Colors.black ,
                        size: 20,
                        Icons.arrow_back,
                        
                    )
                    )
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 30),
            child: Icon(Icons.search) ,
          )
               
        ],
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}