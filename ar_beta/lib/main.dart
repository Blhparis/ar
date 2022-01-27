import 'package:flutter/material.dart';

void main() {
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
                    child:
                    Container(
                      padding: const EdgeInsets.only(top: 70.0),
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
                    child: Container(
                        padding: const EdgeInsets.only(top: 70.0),
                        child: const Text('Bundles', style: TextStyle(fontSize: 20, color: Colors.black))
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
                      child: Container(
                          padding: const EdgeInsets.only(top: 70.0),
                          child: const Text('Clip-ins', style: TextStyle(fontSize: 20, color: Colors.black))
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
                      child: Container(
                          padding: const EdgeInsets.only(top: 70.0),
                          child: const Text('Medical', style: TextStyle(fontSize: 20, color: Colors.black))
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
                      child: Container(
                          padding: const EdgeInsets.only(top: 70.0),
                          child: const Text('Hair Care', style: TextStyle(fontSize: 20, color: Colors.black))
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
                      child: Container(
                          padding: const EdgeInsets.only(top: 70.0),
                          child: const Text('Accessories', style: TextStyle(fontSize: 20, color: Colors.black))
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
