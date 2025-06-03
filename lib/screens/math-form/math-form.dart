
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mathcode/screens/math-form/widgets/introdule-ui-style.dart';
import './data/data-btn.dart';
import '../../widgets/selection-list.dart';
import '../../layout/main-app-bar/main-app-bar.dart';
import './widgets/list-btn-ui.dart';
import '../../layout/sub-header/sub-header.dart';
import './widgets/introdule-ui.dart';
class mathForm extends StatefulWidget {
  final String ? nameClass;
  

  const mathForm({super.key, required this.nameClass});

@override
 _handleMathForm createState() => _handleMathForm();


}

class _handleMathForm extends State<mathForm>  {
 List<Map<String, dynamic>> listData = [];
String  getNamAppBar = "";
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.nameClass);
    final  name = dataListBtn.listdata.firstWhere(
      (item) => item['index'] == widget.nameClass,
        orElse: () => null,
    );
   
      
      if (name != null) {
  setState(() {
    listData = List<Map<String,dynamic>>.from(name['data']);
    getNamAppBar = name['nameAppbar'];
   
   
  });
} else {
  // Xử lý khi không tìm thấy, ví dụ để listData rỗng
  setState(() {
    listData = [];
  });
}
  }
@override

  Widget build(BuildContext context) {
    
    // TODO: implement build
      return Container(
   color: Colors.white,
        width: 400.w,
         child: Column(
              children: [
                Container(
                  child: MainAppBar(
                      nameAppBar: getNamAppBar  , 
                      indexAppBar: 0
                  ),
                ),
                Container(
                  child: SubHeader() ,
                ),

              Expanded(
                
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          child: introduleUi(nameClass: widget.nameClass),
                        ),
                        
                          Container(
                            width: 350.w,
                                child: listBtnUI(dataBtn: listData),
                         ),

                      ],
                    )
                    
                
                  )
                  
             



              )
               
              ],

          
         ),
      );
  }
}