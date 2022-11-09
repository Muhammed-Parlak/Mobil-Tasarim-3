import 'package:flutter/material.dart';
import 'package:flutter_application_2_tasarim_3/social_login_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _checkbox = false;
  bool _checkboxListTile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            //arkaplan fotoğrafları
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 255,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/up_background.png",
                              ),
                              fit: BoxFit.fill),
                        ),
                      ),
                      //logo
                      Positioned(
                        top: 60,
                        left: 20,
                        //logo
                        child: Container(
                          width: 150,
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/logo.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              //iki foto üst ve alt tarafa spacebetween ile
              Container(
                //piksel kayıyor height artınca
                width: MediaQuery.of(context).size.width,
                height: 540,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/gray_background.png",
                      ),
                      fit: BoxFit.fill),
                ),
              ),
            ],
          ),
          //stack üst ekran
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //Card widget Login için
                Padding(
                  padding:
                      const EdgeInsets.only(top: 250.0, right: 20, left: 20),
                  child: Card(
                    color: Colors.white,
                    elevation: 20,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        height: 210,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 29),
                              textAlign: TextAlign.left,
                            ),
                            //input textfield Username
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(vertical: 5),
                              child: const TextField(
                                decoration:
                                    InputDecoration(labelText: "Username"),
                              ),
                            ),
                            //İnput Textfield password
                            Container(
                              child: const TextField(
                                decoration:
                                    InputDecoration(labelText: "Password"),
                                obscureText: true,
                              ),
                            ),
                            //forgot password
                            TextButton(
                              onPressed: () {},
                              child: const Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "Forgot password?",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blue),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //login altı içerik
                //Yuvarlak Butonlar
                //remember me / signup
                Padding(
                  padding: const EdgeInsets.all(40),
                  // //remember me / signup Row
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      /********************* */
                      Checkbox(
                        value: _checkbox,
                        shape: CircleBorder(),
                        onChanged: (value) {
                          setState(() {
                            _checkbox = !_checkbox;
                          });
                        },
                      ),
                      Text(
                        "Remember me",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 15),
                      ),

                      /******************** */

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(140, 50),
                          padding: EdgeInsets.all(10),
                          textStyle: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          backgroundColor:
                              const Color.fromRGBO(65, 105, 2252, 80),
                          elevation: 10,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text("SIGNUP"),
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    // Divider(
                    //   height: 5,
                    //   color: Colors.black,
                    //   indent: 120,
                    //   endIndent: 130,
                    //   thickness: 3,
                    // ),
                    // social text yanlarına divider gelecek
                    Text(
                      "-----Social Login-----",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
                //social buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialLoginButton(imageSocialPath: "facebook_logo.png"),
                    SocialLoginButton(imageSocialPath: "google_logo.png"),
                    SocialLoginButton(imageSocialPath: "twitter_logo.png"),
                    SocialLoginButton(imageSocialPath: "linkedIn_logo.png"),
                  ],
                ),
                //new user? Sign up
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "New user",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Signup?",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                // IconButton(
                //   icon: Image.asset('assets/images/avize3.png'),
                //   iconSize: 50,
                //   onPressed: () {},
                // ),
                Divider(
                  height: 5,
                  color: Colors.black,
                  indent: 120,
                  endIndent: 130,
                  thickness: 3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
