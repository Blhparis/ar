import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:video_player/video_player.dart';
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'package:dio/dio.dart';

//Declaring global variables
List<CameraDescription>? cameras;
final GlobalKey<ScaffoldState> _scaffoldstate = GlobalKey<ScaffoldState>();

//Main function
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}

//Main app class
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstScreen(),
    );
  }
}

//First Screen app
class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);


  @override
  Widget build (BuildContext context) {
    return Container(
        //Background colour
        decoration: const BoxDecoration(
          color: Color(0xFFFCF8F1),
        ),
        child: Column(
          children: <Widget>[

            Container(
              margin: const EdgeInsets.only(top:70.0),
              child: Image.asset('assets/images/FirstPageLogo.png')
            ),

            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Beauty Lives Here',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, color: Colors.black, fontSize: 42, decoration: TextDecoration.none)
              )
            ),

            Container(
                padding: const EdgeInsets.only(top:10.0, left: 75.0, right: 75.0),
                child: const Text(
                    'Discover our latest beauty trends & product releases',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'calibri', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, color: Colors.black, fontSize: 18, decoration: TextDecoration.none)
                )
            ),

            //Next Button
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()),
                      );
                    },
                    child: const Text('Next', style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}

//Second screen class
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/images/SecondPageImage.png'),
          fit: BoxFit.fitWidth,
        ),
      ),

        child: Container(
          margin: const EdgeInsets.only(top: 495.0),
          decoration: const BoxDecoration(
            color: Color(0x77EADACF)
          ),
          child: Column(
            children: <Widget>[
              Container (
                margin: const EdgeInsets.only(top:40.0),
                child: const Text(
                  'Exclusive Offers',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, color: Colors.black, fontSize: 42, decoration: TextDecoration.none)
                ),
              ),

              Container(
                  padding: const EdgeInsets.only(top:20.0, left: 75.0, right: 75.0),
                  child: const Text(
                      'Get access to weekly exclusive product offers & deals',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'calibri', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, color: Colors.black, fontSize: 18, decoration: TextDecoration.none)
                  )
              ),

              //Next button
              Container(
                    padding: const EdgeInsets.only(top:30.0, left:300.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ThirdScreen()),
                        );
                      },
                      child: const Text('Next', style: TextStyle(color: Colors.black)),
                    ),
                  ),
            ],
          ),
        ),
      );
  }
}

//Third Screen class
class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(0.0),
        decoration: const BoxDecoration(
          color: Color(0xFFFBF7F2),
          image: DecorationImage(
            image: AssetImage('assets/images/ThirdPageImage.png'),
            fit: BoxFit.fitHeight,
            alignment: Alignment.topCenter,
          ),
        ),

        child: Column(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.only(top:560.0),
                child: const Text(
                    'Virtually Try-on',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, color: Colors.black, fontSize: 42, decoration: TextDecoration.none)
                )
            ),

            Container(
                padding: const EdgeInsets.only(top:20.0, left: 60.0, right: 60.0),
                child: const Text(
                    'Try out our best products anywhere in real-time',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'calibri', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, color: Colors.black, fontSize: 18, decoration: TextDecoration.none)
                )
            ),

            //Next button
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const FourthScreen()),
                      );
                    },
                    child: const Text('Next', style: TextStyle(color: Colors.black)),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Fourth Screen class
class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container (
              padding: const EdgeInsets.only(bottom: 120.0),
              child: const Text(
                  'Discover and shop',
                  style: TextStyle(color: Color(0xFF472723), fontSize: 16, decoration: TextDecoration.none)),
            ),

            Container (
              padding: const EdgeInsets.only(bottom: 50.0,left: 60.0, right: 60.0),
              child: const Text(
                  'The Best Beauty Trends',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, color: Color(0xFF472723), fontSize: 42, decoration: TextDecoration.none)),
            ),

            //Rounded rectangle button
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 350,
              height: 70,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xFFeadacf)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                        )
                    )
                ),

                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FifthScreen()),
                  );
                },
                child: const Text('Continue with Facebook', style: TextStyle(color: Colors.black, fontSize: 18)),
              ),
            ),

            //Rounded rectangle button
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 350,
              height: 70,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xFFeadacf)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                        )
                    )
                ),

                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FifthScreen()),
                  );
                },
                child: const Text('Continue with email', style: TextStyle(color: Colors.black, fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );

  }
}

//Fifth screen class
class FifthScreen extends StatelessWidget {
  const FifthScreen({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    //Scaffold allows for top bar and bottom bar
    return Scaffold(
      //Top bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        children: <Widget> [

          Container(
            padding: const EdgeInsets.only(top: 10.0, left: 24.0, bottom: 10.0),
            alignment: Alignment.topLeft,
            child: const Text(
            'Category',
            textAlign: TextAlign.left,
            style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, color: Colors.black, fontSize: 36, decoration: TextDecoration.none),
            )
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10.0),
                width: 182,
                height: 170,
                //decoration: const BoxDecoration(
                  //image: DecorationImage(
                    //image: AssetImage(''),
                  //)
                //),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xFFEDE0D6)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )
                      )
                  ),
                    onPressed: () {
                      Navigator.push(context,
                        //Temporary Line
                        MaterialPageRoute(builder: (context) => const SixthScreen()),
                      );
                     },
                    child:
                    Container(
                      width: 180,
                      height: 170,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment.centerRight,
                          fit: BoxFit.fitWidth,
                          scale: 4.0,
                          image: AssetImage('assets/images/wig-icon.png'),
                        )
                      ),
                      padding: const EdgeInsets.only(top: 105.0, left: 30.0),
                        child: const Text('Wigs', style: TextStyle(fontSize: 20, color: Colors.black))
                    ),
                ),
              ),


              Container(
                padding: const EdgeInsets.all(10.0),
                width: 182,
                height: 170,
                //decoration: BoxDecoration(
                //  image: DecorationImage(
                //    image:
                //  )
                //),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color(0xFFF0E7DA)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )
                        )
                    ),
                    onPressed: null,
                    child: Column(
                      children: <Widget> [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                              'assets/images/bundles-icon.png',
                              height: 100,
                          )
                        ),
                        
                        Container(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: const Text('Bundles', style: TextStyle(fontSize: 20, color: Colors.black))
                        ),
                      ]
                    ),
                ),
              ),
            ]
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 182,
                  height: 170,
                  //decoration: BoxDecoration(
                  //  image: DecorationImage(
                  //    image:
                  //  )
                  //),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color(0xFFF0E7DA)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )
                          )
                      ),
                      onPressed: null,
                    child: Column(
                        children: <Widget> [
                          Container(
                              padding: const EdgeInsets.only(top:10.0, bottom: 5.0),
                              child: Image.asset(
                                'assets/images/clip-ins-icon.png',
                                height: 100,
                              )
                          ),

                          Container(
                              padding: const EdgeInsets.only(top: 0.0),
                              child: const Text('Clip-ins', style: TextStyle(fontSize: 20, color: Colors.black))
                          ),
                        ]
                    ),
                  ),
                ),


                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 182,
                  height: 170,
                  //decoration: BoxDecoration(
                  //  image: DecorationImage(
                  //    image:
                  //  )
                  //),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color(0xFFEDE0D6)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )
                          )
                      ),
                      onPressed: null,
                      child: Column(
                          children: <Widget> [
                            Container(
                                padding: const EdgeInsets.only(top:10.0, bottom: 5.0),
                                child: Image.asset(
                                  'assets/images/caduceus-icon.png',
                                  height: 100,
                                )
                            ),

                            Container(
                                padding: const EdgeInsets.only(top: 0.0),
                                child: const Text('Medical', style: TextStyle(fontSize: 20, color: Colors.black))
                            ),
                          ]
                      ),
                  ),
                ),
              ]
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 182,
                  height: 170,
                  //decoration: BoxDecoration(
                  //  image: DecorationImage(
                  //    image:
                  //  )
                  //),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color(0xFFEDE0D6)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )
                          )
                      ),
                      onPressed: null,
                      child: Column(
                          children: <Widget> [
                            Container(
                                padding: const EdgeInsets.only(top:10.0, bottom: 5.0),
                                child: Image.asset(
                                  'assets/images/hair-products-icon.png',
                                  height: 100,
                                )
                            ),

                            Container(
                                padding: const EdgeInsets.only(top: 0.0),
                                child: const Text('Hair Care', style: TextStyle(fontSize: 20, color: Colors.black))
                            ),
                          ]
                      ),
                  ),
                ),


                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 182,
                  height: 170,
                  //decoration: BoxDecoration(
                  //  image: DecorationImage(
                  //    image:
                  //  )
                  //),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color(0xFFF0E7DA)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )
                          )
                      ),
                      onPressed: null,
                      child: Column(
                          children: <Widget> [
                            Container(
                                padding: const EdgeInsets.only(top:10.0, bottom: 5.0),
                                child: Image.asset(
                                  'assets/images/accessories-icon.png',
                                  height: 100,
                                )
                            ),

                            Container(
                                padding: const EdgeInsets.only(top: 0.0),
                                child: const Text('Accessories', style: TextStyle(fontSize: 20, color: Colors.black))
                            ),
                          ]
                      ),
                  ),
                ),
              ]
          ),

        ],
      ),

      //Bottom bar
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
            height: 80.0,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                )
              )
            ),


          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(5.0),
                child: const TextButton(
                  onPressed: null,
                  child: Icon(
                    Icons.house_outlined,
                    size: 30.0,
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.all(5.0),
                child: const TextButton(
                  onPressed: null,
                  child: Icon(
                      Icons.search,
                      size: 30.0,
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.all(5.0),
                child: const TextButton(
                  onPressed: null,
                  child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 30.0,
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.all(5.0),
                child: const TextButton(
                  onPressed: null,
                  child: Icon(
                      Icons.favorite_border,
                      size: 30.0,
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.all(5.0),
                child: const TextButton(
                  onPressed: null,
                  child: Icon(
                      Icons.person_outline,
                      size: 30.0,
                  ),
                ),
              ),
            ]
          ),
        ),
      ),

    );

  }
}

//Sixth screen class
class SixthScreen extends StatelessWidget {
  const SixthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
          body: Container(
            height: 700,
            width: 400,
            child: ListView(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Page6Face.png'),
                        fit: BoxFit.cover,
                      ),
                      color: Color(0xFFEADACF),
                    ),
                    height: 400,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(top: 40.0, left: 15.0, bottom: 10.0),
                              child: const Text('Featured collection',
                                style: TextStyle(fontSize: 18, color: Color(0xFF472723)),
                              ),
                            ),

                            Container(
                              margin: const EdgeInsets.only(top: 10.0, left: 15.0, bottom: 2.0),
                              child: const Text('Lace Front',
                                style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontWeight: FontWeight.bold,fontSize: 48, color: Colors.white),
                              ),
                            ),

                            Container(
                              margin: const EdgeInsets.only(top: 2.0, left: 15.0, bottom: 5.0),
                              child: const Text('Wigs',
                                style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontWeight: FontWeight.bold,fontSize: 48, color: Colors.white),
                              ),
                            ),
                          ]
                      )
                  ),

                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFFCF8F1),
                    ),
                    child: Column(
                      children:<Widget>[
                        Row(
                            children:<Widget>[
                              Container(
                                margin: const EdgeInsets.only(top: 20.0, left: 20.0, bottom: 10.0),
                                child: const Text('New Arrivals',
                                  style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontSize: 20),
                                ),
                              ),

                              Container(
                                margin: const EdgeInsets.only(top: 20.0, left: 145.0, bottom: 10.0),
                                child: const TextButton(
                                  onPressed: null,
                                  child:Text('View all'),
                                )
                              ),

                            ]
                        ),

                        Container(
                          margin: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
                          width: 400,
                          height: 300,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 5.0),
                                    height: 100,
                                    width: 200,
                                    child: TextButton(
                                        style:  ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all((const Color(0xFFFCF8F1))),
                                        ),
                                        onPressed: () {
                                          Navigator.push(context,
                                            //Temporary Line
                                            MaterialPageRoute(builder: (context) => const SeventhScreen()),
                                          );
                                        },
                                        child:Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Image.asset(
                                                'assets/images/Page6Section1Pic1.png',
                                              ),


                                              Container(
                                                margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                                child: const Text('Harly Babie',
                                                  style: TextStyle(color: Colors.grey, fontSize: 12),
                                                ),
                                              ),

                                              Container(
                                                margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                                child: const Text('Bob Wig',
                                                  style: TextStyle(color: Colors.black, fontSize: 14),
                                                ),
                                              ),
                                              Row(
                                                  children: <Widget> [
                                                    Container(
                                                      margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                                      child: const Text('\$100.0',
                                                        style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: const EdgeInsets.only(left: 90.0),
                                                      child: const Icon(Icons.favorite_border),
                                                    ),

                                                  ]
                                              )
                                            ]
                                        )
                                    ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 5.0),
                                  height: 100,
                                  width: 200,
                                  child: TextButton(
                                      style:  ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all((const Color(0xFFFCF8F1))),
                                      ),
                                      onPressed: () {
                                        Navigator.push(context,
                                          //Temporary Line
                                          MaterialPageRoute(builder: (context) => const SeventhScreen()),
                                        );
                                      },
                                      child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/images/Page6Section1Pic2.png',
                                            ),


                                            Container(
                                              margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: const Text('Cos Beauty',
                                                style: TextStyle(color: Colors.grey, fontSize: 12),
                                              ),
                                            ),

                                            Container(
                                              margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: const Text('Deep Wave Wig',
                                                style: TextStyle(color: Colors.black, fontSize: 14),
                                              ),
                                            ),
                                            Row(
                                                children: <Widget> [
                                                  Container(
                                                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                                    child: const Text('\$120.00',
                                                      style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: const EdgeInsets.only(left: 90.0),
                                                    child: const Icon(Icons.favorite_border),
                                                  ),

                                                ]
                                            )
                                          ]
                                      )
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 5.0),
                                  height: 100,
                                  width: 200,
                                  child: TextButton(
                                      style:  ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all((const Color(0xFFFCF8F1))),
                                      ),
                                      onPressed: () {
                                        Navigator.push(context,
                                          //Temporary Line
                                          MaterialPageRoute(builder: (context) => const SeventhScreen()),
                                        );
                                      },
                                      child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/images/Page6Section1Pic1.png',
                                            ),


                                            Container(
                                              margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: const Text('Forever 18',
                                                style: TextStyle(color: Colors.grey, fontSize: 12),
                                              ),
                                            ),

                                            Container(
                                              margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: const Text('Short Sleeve Top',
                                                style: TextStyle(color: Colors.black, fontSize: 14),
                                              ),
                                            ),
                                            Row(
                                                children: <Widget> [
                                                  Container(
                                                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                                    child: const Text('\$50.00',
                                                      style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: const EdgeInsets.only(left: 90.0),
                                                    child: const Icon(Icons.favorite_border),
                                                  ),

                                                ]
                                            )
                                          ]
                                      )
                                  ),
                                ),

                              ]
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFEADACF),
                    ),
                    child: Column(
                      children:<Widget>[
                        Row(
                            children:<Widget>[
                              Container(
                                margin: const EdgeInsets.only(top: 20.0, left: 20.0, bottom: 10.0),
                                child: const Text('Medical Wigs',
                                  style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontSize: 20),
                                ),
                              ),

                              Container(
                                  margin: const EdgeInsets.only(top: 20.0, left: 145.0, bottom: 10.0),
                                  child: const TextButton(
                                    onPressed: null,
                                    child:Text('View all'),
                                  )
                              ),

                            ]
                        ),

                        Container(
                          margin: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
                          width: 400,
                          height: 300,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 5.0),
                                  height: 100,
                                  width: 200,
                                  child: TextButton(
                                      style:  ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(const Color(0xFFEADACF)),
                                      ),
                                      onPressed: () {
                                        Navigator.push(context,
                                          //Temporary Line
                                          MaterialPageRoute(builder: (context) => const SeventhScreen()),
                                        );
                                      },
                                      child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/images/Page6Section2Pic1.png',
                                            ),


                                            Container(
                                              margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: const Text('BLH Paris',
                                                style: TextStyle(color: Colors.grey, fontSize: 12),
                                              ),
                                            ),

                                            Container(
                                              margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: const Text('Anti Slip Silicon Wig',
                                                style: TextStyle(color: Colors.black, fontSize: 14),
                                              ),
                                            ),
                                            Row(
                                                children: <Widget> [
                                                  Container(
                                                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                                    child: const Text('\$250.00',
                                                      style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: const EdgeInsets.only(left: 90.0),
                                                    child: const Icon(Icons.favorite_border),
                                                  ),

                                                ]
                                            )
                                          ]
                                      )
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 5.0),
                                  height: 100,
                                  width: 200,
                                  child: TextButton(
                                      style:  ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all((const Color(0xFFEADACF))),
                                      ),
                                      onPressed: () {
                                        Navigator.push(context,
                                          //Temporary Line
                                          MaterialPageRoute(builder: (context) => const SeventhScreen()),
                                        );
                                      },
                                      child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/images/Page6Section2Pic2.png',
                                            ),


                                            Container(
                                              margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: const Text('BLH Paris',
                                                style: TextStyle(color: Colors.grey, fontSize: 12),
                                              ),
                                            ),

                                            Container(
                                              margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: const Text('Silk Base Lace Front',
                                                style: TextStyle(color: Colors.black, fontSize: 14),
                                              ),
                                            ),
                                            Row(
                                                children: <Widget> [
                                                  Container(
                                                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                                    child: const Text('\$200.00',
                                                      style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: const EdgeInsets.only(left: 90.0),
                                                    child: const Icon(Icons.favorite_border),
                                                  ),

                                                ]
                                            )
                                          ]
                                      )
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 5.0),
                                  height: 100,
                                  width: 200,
                                  child: TextButton(
                                      style:  ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all((const Color(0xFFEADACF))),
                                      ),
                                      onPressed: () {
                                        Navigator.push(context,
                                          //Temporary Line
                                          MaterialPageRoute(builder: (context) => const SeventhScreen()),
                                        );
                                      },
                                      child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/images/Page6Section2Pic1.png',
                                            ),


                                            Container(
                                              margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: const Text('Forever 18',
                                                style: TextStyle(color: Colors.grey, fontSize: 12),
                                              ),
                                            ),

                                            Container(
                                              margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: const Text('Short Sleeve Top',
                                                style: TextStyle(color: Colors.black, fontSize: 14),
                                              ),
                                            ),
                                            Row(
                                                children: <Widget> [
                                                  Container(
                                                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                                    child: const Text('\$50.00',
                                                      style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: const EdgeInsets.only(left: 90.0),
                                                    child: const Icon(Icons.favorite_border),
                                                  ),

                                                ]
                                            )
                                          ]
                                      )
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ],
                    ),
                  ),

                  Column(
                      children: <Widget> [
                        Row(
                            children:<Widget>[
                              Container(
                                margin: const EdgeInsets.only(top: 20.0, left: 20.0, bottom: 10.0),
                                child: const Text('Your Feed',
                                  style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontSize: 20),
                                ),
                              ),

                              Container(
                                  margin: const EdgeInsets.only(top: 20.0, left: 175.0, bottom: 10.0),
                                  child: const TextButton(
                                    onPressed: null,
                                    child:Text('View all'),
                                  )
                              ),

                            ]
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/images/Page6Section3.png',
                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.all(10.0),
                          child: Row(
                            children: <Widget> [
                              Container(
                                margin: const EdgeInsets.only(right: 120.0),
                                child: const Text('1 day ago | Trends',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),

                              Container(
                                margin: const EdgeInsets.only(left:5.0, right: 5.0),
                                child: const Icon(Icons.favorite_border),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left:5.0, right: 5.0),
                                child: const Text('680',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left:5.0, right: 5.0),
                                child: const Icon(Icons.panorama_fisheye),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left:5.0, right: 5.0),
                                child: const Text('984',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ]
                  ),

                ]

            ),
          ),
          //Bottom bar
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Container(
              height: 80.0,
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(
                        color: Colors.grey,
                      )
                  )
              ),


              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      child: const TextButton(
                        onPressed: null,
                        child: Icon(
                          Icons.house_outlined,
                          size: 30.0,
                        ),
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(5.0),
                      child: const TextButton(
                        onPressed: null,
                        child: Icon(
                          Icons.search,
                          size: 30.0,
                        ),
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(5.0),
                      child: const TextButton(
                        onPressed: null,
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          size: 30.0,
                        ),
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(5.0),
                      child: const TextButton(
                        onPressed: null,
                        child: Icon(
                          Icons.favorite_border,
                          size: 30.0,
                        ),
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(5.0),
                      child: const TextButton(
                        onPressed: null,
                        child: Icon(
                          Icons.person_outline,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ]
              ),
            ),
          ),
      );
  }
}

//Seventh Screen class
class SeventhScreen extends StatelessWidget {
  const SeventhScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        actions: const [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: null,
            tooltip: 'Share',
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: null,
            tooltip: 'Like',
          ),
        ],
      ),
      body: Column(
        children: <Widget> [
          Image.asset(
            'assets/images/SeventhScreenImage.png',
            width: 400,
            height: 300,
          ),
          Container(
            margin: const EdgeInsets.only(left:40.0, top: 10.0, right: 40.0, bottom: 10.0),
            child: const Text('Transparent Lace Pink Bob Wig',
              style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 32, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left:20.0, top: 10.0, right: 20.0, bottom: 10.0),
            child: Row(
                children: <Widget> [
                  const Text('\$100.00',
                    style: TextStyle(fontSize: 18),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left:80.0),
                      child: const Text('Product Ratings',
                    style: TextStyle(fontSize: 18),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(left:60.0),
                    child: const Text('5',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ]
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 10.0),
            child: const Text('An exciting way to spice up your look, this style creates an amazing look f...More',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
            child: Row(
              children: <Widget> [
                const Text('Details',
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 250.0),
                  child: const Icon(Icons.arrow_drop_down),
                ),
              ]
            )
          ),
          Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 1.0, bottom: 10.0),
              child: Row(
                  children: <Widget> [
                    const Text('Delivery and returns',
                      style: TextStyle(fontSize: 16),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 160.0),
                      child: const Icon(Icons.arrow_drop_down),
                    ),

                  ]
              )
          ),

          Row(
              children: <Widget> [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 300,
                  height: 70,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color(0xFFeadacf)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            )
                        )
                    ),

                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const EightScreen()),
                      );
                    },
                    child: const Text('Try it on now', style: TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 70,
                  height: 70,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color(0xFFeadacf)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            )
                        )
                    ),

                    onPressed: null,
                    child: const Icon(Icons.shopping_bag_outlined)
                  ),
                ),
              ]
          ),

        ]
      )
    );
  }

}

//Eight Screen class/Camera page
class EightScreen extends StatelessWidget {
  const EightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          height: 800,
          child: ListView(
            children: <Widget> [
              //Camera widget goes here
              CameraScreen(cameras),

              //Row of colour buttons
              Column(
                children: <Widget> [
                  Container(
                    padding: const EdgeInsets.only(top: 10.0, right: 270.0),
                    child: const Text('Color palettes'),
                  ),
                  Container(
                    height: 100,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget> [
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Icon(Icons.menu, color: Colors.black),
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(20),
                                primary: Colors.black, // <-- Button color
                              ),
                            ),
                          ),


                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Icon(Icons.menu, color: Color(0xFFF3B1B2)),
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(20),
                                primary: const Color(0xFFF3B1B2), // <-- Button color
                              ),
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Icon(Icons.menu, color: Color(0xFFF5EE7E)),
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(20),
                                primary: const Color(0xFFF5EE7E), // <-- Button color
                              ),
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Icon(Icons.menu, color: Color(0xFFE5AD7C)),
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(20),
                                primary: const Color(0xFFE5AD7C), // <-- Button color
                              ),
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Icon(Icons.menu, color: Color(0xFFB79182)),
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(20),
                                primary: const Color(0xFFB79182), // <-- Button color
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      children: <Widget> [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          width: 120,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(const Color(0xFFeadacf)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    )
                                )
                            ),
                            onPressed: null,
                            child: const Text('No Part', style: TextStyle(color: Colors.black, fontSize: 12)),
                          ),
                        ),

                        Container(
                          padding: const EdgeInsets.all(10.0),
                          width: 120,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(const Color(0xFFeadacf)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    )
                                )
                            ),
                            onPressed: null,
                            child: const Text('Middle Part', style: TextStyle(color: Colors.black, fontSize: 12)),
                          ),
                        ),

                        Container(
                          padding: const EdgeInsets.all(10.0),
                          width: 120,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(const Color(0xFFeadacf)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    )
                                )
                            ),
                            onPressed: null,
                            child: const Text('Free Part', style: TextStyle(color: Colors.black, fontSize: 12)),
                          ),
                        ),

                      ]
                    ),
                  ),
                ]
              ),

            ],
          ),
        ),
      );
  }

}

//Ninth Screen class
class NinthScreen extends StatefulWidget {

  NinthScreen({Key? key, required this.videoFile}) : super(key: key);

  late XFile videoFile;

  @override
  State<StatefulWidget> createState() {

    return NinthScreenState();
  }

}

class NinthScreenState extends State<NinthScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();


    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.file(File(widget.videoFile.path));

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);

  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: FutureBuilder<void>(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // If the VideoPlayerController has finished initialization, use
              // the data it provides to limit the aspect ratio of the video.
              return Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFEADACF),
                ),
                child: Column(
                  children: <Widget> [
                    AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    ),
                    VideoProgressIndicator(
                      _controller,
                      allowScrubbing: true,
                      colors: const VideoProgressColors(
                        backgroundColor: Color(0xFFF6EFEA),
                        bufferedColor: Colors.grey,
                        playedColor: Color(0xFF472723),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFEADACF),
                      ),
                      height: 124,
                      child: Row(
                        children: <Widget> [
                          Container(
                            margin: const EdgeInsets.only(left:100.0, right: 10.0),
                            child: const IconButton(
                              icon: Icon(
                                  Icons.favorite_border,
                              ),
                              onPressed: null,

                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left:10.0, right: 10.0),
                            child: IconButton(
                              onPressed: () {
                                // Wrap the play or pause in a call to `setState`. This ensures the
                                // correct icon is shown.
                                setState(() {
                                  // If the video is playing, pause it.
                                  if (_controller.value.isPlaying) {
                                    _controller.pause();
                                  } else {
                                    // If the video is paused, play it.
                                    _controller.play();
                                  }
                                });
                              },
                              // Display the correct icon depending on the state of the player.
                              icon: Icon(
                                _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                              ),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(left:10.0, right: 10.0),
                            child: IconButton(
                              icon: const Icon(
                                Icons.share_outlined,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const TenthScreen()),
                                );
                              },

                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
            else {
              // If the VideoPlayerController is still initializing, show a
              // loading spinner.
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }
      ),
    );


  }

}

//Tenth screen class
class TenthScreen extends StatelessWidget {
  const TenthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFCF8F1),
        ),
        child: Column(
          children: <Widget> [
            SizedBox(
              height: 150,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Container(
                    margin: const EdgeInsets.only(top: 50.0, left: 20.0, bottom:15.0),
                    child: const Text(
                        'Our Partners',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, color: Colors.black, fontSize: 36, decoration: TextDecoration.none)
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15.0, left: 20.0),
                    child: const Text(
                      'Save over 55% Off',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 80.0,
              width: 350,
              margin: const EdgeInsets.all(10.0),
              child: Image.asset('assets/images/PartnerLogo1.png'),
            ),

            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 80.0,
              width: 350,
              margin: const EdgeInsets.all(10.0),
              child: Image.asset('assets/images/PartnerLogo2.png'),
            ),

            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 80.0,
              width: 350,
              margin: const EdgeInsets.all(10.0),
              child: Image.asset('assets/images/PartnerLogo3.png'),
            ),

            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 80.0,
              width: 350,
              margin: const EdgeInsets.all(10.0),
              child: Image.asset('assets/images/PartnerLogo4.jpeg'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 80.0,
          decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                  )
              )
          ),


          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(5.0),
                  child: const TextButton(
                    onPressed: null,
                    child: Icon(
                      Icons.house_outlined,
                      size: 30.0,
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(5.0),
                  child: const TextButton(
                    onPressed: null,
                    child: Icon(
                      Icons.search,
                      size: 30.0,
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(5.0),
                  child: const TextButton(
                    onPressed: null,
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 30.0,
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(5.0),
                  child: const TextButton(
                    onPressed: null,
                    child: Icon(
                      Icons.favorite_border,
                      size: 30.0,
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(5.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EleventhScreen()),
                      );
                    },
                    child: const Icon(
                      Icons.person_outline,
                      size: 30.0,
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }

}

//Eleventh Screen Class
class EleventhScreen extends StatelessWidget {
  EleventhScreen({Key? key}) : super(key: key);
  //Variables can be set to pull from some other source
  late String naMessage = 'Sodium: Your levels of sodium are above average. For better results you can reduce your salt intake.';
  late String phMessage = 'PH: Your PH levels are lower than average. Consider consuming more fluids, especially water.';
  late num naLevel = 0.7;
  late num phLevel = 0.7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: const Text(
              'Health & Wellness',
              style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, color: Colors.black, fontSize: 24, decoration: TextDecoration.none),
            ),
          ),

          Container(
            margin: const EdgeInsets.all(10.0),
            child: Text(
                naMessage
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            height: 100,
            width: 100,
            child: Image.asset(
              (naLevel > 0.5) ? 'assets/images/NaLevel.png' : 'null',
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Text(
                phMessage
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            height: 100,
            width: 100,
            child: Image.asset(
              (phLevel > 0.5) ? 'assets/images/PHLevels.png' : 'null',
            ),
          ),


          Container(
            margin: const EdgeInsets.only(top:30),
            decoration: const BoxDecoration(color: Color(0xFFFCF8F1)),
            height: 225,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Container(
                    margin: const EdgeInsets.only(top: 10.0, left: 20.0, right: 10.0),
                    height: 80,
                    width: 80,
                    child: Image.asset(
                        'assets/images/caduceus-icon.png'
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40.0),
                    width: 175,
                    child: const Text(
                      'Your Health Data in Real-Time',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),

                ]
            )
          ),

        ]
      )
    );
  }

}

//Camera class and functions
class CameraScreen extends StatefulWidget {
  List<CameraDescription>? cameras;

  CameraScreen(this.cameras, {Key? key}) : super(key: key);

  @override
  CameraScreenState createState() {
    return CameraScreenState();
  }
}

class CameraScreenState extends State<CameraScreen> {

  late CameraController controller;
  XFile? videoFile;
  XFile? imageFile;
  VoidCallback? videoPlayerListener;
  VideoPlayerController? videoController;
  bool enableAudio = true;
  double _minAvailableExposureOffset = 0.0;
  double _maxAvailableExposureOffset = 0.0;
  double _minAvailableZoom = 1.0;
  double _maxAvailableZoom = 1.0;
  var timer;

  @override
  void initState() {
    super.initState();
    controller = CameraController(widget.cameras![0], ResolutionPreset.medium);
    controller.initialize().then((_){
      if(!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(!controller.value.isInitialized){
      return Container();
    }
    return Stack(
        children: <Widget> [
          Container(
            height: 720,
            width: 400,
            child: AspectRatio(
              aspectRatio: 1.0,
              child: CameraPreview(controller!),
            ),
          ),

          Container(
            padding: const EdgeInsets.only(top: 620),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget> [
                _screenSwitch(),
                _captureVideoWidget(),
                _captureCameraWidget(),
              ],
            ),
          ),



          ]
    );

  }
//Switch screen button
  Widget _screenSwitch() {
    if (cameras!.isEmpty) {
      return const Text('No camera found');
    }
    else {
      return IconButton(
        icon: Image.asset('assets/images/flip_camera_icon.png',
        ),
        iconSize: 50,
        onPressed: () {
          controller!.value.isRecordingVideo
              ? null
              : _toggleCameraLens();
        },
      );
    }
  }

  //Currently Unused: creates row of cameras
  Widget _cameraTogglesRowWidget() {
    final List<Widget> toggles = <Widget>[];

    final Null Function(CameraDescription? description) onChanged =
        (CameraDescription? description) {
      if (description == null) {
        return;
      }

      onNewCameraSelected(description);
    };

    if (cameras!.isEmpty) {
      return const Text('No camera found');
    } else {
      for (final CameraDescription cameraDescription in cameras!) {
        toggles.add(
          SizedBox(
            width: 90.0,
            child: RadioListTile<CameraDescription>(
              title: Icon(getCameraLensIcon(cameraDescription.lensDirection)),
              groupValue: controller?.description,
              value: cameraDescription,
              onChanged:
              controller!.value.isRecordingVideo
                  ? null
                  : onChanged,
            ),
          ),
        );
      }
    }

    return Row(children: toggles);
  }
//Video record button
  Widget _captureVideoWidget() {
    final CameraController? cameraController = controller;

    return IconButton(
          icon: cameraController != null && cameraController.value.isInitialized && !cameraController.value.isRecordingVideo
              ? Image.asset("assets/images/camera.png",
              )
              : Image.asset("assets/images/camera_red.png",
          ),
          iconSize: 60,
          onPressed: cameraController != null &&
              cameraController.value.isInitialized &&
              !cameraController.value.isRecordingVideo
              ? onVideoRecordButtonPressed
              : onStopButtonPressed,
        );
  }

  //Camera picture button, currently used to progress to next screen
  Widget _captureCameraWidget() {
    final CameraController? cameraController = controller;

    return IconButton(
      icon: const Icon(Icons.camera_alt),
      iconSize: 40.0,
      color: Colors.blue,
      onPressed: cameraController != null &&
          cameraController.value.isInitialized &&
          !cameraController.value.isRecordingVideo
          ? () {Navigator.push(this.context, MaterialPageRoute(builder: (context) => NinthScreen(videoFile: videoFile!,)));}
          : onTakePictureButtonPressed,
    );

  }
//Currently unused, gets icon for camera direction
  IconData getCameraLensIcon(CameraLensDirection direction) {
    switch (direction) {
      case CameraLensDirection.back:
        return Icons.camera_rear;
      case CameraLensDirection.front:
        return Icons.camera_front;
      case CameraLensDirection.external:
        return Icons.camera;
      default:
        throw ArgumentError('Unknown lens direction');
    }
  }

  void showInSnackBar(String message) {
    debugPrint(message);
  }

  void onVideoRecordButtonPressed() {
    startVideoRecording().then((_) {
      if (mounted) {
        setState(() {});
      }
    });
    timer = Timer.periodic(const Duration(seconds: 15), (Timer t) {
      onStopButtonPressed();
      timer.cancel();
    });
  }

  void onTakePictureButtonPressed() {
    takePicture().then((XFile? file) {
      if (mounted) {
        setState(() {
          imageFile = file;
          videoController?.dispose();
          videoController = null;
        });
        if (file != null) {
          showInSnackBar('Picture saved to ${file.path}');
        }
      }
    });
  }



  void onStopButtonPressed() {
    stopVideoRecording().then((XFile? file) {
      if (mounted) {
        setState(() {});
      }
      timer.cancel();
      if (file != null) {
        showInSnackBar('Video recorded to ${file.path}');
        videoFile = file;
        upload(File(videoFile!.path));
        _startVideoPlayer();
      }
    });
  }

  void onPauseButtonPressed() {
    pauseVideoRecording().then((_) {
      if (mounted) {
        setState(() {});
      }
      showInSnackBar('Video recording paused');
    });
  }

  void onResumeButtonPressed() {
    resumeVideoRecording().then((_) {
      if (mounted) {
        setState(() {});
      }
      showInSnackBar('Video recording resumed');
    });
  }

  //function for camera change
  Future<void> onNewCameraSelected(CameraDescription cameraDescription) async {
    if (controller != null) {
      await controller!.dispose();
    }

    final CameraController cameraController = CameraController(
      cameraDescription,
      false ? ResolutionPreset.max : ResolutionPreset.medium,
      enableAudio: enableAudio,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    controller = cameraController;

    // If the controller is updated then update the UI.
    cameraController.addListener(() {
      if (mounted) {
        setState(() {});
      }
      if (cameraController.value.hasError) {
        showInSnackBar(
            'Camera error ${cameraController.value.errorDescription}');
      }
    });

    try {
      await cameraController.initialize();
      await Future.wait(<Future<Object?>>[
        // The exposure mode is currently not supported on the web.
        ...!false
            ? <Future<Object?>>[
          cameraController.getMinExposureOffset().then(
                  (double value) => _minAvailableExposureOffset = value),
          cameraController
              .getMaxExposureOffset()
              .then((double value) => _maxAvailableExposureOffset = value)
        ]
            : <Future<Object?>>[],
        cameraController
            .getMaxZoomLevel()
            .then((double value) => _maxAvailableZoom = value),
        cameraController
            .getMinZoomLevel()
            .then((double value) => _minAvailableZoom = value),
      ]);
    } on CameraException catch (e) {
      _showCameraException(e);
    }

    if (mounted) {
      setState(() {});
    }
  }

  Future<XFile?> takePicture() async {
    final CameraController? cameraController = controller;
    if (cameraController == null || !cameraController.value.isInitialized) {
      showInSnackBar('Error: select a camera first.');
      return null;
    }

    if (cameraController.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    try {
      final XFile file = await cameraController.takePicture();
      return file;
    } on CameraException catch (e) {
      _showCameraException(e);
      return null;
    }
  }

  Future<void> startVideoRecording() async {
    final CameraController? cameraController = controller;

    if (cameraController == null || !cameraController.value.isInitialized) {
      showInSnackBar('Error: select a camera first.');
      return;
    }

    if (cameraController.value.isRecordingVideo) {
      // A recording is already started, do nothing.
      return;
    }

    try {
      await cameraController.startVideoRecording();
    } on CameraException catch (e) {
      _showCameraException(e);
      return;
    }
  }

  Future<XFile?> stopVideoRecording() async {
    final CameraController? cameraController = controller;

    if (cameraController == null || !cameraController.value.isRecordingVideo) {
      return null;
    }

    try {
      return cameraController.stopVideoRecording();
    } on CameraException catch (e) {
      _showCameraException(e);
      return null;
    }
  }

  Future<void> pauseVideoRecording() async {
    final CameraController? cameraController = controller;

    if (cameraController == null || !cameraController.value.isRecordingVideo) {
      return;
    }

    try {
      await cameraController.pauseVideoRecording();
    } on CameraException catch (e) {
      _showCameraException(e);
      rethrow;
    }
  }

  Future<void> resumeVideoRecording() async {
    final CameraController? cameraController = controller;

    if (cameraController == null || !cameraController.value.isRecordingVideo) {
      return;
    }

    try {
      await cameraController.resumeVideoRecording();
    } on CameraException catch (e) {
      _showCameraException(e);
      rethrow;
    }
  }

  void _showCameraException(CameraException e) {
    logError(e.code, e.description);
    showInSnackBar('Error: ${e.code}\n${e.description}');
  }

  Future<void> _startVideoPlayer() async {
    if (videoFile == null) {
      return;
    }

    final VideoPlayerController vController = false
        ? VideoPlayerController.network(videoFile!.path)
        : VideoPlayerController.file(File(videoFile!.path));

    videoPlayerListener = () {
      if (videoController != null && videoController!.value.size != null) {
        // Refreshing the state to update video player with the correct ratio.
        if (mounted) {
          setState(() {});
        }
        videoController!.removeListener(videoPlayerListener!);
      }
    };
    vController.addListener(videoPlayerListener!);
    await vController.setLooping(true);
    await vController.initialize();
    await videoController?.dispose();
    if (mounted) {
      setState(() {
        imageFile = null;
        videoController = vController;
      });
    }
    await vController.play();
  }

  Future<void> _getAvailableCameras() async{
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
    _initCamera(cameras!.first);
  }

  Future<void> _initCamera(CameraDescription description) async{
    controller = CameraController(description, ResolutionPreset.max, enableAudio: true);

    try{
      await controller.initialize();
      // to notify the widgets that camera has been initialized and now camera preview can be done
      setState((){});
    }
    catch(e){
      print(e);
    }
  }

  void _toggleCameraLens() {
    // get current lens direction (front / rear)
    final lensDirection = controller.description.lensDirection;
    CameraDescription newDescription;
    if (lensDirection == CameraLensDirection.front) {
      newDescription = cameras!.firstWhere((description) => description
          .lensDirection == CameraLensDirection.back);
    }
    else {
      newDescription = cameras!.firstWhere((description) => description
          .lensDirection == CameraLensDirection.front);
    }

    if (newDescription != null) {
      _initCamera(newDescription);
    }
    else {
      print('Asked camera not available');
    }
  }

}

class DurationState {
  const DurationState({
    required this.progress,
    required this.buffered,
    this.total,
  });
  final Duration progress;
  final Duration buffered;
  final Duration? total;
}
//File upload
void upload(File filePath) async {
  String fileName = basename(filePath.path);
  print("File base name: $fileName");

  try {
    FormData formData = FormData.fromMap({
      "name": "wendux",
      "age": 25,
      "file": await MultipartFile.fromFile(filePath.path, filename: fileName)
    });

    Response response =
        await Dio().post("http://35.203.80.69/C:/Images/saveFile.php", data: formData);
        print("File upload response: $response");
    showSnackBarMessage(response.data['message']);
  } catch (e) {
    print("Exception Caught: $e");
  }
}
//Shows message in snackbar
void showSnackBarMessage(String msg) {
  _scaffoldstate.currentState?.showSnackBar(SnackBar(content: Text(msg)));
}

//Error logging function
void logError(String code, String? message) {
  if (message != null) {
    print('Error: $code\nError Message: $message');
  } else {
    print('Error: $code');
  }
}
