


// thiết lập để chia sẻ tên AppBat và chỉ số index 




Map<String,dynamic> locationIndex(String location){
    final Map<String,dynamic> dataLocation = {
     
        "nameLocation": "Trang chủ",
        "indexLocation": 0
    };
    if(location == "/"){
            dataLocation['nameLocation'] = "Trang chủ";
            dataLocation['indexLocation'] = 0;
    }else if(location == "/About"){
                 dataLocation['nameLocation'] = "Tự học";
            dataLocation['indexLocation'] = 1;
    }
    else if(location == "/About"){
                 dataLocation['nameLocation'] = "Ôn luyện";
            dataLocation['indexLocation'] = 2;
    }
    else if(location == "/About"){
                 dataLocation['nameLocation'] = "Tài khoản";
            dataLocation['indexLocation'] = 3;
    }else if(location == "/caculate") {
                 dataLocation['nameLocation'] = "Trang tính toán";
            dataLocation['indexLocation'] = 4;
    }

    return dataLocation;
}

// List<Map<String,dynamic>> nameAppBar = [
    
//     {
//         "id": 1,
//         "nameLocation": "",
//         "indexLocation": 1
//     },
//       {
//         "id": 2,
//         "nameLocation": "/Home",
//         "indexLocation": 2
//     },
//       {
//         "id": 3,
//         "nameLocation": "/About",
//         "indexLocation": 3
//     },
//       {
//         "id": 4,
//         "nameLocation": "",
//          "indexLocation": 4
//     },
//       {
//         "id": 5,
//         "nameLocation": "",
//         "indexLocation": 5
//     }
// ];