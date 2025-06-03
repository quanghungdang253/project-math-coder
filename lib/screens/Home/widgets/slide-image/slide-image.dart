
import 'dart:async';
import 'package:flutter/material.dart';
import './slide-image-style.dart';

class SlideImage extends StatefulWidget {
// thực hiện ghì ghì đè phương thức với override 

      @override
      _AutoSlideImage createState() => _AutoSlideImage();


}

class _AutoSlideImage extends State<SlideImage> {


// khai báo đối tượng Timer
final PageController controllers = PageController();
//+ đối tượng controller có chức năng 
// + theo dõi vị trí hiện tại trong trang 
// + chuyển đổi trang bằng code 
int _currentPage = 0; // chỉ só trang hiện tại 
late Timer time; // khởi tạo đối tượng thời gian 
final List<Map<String, dynamic>> image = [
  {
      "id": 0, "img": "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhLtvJS7ivKA6jZEoupgXQYcyMQGcCtiTQ1h_tSpK2PjwJ9MYnMEa6tvL-ED0ovTtcjreJtLIhisbBKzSLUxKC-AQd4-eRtrINd5uN-0UM-fn5Xbto5qlQO3_C0b00EopAZ8g7mjekjVLurhupUbyFm7k6AUxUagvMJf6BjukPztqcf0YVbZlvKS250/s16000-rw/lo-trinh-hoc-lap-trinh-nhung-cho-nguoi-moi-bat-dau.jpg", 
      "nameCourse" : "Khóa học lập trình nhúng ",
      "Price": "Giá: 690.000 vnđ"
  },
   {
      "id": 1, "img":   "https://service.keyframe.vn/uploads/filecloud/2020/August/27/344-615691598521424-1598521424.jpg", 
      "nameCourse" : "Khóa học lập trình Mobie ",
      "Price": " Giá: 990.000 vnđ"
  },
   {
      "id": 2, "img":  "https://zendvn.com/images/coursesOffline/eP6Vbgt8SK.jpeg", 
      "nameCourse" : "Khóa học lập trình Frontend ",
         "Price": "Giá: 690.000 vnđ"
  },
   {
      "id": 3, "img": "https://cdn-main.28tech.com.vn/media/anh-khoa-hoc/anh_dai_dien_khoa_hoc/l%E1%BA%ADp%20tr%C3%ACnh%20%20web%20backend%20nodejs.png", 
      "nameCourse" : "Khóa học lập trình Backend ",
         "Price": "Giá: 690.000 vnđ"
  }
];

// khởi tạo trang  thái bạn đầu 
@override
void initState(){
            super.initState();
            final Duration timeDuration = Duration(seconds: 3);
      time = Timer.periodic(timeDuration, (Timer time){
            if(_currentPage < image.length - 1){
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

      Widget build(BuildContext context){
          return Container(
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
            color: const Color.fromARGB(255, 222, 222, 222),
           border: Border.all(
                  color: Colors.white
          ),
            borderRadius: BorderRadius.all(Radius.circular(10))
            ),
           height:300,
           width: 400,
             child: PageView(
                    controller:controllers ,
                    children: image.map((item){
                        return ClipRRect(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)
                          ),
                            child: TextButton(
                            onPressed: (){}                   
                        ,   child:Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 196, 196, 196),                             
                          ),
                          child: Column(
                            children: [
                              ClipRRect(                               
                                borderRadius: BorderRadius.all(
                                      Radius.circular(10)
                                ),
                                child:
                                Container(
                                    height:180 ,
                                    child: Image(     
                                    fit: BoxFit.contain, // ảnh vừa với container 
                                    image: NetworkImage(item['img']),
                                 ),
                                )  
                              ),                              
                                 Container(
                                  margin: EdgeInsets.only(top: 10),
                                   child: Container(                                   
                                    child: Column(
                                      children: [
                                         Container(
                                          margin: EdgeInsets.only(right: 100),
                                                 child:  Text(item['nameCourse'], style: style.nameCourse)
                                        ),
                                          
                                           Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                             
                                                     Text(item['Price'], style: style.btnPrice,),
                                                     Container(
                                                   
                                                      decoration: BoxDecoration(
                                                            color: const Color.fromARGB(255, 226, 2, 2),
                                                         borderRadius: BorderRadius.all(
                                                            Radius.circular(10)
                                                         )
                                                      ),
                                                    
                                                      padding: EdgeInsets.all(10),
                                                        child:Text("Tham gia ngay", style: style.btnBuyNow,) ,
                                                     )                                                  
                                            ],
                                           )
                                        // Khoảng cách giữa 2 Text   
                                      ],
                                    )  
                                                                                           
                                 ),
                              )                            
                            ],
                            )
                        )),
                        );
                        
                      
                        
                     
                      
                      
                  }).toList()
             )
          );
      }
}