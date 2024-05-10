import 'package:flutter/material.dart';
import 'package:task_deals_dray/email.dart';
import 'package:task_deals_dray/otp.dart';

class PhoneNumber extends StatefulWidget{
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new),onPressed: () => Navigator.pop(context),),
        toolbarHeight: 70,
        // backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
            width: 250,
            height: 150,
            child: Image.asset('assets/images/4th.jpg',fit: BoxFit.cover,opacity: AlwaysStoppedAnimation(0.6),),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: Colors.grey[350],
            ),
            width: 200,
            height: 45,
            // padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: Container(
                  height: 45,
                  alignment: Alignment.center,
                  // width: MediaQuery.sizeOf(context).width/5,
                  decoration: BoxDecoration(color: Colors.red[600],
                  borderRadius: BorderRadius.circular(20)),
                  child: Text('Phone'),)),
                Expanded(child: Container(
                  alignment: Alignment.center,
                  child: Text('Email'),))
              ],
            ),
          ),
          // SizedBox(height: 40,),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  width: 300,
                  alignment: Alignment.centerLeft,
                  child: Text('Glad to see you!',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                Container(
                  width: 300,
                  alignment: Alignment.centerLeft,
                  child: Text('Please provide your phone number',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(211, 167, 167, 167),height: 2.2),)),
                SizedBox(height: 40,),
                Container(
                  width: 300,
                  child: TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: 'Phone'
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> OtpVerification()));
                }, child: Text('Send Code',style: TextStyle(fontSize: 18),),style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 80,vertical: 12)),
                  shape: MaterialStateProperty.all( RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12), // <-- Radius
    ),),
                  backgroundColor: MaterialStateProperty.all(Colors.red[400])))
              ],
            ),
          ),
       
         TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailCredential())),child: Text('Register New Account',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red[400]),)),
          
        ]),
      ),
      
    );
  }
}