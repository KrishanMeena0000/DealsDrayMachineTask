import 'package:flutter/material.dart';
import 'package:task_deals_dray/homescreen.dart';

class EmailCredential extends StatefulWidget{
  const EmailCredential({super.key});

  @override
  State<EmailCredential> createState() => _EmailCredentialState();
}

class _EmailCredentialState extends State<EmailCredential> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController refferlController = TextEditingController();
  bool hidePass = true;
  showPass(){
    setState(() {
      hidePass =! hidePass;
    });
  }
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
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  width: 300,
                  alignment: Alignment.centerLeft,
                  child: Text("Let's Begin!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                Text('Please enter your credentials to proceed',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,height: 2.2,color: Color.fromARGB(211, 167, 167, 167)),),
                SizedBox(height: 40,),
                Container(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Your Email'
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 300,
                  child: TextField(
                    controller: passController,
                    obscureText: hidePass,
                    decoration: InputDecoration(
                      
                      hintText: 'Create Password',
                      suffixIcon: IconButton(onPressed: () => showPass(), icon: hidePass ? Icon(Icons.remove_red_eye) : Icon(Icons.visibility_off))
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 300,
                  child: TextField(
                    controller: refferlController,
                    decoration: InputDecoration(
                      hintText: 'Refferl Code(Optional)',
                    ),
                  ),
                ),
                // SizedBox(height: 40,),
              ],
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
      },child: Icon(Icons.arrow_forward,color: Colors.white,),backgroundColor: Colors.red,),
    );
  }
}