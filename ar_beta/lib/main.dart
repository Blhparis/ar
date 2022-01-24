import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      home: new FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {

  @override
  Widget build (BuildContext ctxt) {
    return new Column(
        children: <Widget>[

          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new SecondScreen()),
                    );
                  },
                  child: const Text('Next', style: TextStyle(color: Colors.black)),
                ),
              ),
            ),
          ),
        ],
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Column(
      children: <Widget>[

        Expanded(
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new ThirdScreen()),
                  );
                },
                child: const Text('Next', style: TextStyle(color: Colors.black)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Column(
      children: <Widget>[

        Expanded(
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new FourthScreen()),
                  );
                },
                child: const Text('Next', style: TextStyle(color: Colors.black)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FourthScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.brown)
                      )
                  )
              ),

              onPressed: () {
                Navigator.push(ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new FifthScreen()),
                );
              },
              child: const Text('Sign in with Email'),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.brown)
                      )
                  )
              ),

              onPressed: () {
                Navigator.push(ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new FifthScreen()),
                );
              },
              child: const Text('Sign in with Facebook'),
            ),
          ),
        ],
      ),
    );
  }
}

class FifthScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Column(
      children: <Widget>[

        Expanded(
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new FirstScreen()),
                  );
                },
                child: const Text('Next', style: TextStyle(color: Colors.black)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
