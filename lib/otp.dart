import 'package:flutter/material.dart';
import 'package:task_deals_dray/homescreen.dart';
import 'package:task_deals_dray/models/data.dart';
import 'package:task_deals_dray/splashscreen.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:http/http.dart' as http;

class OtpVerification extends StatefulWidget {
  OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  DealsDray? d;
  bool isActive = false;
  @override
  void initState() {
    super.initState();
    print('................');
    _getData();
    print('&&&&&&&&');
  }

  getInfo() async {
    var url = Uri.parse("http://devapiv3.dealsdray.com/api/v2/user/otp");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      print('@@@@@@@@');
      try {
        DealsDray dd = DealsDray.fromJson(response.body);
        return dd;
      } catch (e) {
        print("Radhe Radhe");
      }
    } else {
      print('*******${response.statusCode}');
    }
  }

  void _getData() async {
    d = await getInfo();
    setState(() {});
    // Future.delayed(const Duration(seconds: 0)).then((value) => setState(() {}));
  }

  List<TextEditingController> otpControllers =
      List.generate(4, (index) => TextEditingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
        toolbarHeight: 70,
        // backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(children: [
          Container(
              margin: EdgeInsets.only(right: 200),
              child: Image.asset(
                'assets/images/otp.jpg',
                height: 130,
              )),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.centerLeft,
              child: Text(
                'OTP Verification',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 26, height: 3),
              )),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.centerLeft,
              child: Text(
                'We have sent a unique OTP number to your mobile +917846679458',
                style: TextStyle(
                    height: 2,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(230, 158, 158, 158)),
              )),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                4,
                (index) => Container(
                    width: 45,
                    height: 50,
                    child: TextFormField(
                      controller: otpControllers[index],
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      onEditingComplete: () {
                        //        String enteredOTP = otpControllers.map((controller) => controller.text).join();
                        // // Check if entered OTP matches the generated OTP
                        // if (enteredOTP == generatedOTP) {
                        //   // Navigate to the next screen if OTP is correct
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                        // } else {
                        //   // Show error message if OTP is incorrect
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //     SnackBar(
                        //       content: Text('Incorrect OTP. Please try again.'),
                        //     ),
                        //   );
                        // }
                      },
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          counterText: '',
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(10))
                          // hintText: '0',
                          ),
                      onChanged: (value) {
                        if (value.length == 1 && index < 3) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 45,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TimerCountdown(
                  onEnd: () {
                    setState(() {
                      isActive = true;
                    });
                  },
                  endTime: DateTime.now().add(Duration(
                    minutes: 02,
                    seconds: 00,
                  )),
                  format: CountDownTimerFormat.minutesSeconds,
                  enableDescriptions: false,
                  timeTextStyle: TextStyle(fontSize: 19),
                ),
                TextButton(onPressed: () {
                  if(isActive){
                    
                  }
                }, child: Text('SEND AGAIN',style: TextStyle(color: isActive ? null : Colors.grey[500]),)),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
