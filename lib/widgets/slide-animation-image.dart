import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class slideAnimationImage extends StatefulWidget {
      final  VoidCallback onTap;
        final bool direction;
        final double padding;
        final double margin;
        final double borderRadius;
        final Color color;
        final double height;
        final double width;
        final double widthImage;
            final double heightImage;
        final  Color backgroundColor;
    
        final  List<Map<String, dynamic>> image;
        final bool customsloadImg;



        const slideAnimationImage({
              Key?key,
              required this.image,
              required this.onTap,
         this.widthImage = 100,
         this.heightImage = 100,
              this.height = 0,
              this.width = 100,
              this.backgroundColor = Colors.red,
              this.color = Colors.yellow,
              this.padding = 0,
              this.margin = 0,
              this.borderRadius = 10,
              this.direction = false,
              this.customsloadImg = true

        }) : super(key: key);

        @override
        
        _CustomSlide createState() => _CustomSlide();
 
}
class _CustomSlide extends State<slideAnimationImage> {
final PageController controllers = PageController();
int _currentPage = 0; // chỉ só trang hiện tại 
late Timer time; // khởi tạo đối tượng thời gian 
@override
void initState(){
            super.initState();
            final Duration timeDuration = Duration(seconds: 3);
      time = Timer.periodic(timeDuration, (Timer time){
            if(_currentPage < widget.image.length - 1){
                        _currentPage++;
            }else {
                   _currentPage = 0;
            }
             controllers.animateToPage(
      _currentPage
      , duration: Duration(milliseconds: 500),
       curve: Curves.linear
);
});
// ta tiến hành tạo hiểu ứng animation 

}
// thực hiện ghì đè phương thức từ lớp cha
@override
void dispose(){
      time.cancel(); // hủy thời gian tránh rò rỉ bộ nhớ 
      controllers.dispose();
      super.dispose();
}

        Widget build(BuildContext context) {

              return Container(
                    margin: EdgeInsets.only(bottom: 10),    
                    width: widget.width,
                    height: widget.height,            
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                          Radius.circular(widget.borderRadius)
                    ),
                    color: widget.color
                ),
                child: PageView(
                  controller: controllers,
                  children:widget.image.map((item){
                         return ClipRRect(
                                borderRadius: BorderRadius.all(
                              Radius.circular(10)
                          ),
                          child: TextButton(
                              onPressed: (){},
                          child: Container(
                            
                              child: Flex(
                                          direction: widget.direction == true ? 
                                          Axis.horizontal : Axis.vertical,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          spacing: 30.w,
                                          children: [
                                             Container(
                                                height: widget.heightImage.w,
                                                width: widget.widthImage.w,
                                                child: ClipRRect(
                                                      borderRadius: BorderRadius.all(
                                                                  Radius.circular(widget.borderRadius)
                                                      ),
                                                      child: widget.customsloadImg ? 
                                                       Image.network(
                                                            item['img'],
                                                            fit: BoxFit.contain,
                                                      ) : Image.asset(
                                                              item['img'],
                                                              fit: BoxFit.cover,
                                                          ),
                                                )                                                                              
                                            ),
                                            Container(
                                                child: widget.direction == true ?
                                                Container(
                                                 width: 140.w,
                                                 child:Text(item['text'], 
                                                      style : GoogleFonts.poppins(
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w900,
                                                            color: Colors.black
                                                      
                                                      )
                                                     
                                                 ) ,
                                                )
                                                : null,
                                            )
                                          ],

                              )
                              
                          )
                              
                         ),
                         );     
                  }).toList(),
                )
                
              );
        }
}