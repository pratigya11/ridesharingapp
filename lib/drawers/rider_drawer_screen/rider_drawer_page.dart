
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ride_sharing_app/utils/Colors.dart';

class HomeDrawerPage extends StatefulWidget {

  @override
  _HomeDrawerPageState createState() => _HomeDrawerPageState();
}

class _HomeDrawerPageState extends State<HomeDrawerPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child:ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          child: Icon(Icons.arrow_back_ios, size: 14,),
                          onTap:(){ Navigator.pop(context);}
                      ),
                      Text("Menu",style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87)),
                      Text("")
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12),
                      height: 100,
                      child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset("assets/images/man.png",
                                        alignment: Alignment.center,
                                        width: 55,
                                        height:55,
                                      )
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 10.0,
                              top: 54.0,
                              child: GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Icon(Icons.add,color: Colors.black, size: 22.0,),
                                ),
                                onTap: (){
                                },
                              ),
                            ),
                          ]

                      ),
                    ),
                    SizedBox(width: 15.0),
                    Container(
                      margin: EdgeInsets.only(bottom: 24),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Text('Deepankar Khanal',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87)),

                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(Icons.keyboard_arrow_down, size: 18,),
                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text('+977 9851041853',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black54)),
                          SizedBox(height: 3,),
                          Text('View Profile',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400,  color: Colors.black54)),

                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(height: 1.0, color: Colors.grey[200]),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Become a rider", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),),
                            SizedBox(height: 5,),
                            Text("Edit your profile",
                              style: TextStyle(color: Colors.grey, fontSize: 14, ),)
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, size: 13,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(height: 1.0, color: Colors.grey[200]),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Promos", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),),
                            SizedBox(height: 5,),
                            Text("View all our promo codes",
                              style: TextStyle(color: Colors.grey, fontSize: 14, ),)
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, size: 13,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(height: 1.0, color: Colors.grey[200]),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Ridewell for Business", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),),
                            SizedBox(height: 5,),
                            Text("change your Wallet PIN",
                              style: TextStyle(color: Colors.grey, fontSize: 14, ),)
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, size: 13,),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 200,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(height: 1.0, color: Colors.grey[200]),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(children: <Widget>[
                    Icon(Icons.security_outlined,size: 14, color: Colors.black45),
                    SizedBox(width: 15.0),
                    Text("Permissions", style: TextStyle(color: Colors.black45, fontSize: 15, fontWeight: FontWeight.w600),)
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(children: <Widget>[
                    Icon(Icons.library_books_outlined,size: 14, color: Colors.black45),
                    SizedBox(width: 15.0),
                    Text("Terms & Conditions", style: TextStyle(color: Colors.black45, fontSize: 15, fontWeight: FontWeight.w600),)
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(children: <Widget>[
                    Icon(Icons.headset_mic_rounded,size: 14, color: Colors.black45),
                    SizedBox(width: 15.0),
                    Text("Support", style: TextStyle(color: Colors.black45, fontSize: 15, fontWeight: FontWeight.w600),)
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(children: <Widget>[
                    Icon(Icons.login_outlined,size: 14, color: Colors.black45),
                    SizedBox(width: 15.0),
                    Text("Logout", style: TextStyle(color: Colors.black45, fontSize: 15, fontWeight: FontWeight.w600),)
                  ]),
                ),
              ],

            ),

          ],
        )
    );

  }
}
