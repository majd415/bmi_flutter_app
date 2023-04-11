import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIresult extends StatelessWidget {
final double result;
final bool isMale;
final int age;
   BMIresult({
required  this.result,
 required this.isMale,
required  this.age,

});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(//زر الرجوع
          onPressed: (){
            Navigator.pop(context);//يالعكس
          }
          ,
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
        title: Text("BMI Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gander : ${isMale?'Male' :'Female'} ",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),),
            Text("Result : ${result}",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),),
            Text("Age : ${age}",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),),
          ],
        ),
      ),
    );
  }
}
//layout ينحط فيا السكؤينة التي تحتوي سكريتان كتير
//models نضع فيها كل الموجيلس متل الموجودة ب يوسر سكريين
//modules كل السكرينات يلي منفصلة عن بعضها متل يلي معنا
  //home , login

//shared فيا كذا شغلة
 //.1 components
    //.1 components dart file
    //.2 constants dart file
//.2 network
//   .1local نحنا
//    .2 remote نتعامل مغ الكلاود
//styles
   //.1 colors dart file
    //.2 styles dart file