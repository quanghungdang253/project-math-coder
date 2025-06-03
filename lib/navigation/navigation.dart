
  import 'package:go_router/go_router.dart';
  import 'package:flutter/material.dart';

  class Navigation{
    static Future<void>  navigationByIndex(BuildContext context ,int index) async{
              if(index == 0){
                // Điều hướng sau khi build hoàn tất
      WidgetsBinding.instance.addPostFrameCallback((_) {
                context.push("/");
      });
    }
      else if(index == 1){
                // Điều hướng sau khi build hoàn tất
      WidgetsBinding.instance.addPostFrameCallback((_) {
                context.push("/About");
      });
    }

      // TODO: implement build
      
      
    }
   

}

  