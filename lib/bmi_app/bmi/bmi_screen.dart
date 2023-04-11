
import 'dart:math';

import 'package:flutter/material.dart';

import '../bmi_result/bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
//Color? color =  Colors.grey[400];// لتغيير اللون عند الضغط

 bool isMale= true;
 double hieght=120.0;// for slider
 int weight=40;
 int age=20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(

                children: [
                  Expanded(
                    child: GestureDetector(//الكنتينر ما ينفع ينداس علية لذلك نرابو بودجت ينفع ينداس عليها
                   onTap: (){//for any events

                      setState(() {
                        // color=Colors.blue;
                        isMale=true;
                      });
                   },

                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                         Image(//لاضافة الصورة يعد الاضافة الئ ملق ببسبيس
                           image: AssetImage("assets/images/female.png"),
                         height: 90.0,
                         width: 90.0,),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text("MALE",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),),

                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:isMale?Colors.blue : Colors.grey[400],//تغيير الزر بتائا علئ حالة الاخر او المتغير
                         // color,//تغيير اللون

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;

                        });
                      },
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(//لاضافة الصورة يعد الاضافة الئ ملق ببسبيس
                              image: AssetImage("assets/images/male.png"),
                              height: 90.0,
                              width: 90.0,),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text("FEMALE",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:!isMale?Colors.blue: Colors.grey[400],//الاخر

                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HEIGHT",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,//لكي نجعل ال سم نتحكم فقيا و مشان ما تنزل للاخير بل تتحاذا مع 180
                      textBaseline: TextBaseline.alphabetic,//يجب استخدامها معها لمي تعمل
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(

                          "${hieght.round()}",//here for show value
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("CM",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                          ),),
                      ],
                    ),
                    Slider(
                        value: hieght,//here
                        max: 220.0,
                        min: 80.0,
                        onChanged: (value){//قيمة التحريك

                       setState(() {

                         hieght=value;//for show slider
                       });

                        },)
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
              mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("weight",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          Text("${weight}",//الوزن
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(//زرار مدور
                                heroTag:"weight--",//للتفريق بينهم للفلوت اكشن بوتون بسبب وجود كمية كيرة من نفس النوع
                                onPressed:(){

                                  setState(() {

                                    weight--;//ناقص
                                  });
                                },
                                mini: true,//مشان يظغر شوي
                              child: Icon(
                                Icons.remove,
                              ),),
                              FloatingActionButton(//زرار مدور
                                heroTag:"weight++",//للتفريق بينهم للفلوت اكشن بوتون بسبب وجود كمية كيرة من نفس النوع

                                onPressed:(){
                                setState(() {
                                  weight++;//add

                                });
                                },
                                mini: true,//مشان يظغر شوي
                                child: Icon(
                                  Icons.add,
                                ),),
                            ],
                          ),
                        ],
                      ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey[400],)
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("AGE",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),),
                            Text("${age}",
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                FloatingActionButton(//زرار مدور
                                  heroTag:"age--",//للتفريق بينهم للفلوت اكشن بوتون بسبب وجود كمية كيرة من نفس النوع

                                  onPressed:(){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  mini: true,//مشان يظغر شوي
                                  child: Icon(
                                    Icons.remove,
                                  ),),
                                FloatingActionButton(//زرار مدور
                                  heroTag:"age--",//للتفريق بينهم للفلوت اكشن بوتون بسبب وجود كمية كيرة من نفس النوع

                                  onPressed:(){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,//مشان يظغر شوي
                                  child: Icon(
                                    Icons.add,
                                  ),),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[400],)
                    ),
                  ),

                ],
              ),
            ),
          ),


          Container(
            width: double.infinity,
            color: Colors.blue,
            height: 50.0,
            child: MaterialButton(onPressed: (){

              double  result=weight/pow(hieght/100, 2);//العملية الحسابية
              print(result.round());
            Navigator.push(context,//يعود دائما علئ المكان يلي انا فية ,
            MaterialPageRoute(//المكان يلي رح روحو
              builder: (context)=>BMIresult(result: result,isMale: isMale,age: age,),//الشاشة يلي رح روحا عليها بالانتباة لنقل القيم معنا الى السكرينة التانية نحن هنا نستدغي السكرينة ضمن هي السكرينة لذلك يمكن ان نستدعي الباتي في سكرينة البعد و ناخذ القيم
            )
             );
            },
            child: Text("CALCULATE",
            style: TextStyle(
              color: Colors.white,
            ),),),
          ),
        ],
      ),
    );
  }
}
//اي تغيير في الببسبيس نعمل يي غيت
//لعملية التنظيم نعمل مجلد اسيست وتنضع ضمنة كل الملفات الخارحية