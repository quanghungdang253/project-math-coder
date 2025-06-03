import 'package:flutter/material.dart';

class style {
  static  const  TextStyle styleBtn = TextStyle(
                             fontFamily: 'Orbitron',        // Sử dụng font hiện đại
                   // Giãn chữ      fontSize: 22,                  // Cỡ chữ lớn
                       fontWeight: FontWeight.bold,  // Đậm
                       color: Color.fromARGB(255, 0, 0, 0),     // Màu nổi bật
                        letterSpacing: 0, 
                        fontSize: 16,
                          shadows: [
                     Shadow(
                            offset: Offset(2, 2),
                            blurRadius: 4.0,
                             color: Colors.black26,
                      )
    ]   
    );
}