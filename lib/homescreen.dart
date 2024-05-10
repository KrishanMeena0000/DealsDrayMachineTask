import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Categories',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: Deals',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 3: Cart',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 4: Profile',
  //     style: optionStyle,
  //   )
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Text('Thanks for watching',style: TextStyle(backgroundColor: Colors.red[100],fontSize: 20,fontWeight: FontWeight.bold),),
      appBar: AppBar(
        toolbarHeight: 70,
        titleSpacing: 0,
        title: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(234, 189, 189, 189),
              borderRadius: BorderRadius.circular(8)),
          height: 35,
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Container(
                  decoration:
                  
                      BoxDecoration(
                        borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.all(5),
                  child: Image.asset(
                    'assets/images/2nd.jpg',fit: BoxFit.contain,
                  )),
              suffixIcon: Icon(Icons.search),
            ),
          ),
          //     child: Row(children: [
          //       Image.asset('assets/images/2nd.jpg',height: 30,fit: BoxFit.cover,)
          //     ]),
        ),
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.menu,
        //     size: 28,
        //   ),
        //   onPressed: () {},
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
              size: 28,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 2,
              width: double.infinity,
              color: Colors.grey,
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 180,
                child: ListView.separated(
                    reverse: true,
                    dragStartBehavior: DragStartBehavior.start,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){},
                        child: Container(
                          height: 180,
                          // padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/mobile3.jpg',),fit: BoxFit.fill),
                          color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                          width: 280,
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 20,
                      );
                    },
                    itemCount: 5),
                    ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(
                horizontal: 40,vertical: 12
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 144, 113, 216),
                    Color.fromARGB(255, 99, 48, 240)
                  ]),
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Column(children: [
                Text(
                  'KYC Pending',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      height: 2,
                      color: Colors.white),
                ),
                Text(
                  'You need to provide required documents for your account activation.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                      color: Colors.white, fontSize: 14, wordSpacing: 1),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Click Here',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          height: 2,
                          color: Colors.white),
                    ))
              ]),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 166, 134, 255),
                        foregroundColor: Colors.white,
                        radius: 28,
                        child: Icon(
                          Icons.phone_android_rounded,
                          size: 30,
                        ),
                      ),
                      Text(
                        'Mobile',
                        style: TextStyle(fontSize: 12, height: 2.5),
                      )
                    ]),
                  ),
                  Container(
                    child: Column(children: [
                      CircleAvatar(
                        backgroundColor: Colors.green[300],
                        foregroundColor: Colors.white,
                        radius: 28,
                        child: Icon(
                          Icons.laptop,
                          size: 30,
                        ),
                      ),
                      Text(
                        'Laptop',
                        style: TextStyle(fontSize: 12, height: 2.5),
                      )
                    ]),
                  ),
                  Container(
                    child: Column(children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.pink[300],
                        foregroundColor: Colors.white,
                        child: Icon(
                          Icons.camera_alt_rounded,
                          size: 30,
                        ),
                      ),
                      Text(
                        'Camera',
                        style: TextStyle(fontSize: 12, height: 2.5),
                      )
                    ]),
                  ),
                  Container(
                    child: Column(children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.orange[400],
                        foregroundColor: Colors.white,
                        child: Icon(
                          Icons.lightbulb_outlined,
                          size: 30,
                        ),
                      ),
                      Text(
                        'LED',
                        style: TextStyle(fontSize: 12, height: 2.5),
                      )
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              height: 380,
              decoration: BoxDecoration(
                  // image: DecorationImage(image: AssetImage('assets/images/3rd.jpg',),fit: BoxFit.cover),
                  // color: Colors.cyan[300]
                  gradient: RadialGradient(colors: [
                Color.fromARGB(255, 127, 240, 255),
                Color.fromARGB(193, 58, 232, 255),
                Color.fromARGB(220, 1, 185, 209)
              ])),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('EXCLUSIVE FOR YOU',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,height: 4),),
                    SizedBox(width: 180,),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward))
                  ],
                ),
                Container(
                  height: 270,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: double.maxFinite,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(8)),
                          height: 200,
                          width: 170,
                          child: Column(children: [
                            Stack(
                              children: [
                                Container(
                                    padding: EdgeInsets.all(15),
                                    height: 220,
                                    // color: Colors.red,
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/images/mobile1.jpeg',
                                      height: 150,
                                      repeat: ImageRepeat.noRepeat,
                                      fit: BoxFit.cover,
                                    )),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(3)),
                                    margin: EdgeInsets.only(top: 32, left: 110),
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    child: Text(
                                      
                                      '32% off',
                                      
                                      style: TextStyle(
                                        
                                          fontSize: 13,
                                      ),
                                    ))
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              alignment: Alignment.centerLeft,
                              child: Text('Price',)),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              alignment: Alignment.centerLeft,
                              
                              child: Text('Redmi Note 11T'))
                          ]),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 20,
                        );
                      },
                      itemCount: 5),
                ),
              ]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){},foregroundColor: Colors.white,backgroundColor: Colors.red,
      isExtended: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      extendedPadding: EdgeInsets.all(28),
      extendedTextStyle: TextStyle(fontSize: 18),
      icon: Icon(Icons.message),
      label: Text('Chat',),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 211, 9, 9),
        unselectedItemColor: Colors.grey,
        // selectedLabelStyle: TextStyle(color: Colors.grey),
        onTap: _onItemTapped,
        // unselectedLabelStyle: TextStyle(color: Colors.grey),
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.grid_view),label: 'Categories'),
        BottomNavigationBarItem(icon: Icon(Icons.donut_large_rounded),label: 'Deals'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
      ]),
    );
  }
}
