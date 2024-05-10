import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:task_deals_dray/homescreen.dart';
import 'package:task_deals_dray/models/data.dart';
import 'package:task_deals_dray/phone.dart';



class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
  @override
    void initState() {
    super.initState();
    Timer(Duration(milliseconds: 1400), () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: ((context) => PhoneNumber()),
            ),
          );
        });
    _getData();
  }
  Future getInfo() async {
  var url = Uri.parse("http://devapiv3.dealsdray.com/api/v2/user/device/add");
  var response = await http.get(url);

 if(response.statusCode == 200){
  try {
DealsDray dd = DealsDray.fromJson(response.body);
print(response.statusCode);
return dd;
  }catch(e){
print("Radhe Radhe");
  }
 }else{
  print(response.statusCode);
 }
}
DealsDray? d;
   void _getData() async {
    d = await getInfo();
  }
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..forward();

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOut,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaleTransition(
        scale: _animation,
        child: Container(
            child:  Image.asset('assets/images/1st.png',opacity: CurvedAnimation(curve: Curves.easeOut, parent: _animation),),
            
        ),
      ),
    );
  }
}
