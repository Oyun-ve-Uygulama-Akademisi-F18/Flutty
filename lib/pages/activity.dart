import 'package:flutter/material.dart';

class activity extends StatefulWidget {
  const activity({super.key});

  @override
  State<activity> createState() => _activityState();
}

class _activityState extends State<activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(child: Text('Aktiviteler')),
        titleTextStyle:
            TextStyle(color: Colors.black87, fontWeight: FontWeight.w900),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white70,
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.all(0),
            
            height: 60,
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(Icons.arrow_right_alt_sharp),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Bugün',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.all(15.0),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
              Icon(Icons.adjust_outlined,size: 25,),
              SizedBox(width: 27,),
                Text(
                  'Kahvaltı',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                
                
                SizedBox(
                  width: 150,
                ),
                Text(
                  '06.30',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
                
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.all(15.0),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                 Icon(Icons.adjust_outlined,size: 25,),
                 SizedBox(width: 25),
                Text(
                  'Koşu',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 180,
                ),
                Text(
                  '07.30',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.all(15.0),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                 Icon(Icons.adjust_outlined,size: 25,),
                 SizedBox(width: 25,),
                Text(
                  'Antrenman',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 124,
                ),
                Text(
                  '10.30',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.all(10),
            height: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.arrow_right_alt_sharp),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Yarın',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  width: 0,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.all(15.0),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(Icons.adjust_outlined,size: 25,),
                 SizedBox(width: 25),
                Text(
                  'Koşu',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 180,
                ),
                Text(
                  '07.30',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.all(15.0),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Icon(Icons.adjust_outlined,size: 25),
                 SizedBox(width: 25),
                Text(
                  'Antrenman',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 124,
                ),
                Text(
                  '09.30',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.all(15.0),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                 Icon(Icons.adjust_outlined,size: 25),
                 SizedBox(width: 25),
                Text(
                  'Yüzme',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 160,
                ),
                Text(
                  '11.30',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          
        ],
      ),
    );
    ;
  }
}
