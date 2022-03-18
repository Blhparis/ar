import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:camera/camera.dart';
import 'package:video_player/video_player.dart';

List<CameraDescription>? cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctxt) {
    return const MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);


  @override
  Widget build (BuildContext ctxt) {
    return Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFCF8F1),
        ),
        child: Column(
          children: <Widget>[

            Container(
              margin: const EdgeInsets.only(top:70.0),
              child: Image.asset('assets/images/FirstPageLogo.jpg')
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

            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(ctxt, MaterialPageRoute(builder: (ctxt) => SecondScreen()),
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

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext ctxt) {
    return Container(
      margin: const EdgeInsets.all(0.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/images/SecondPageImage.jpg'),
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

              Container(
                    padding: const EdgeInsets.only(top:30.0, left:300.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(ctxt, MaterialPageRoute(builder: (ctxt) => const ThirdScreen()),
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

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext ctxt) {
    return Container(
        margin: const EdgeInsets.all(0.0),
        decoration: const BoxDecoration(
          color: Color(0xFFFBF7F2),
          image: DecorationImage(
            image: AssetImage('assets/images/ThirdPageImage.jpg'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
        ),

        child: Column(
          children: <Widget>[

            Container(
                padding: const EdgeInsets.only(top:540.0),
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

            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(ctxt, MaterialPageRoute(builder: (ctxt) => FourthScreen()),
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

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext ctxt) {
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
                  Navigator.push(ctxt,
                    MaterialPageRoute(builder: (ctxt) => const FifthScreen()),
                  );
                },
                child: const Text('Continue with Facebook', style: TextStyle(color: Colors.black, fontSize: 18)),
              ),
            ),

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
                  Navigator.push(ctxt,
                    MaterialPageRoute(builder: (ctxt) => const FifthScreen()),
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

class FifthScreen extends StatelessWidget {
  const FifthScreen({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext ctxt) {
    return Scaffold(
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
                      Navigator.push(ctxt,
                        //Temporary Line
                        MaterialPageRoute(builder: (ctxt) => const SixthScreen()),
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

class SixthScreen extends StatelessWidget {
  const SixthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctxt) {

    return Scaffold(
          body: Container(
            height: 700,
            width: 400,
            child: ListView(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
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
                              margin: EdgeInsets.only(top: 40.0, left: 15.0, bottom: 10.0),
                              child: Text('Featured collection',
                                style: TextStyle(fontSize: 18, color: Color(0xFF472723)),
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 10.0, left: 15.0, bottom: 2.0),
                              child: Text('Lace Front',
                                style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontWeight: FontWeight.bold,fontSize: 48, color: Colors.white),
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 2.0, left: 15.0, bottom: 5.0),
                              child: Text('Wigs',
                                style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontWeight: FontWeight.bold,fontSize: 48, color: Colors.white),
                              ),
                            ),
                          ]
                      )
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFCF8F1),
                    ),
                    child: Column(
                      children:<Widget>[
                        Row(
                            children:<Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 20.0, left: 20.0, bottom: 10.0),
                                child: Text('New Arrivals',
                                  style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontSize: 20),
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(top: 20.0, left: 170.0, bottom: 10.0),
                                child: TextButton(
                                  onPressed: null,
                                  child:Text('View all'),
                                )
                              ),

                            ]
                        ),

                        Container(
                          margin: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
                          width: 400,
                          height: 300,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    height: 100,
                                    width: 200,
                                    child: TextButton(
                                        style:  ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all((Color(0xFFFCF8F1))),
                                        ),
                                        onPressed: () {
                                          Navigator.push(ctxt,
                                            //Temporary Line
                                            MaterialPageRoute(builder: (ctxt) => SeventhScreen()),
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
                                                margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                                child: Text('Harly Babie',
                                                  style: TextStyle(color: Colors.grey, fontSize: 12),
                                                ),
                                              ),

                                              Container(
                                                margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                                child: Text('Bob Wig',
                                                  style: TextStyle(color: Colors.black, fontSize: 14),
                                                ),
                                              ),
                                              Row(
                                                  children: <Widget> [
                                                    Container(
                                                      margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                                      child: Text('\$100.0',
                                                        style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 90.0),
                                                      child: Icon(Icons.favorite_border),
                                                    ),

                                                  ]
                                              )
                                            ]
                                        )
                                    ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 5.0),
                                  height: 100,
                                  width: 200,
                                  child: TextButton(
                                      style:  ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all((Color(0xFFFCF8F1))),
                                      ),
                                      onPressed: () {
                                        Navigator.push(ctxt,
                                          //Temporary Line
                                          MaterialPageRoute(builder: (ctxt) => SeventhScreen()),
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
                                              margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: Text('Cos Beauty',
                                                style: TextStyle(color: Colors.grey, fontSize: 12),
                                              ),
                                            ),

                                            Container(
                                              margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: Text('Deep Wave Wig',
                                                style: TextStyle(color: Colors.black, fontSize: 14),
                                              ),
                                            ),
                                            Row(
                                                children: <Widget> [
                                                  Container(
                                                    margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                                    child: Text('\$120.00',
                                                      style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(left: 90.0),
                                                    child: Icon(Icons.favorite_border),
                                                  ),

                                                ]
                                            )
                                          ]
                                      )
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 5.0),
                                  height: 100,
                                  width: 200,
                                  child: TextButton(
                                      style:  ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all((Color(0xFFFCF8F1))),
                                      ),
                                      onPressed: () {
                                        Navigator.push(ctxt,
                                          //Temporary Line
                                          MaterialPageRoute(builder: (ctxt) => SeventhScreen()),
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
                                              margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: Text('Forever 18',
                                                style: TextStyle(color: Colors.grey, fontSize: 12),
                                              ),
                                            ),

                                            Container(
                                              margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: Text('Short Sleeve Top',
                                                style: TextStyle(color: Colors.black, fontSize: 14),
                                              ),
                                            ),
                                            Row(
                                                children: <Widget> [
                                                  Container(
                                                    margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                                    child: Text('\$50.00',
                                                      style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(left: 90.0),
                                                    child: Icon(Icons.favorite_border),
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
                    decoration: BoxDecoration(
                      color: Color(0xFFEADACF),
                    ),
                    child: Column(
                      children:<Widget>[
                        Row(
                            children:<Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 20.0, left: 20.0, bottom: 10.0),
                                child: Text('Medical Wigs',
                                  style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontSize: 20),
                                ),
                              ),

                              Container(
                                  margin: EdgeInsets.only(top: 20.0, left: 170.0, bottom: 10.0),
                                  child: TextButton(
                                    onPressed: null,
                                    child:Text('View all'),
                                  )
                              ),

                            ]
                        ),

                        Container(
                          margin: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
                          width: 400,
                          height: 300,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 5.0),
                                  height: 100,
                                  width: 200,
                                  child: TextButton(
                                      style:  ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Color(0xFFEADACF)),
                                      ),
                                      onPressed: () {
                                        Navigator.push(ctxt,
                                          //Temporary Line
                                          MaterialPageRoute(builder: (ctxt) => SeventhScreen()),
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
                                              margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: Text('BLH Paris',
                                                style: TextStyle(color: Colors.grey, fontSize: 12),
                                              ),
                                            ),

                                            Container(
                                              margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: Text('Anti Slip Silicon Wig',
                                                style: TextStyle(color: Colors.black, fontSize: 14),
                                              ),
                                            ),
                                            Row(
                                                children: <Widget> [
                                                  Container(
                                                    margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                                    child: Text('\$250.00',
                                                      style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(left: 90.0),
                                                    child: Icon(Icons.favorite_border),
                                                  ),

                                                ]
                                            )
                                          ]
                                      )
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 5.0),
                                  height: 100,
                                  width: 200,
                                  child: TextButton(
                                      style:  ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all((Color(0xFFEADACF))),
                                      ),
                                      onPressed: () {
                                        Navigator.push(ctxt,
                                          //Temporary Line
                                          MaterialPageRoute(builder: (ctxt) => SeventhScreen()),
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
                                              margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: Text('BLH Paris',
                                                style: TextStyle(color: Colors.grey, fontSize: 12),
                                              ),
                                            ),

                                            Container(
                                              margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: Text('Silk Base Lace Front',
                                                style: TextStyle(color: Colors.black, fontSize: 14),
                                              ),
                                            ),
                                            Row(
                                                children: <Widget> [
                                                  Container(
                                                    margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                                    child: Text('\$200.00',
                                                      style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(left: 90.0),
                                                    child: Icon(Icons.favorite_border),
                                                  ),

                                                ]
                                            )
                                          ]
                                      )
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 5.0),
                                  height: 100,
                                  width: 200,
                                  child: TextButton(
                                      style:  ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all((Color(0xFFEADACF))),
                                      ),
                                      onPressed: () {
                                        Navigator.push(ctxt,
                                          //Temporary Line
                                          MaterialPageRoute(builder: (ctxt) => SeventhScreen()),
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
                                              margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: Text('Forever 18',
                                                style: TextStyle(color: Colors.grey, fontSize: 12),
                                              ),
                                            ),

                                            Container(
                                              margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                              child: Text('Short Sleeve Top',
                                                style: TextStyle(color: Colors.black, fontSize: 14),
                                              ),
                                            ),
                                            Row(
                                                children: <Widget> [
                                                  Container(
                                                    margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                                                    child: Text('\$50.00',
                                                      style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(left: 90.0),
                                                    child: Icon(Icons.favorite_border),
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
                    child: Column(
                        children: <Widget> [
                          Row(
                              children:<Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 20.0, left: 20.0, bottom: 10.0),
                                  child: Text('Your Feed',
                                    style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontSize: 20),
                                  ),
                                ),

                                Container(
                                    margin: EdgeInsets.only(top: 20.0, left: 200.0, bottom: 10.0),
                                    child: TextButton(
                                      onPressed: null,
                                      child:Text('View all'),
                                    )
                                ),

                              ]
                          ),
                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/images/Page6Section3.png',
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Row(
                              children: <Widget> [
                                Container(
                                  margin: EdgeInsets.only(right: 120.0),
                                  child: Text('1 day ago | Trends',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(left:5.0, right: 5.0),
                                  child: Icon(Icons.favorite_border),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left:5.0, right: 5.0),
                                  child: Text('680',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left:5.0, right: 5.0),
                                  child: Icon(Icons.panorama_fisheye),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left:5.0, right: 5.0),
                                  child: Text('984',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),

                              ],
                            ),
                          ),




                        ]
                    ),
                  ),

                ]

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
            margin: EdgeInsets.only(left:40.0, top: 10.0, right: 40.0, bottom: 10.0),
            child: Text('Transparent Lace Pink Bob Wig',
              style: TextStyle(fontFamily: 'times-new-roman', fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 32, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left:20.0, top: 10.0, right: 20.0, bottom: 10.0),
            child: Row(
                children: <Widget> [
                  Text('\$100.00',
                    style: TextStyle(fontSize: 18),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:80.0),
                      child: Text('Product Ratings',
                    style: TextStyle(fontSize: 18),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left:60.0),
                    child: Text('5',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ]
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 10.0),
            child: Text('An exciting way to spice up your look, this style creates an amazing look f...More',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
            child: Row(
              children: <Widget> [
                Text('Details',
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  margin: EdgeInsets.only(left: 250.0),
                  child: Icon(Icons.arrow_drop_down),
                ),
              ]
            )
          ),
          Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 1.0, bottom: 10.0),
              child: Row(
                  children: <Widget> [
                    Text('Delivery and returns',
                      style: TextStyle(fontSize: 16),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 160.0),
                      child: Icon(Icons.arrow_drop_down),
                    ),

                  ]
              )
          ),

          Container(
              child: Row(
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
                        child: Icon(Icons.shopping_bag_outlined)
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

class EightScreen extends StatelessWidget {
  const EightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctxt) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          actions: const [
            IconButton(
              icon: Icon(Icons.shopping_bag_outlined),
              onPressed: null,
              tooltip: 'Shopping Cart',
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget> [
              Container(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
                child: Row(
                  children: <Widget> [
                    Container(

                      child: Image.asset(
                        'assets/images/EighthScreenImage.png',
                        width: 100,
                        height: 100,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: <Widget> [
                          Container(
                            padding: EdgeInsets.all(7.0),
                            child: Text('Pink Bob Wig', style: TextStyle(fontWeight: FontWeight.bold))
                          ),
                          Container(
                              padding: EdgeInsets.all(7.0),
                              child: Text('BLH Paris')
                          ),
                          Container(
                              padding: EdgeInsets.all(7.0),
                              child: Text('\$49.99', style: TextStyle(fontWeight: FontWeight.bold))
                          ),
                        ]
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 70.0, right: 10.0),
                      child: Icon(Icons.favorite_border),
                    ),

                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),

              //Camera widget goes here
              Container(
                child: new CameraScreen(cameras),
              ),

              Container(
                child: Column(
                  children: <Widget> [
                    Container(
                      padding: EdgeInsets.only(top: 10.0, right: 270.0),
                      child: Text('Color palettes'),
                    ),
                    Container(
                      height: 100,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget> [
                            Container(
                              padding: EdgeInsets.all(10.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.menu, color: Colors.black),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(20),
                                  primary: Colors.black, // <-- Button color
                                ),
                              ),
                            ),


                            Container(
                              padding: EdgeInsets.all(10.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.menu, color: Color(0xFFF3B1B2)),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(20),
                                  primary: Color(0xFFF3B1B2), // <-- Button color
                                ),
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.all(10.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.menu, color: Color(0xFFF5EE7E)),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(20),
                                  primary: Color(0xFFF5EE7E), // <-- Button color
                                ),
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.all(10.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.menu, color: Color(0xFFE5AD7C)),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(20),
                                  primary: Color(0xFFE5AD7C), // <-- Button color
                                ),
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.all(10.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.menu, color: Color(0xFFB79182)),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(20),
                                  primary: Color(0xFFB79182), // <-- Button color
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
              ),

            ],
          ),
        ),
      );
  }

}

class CameraScreen extends StatefulWidget {
  List<CameraDescription>? cameras;

  CameraScreen(this.cameras);

  @override
  CameraScreenState createState() {
    return new CameraScreenState();
  }
}

class CameraScreenState extends State<CameraScreen> {

  late CameraController controller;
  XFile? videoFile;
  XFile? imageFile;
  VoidCallback? videoPlayerListener;
  VideoPlayerController? videoController;

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
    return Column(
        children: <Widget> [
          Container(
            height: 300,
            width: 400,
            child: CameraPreview(controller!),
          ),

          _captureControlRowWidget(),
          ]
    );

  }

  Widget _captureControlRowWidget() {
    final CameraController? cameraController = controller;

    return Align(
      alignment: Alignment.centerRight,
      child: IconButton(
        icon: cameraController != null && cameraController.value.isInitialized && !cameraController.value.isRecordingVideo
            ? Image.asset("assets/images/camera.png")
            : Image.asset("assets/images/camera_red.png"),
        onPressed: cameraController != null &&
            cameraController.value.isInitialized &&
            !cameraController.value.isRecordingVideo
            ? onVideoRecordButtonPressed
            : onStopButtonPressed,
      ),
    );
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
  }

  void onStopButtonPressed() {
    stopVideoRecording().then((XFile? file) {
      if (mounted) {
        setState(() {});
      }
      if (file != null) {
        showInSnackBar('Video recorded to ${file.path}');
        videoFile = file;
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

}

void logError(String code, String? message) {
  if (message != null) {
    print('Error: $code\nError Message: $message');
  } else {
    print('Error: $code');
  }
}
