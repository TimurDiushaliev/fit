import 'package:flutter/material.dart';

class MyCalorieMaintencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
        title: Text('Fit'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Text(
            'The Mifflin-St Jeor formula:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),

          //biometrical data
          //weight
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(hintText: 'kg..'),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: Text(
                    'Weight',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),

          //height
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(hintText: 'cm..'),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: Text(
                    'Height',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),

          //age
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(hintText: 'int..'),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: Text(
                    'Age',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),

          // activity
          Text(
            'Your activity:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                  child: Text('low',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  color: Colors.black,
                  onPressed: () {}),
              MaterialButton(
                  child: Text('medium',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  color: Colors.grey,
                  onPressed: () {}),
              MaterialButton(
                  child: Text('high',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  color: Colors.grey,
                  onPressed: () {}),
            ],
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),

          MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.35,
                    vertical: MediaQuery.of(context).size.height * 0.025),
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
