import 'package:flutter/material.dart';

class mylogin extends StatefulWidget {
  const mylogin({Key? key}) : super(key: key);

  @override
  State<mylogin> createState() => _myloginState();
}

class _myloginState extends State<mylogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('asset/login.png',),fit: BoxFit.cover   //image fit the mobile screeen
        ),

      ),
      child: Scaffold(
          ///scaffold is default color white
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35,top: 110),
              child: Text(
                'Wellcome \n back',
                style: TextStyle(
                  color: Colors.white,fontSize: 33
                ),
              ),
            ),
            SingleChildScrollView(   ///it is used to overflow problem reduce
              child: Container(
padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5,
right: 35,
  left: 35
),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true , ///use to outer border color change
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    // TextField(),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign in', style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 27,fontWeight: FontWeight.w700
                        ),),
                        CircleAvatar(
                        radius: 30,
                          backgroundColor: Colors.blueAccent,
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){},
                            icon: Icon(
                              Icons.arrow_forward
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
