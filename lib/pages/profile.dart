import 'package:flutter/material.dart';
import 'package:flutty/constants/constants.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.profileAppbartext),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.star)),
            Tab(icon: Icon(Icons.people)),
            Tab(icon: Icon(Icons.score)),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: Constants.profileContainerheight,
            color: Constants.specialGrey,
            child: Center(
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: NetworkImage(Constants.profileImage),
              ),
            ),
          ),
         Constants.sizedBoxHeight20,
          Center(
            child: Text(
              'John Doe',
              style: TextStyle(
                fontSize: Constants.profilefontSizemax,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Constants.sizedBoxHeight10,
          Center(
            child: Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: Constants.profilefontSize,
                color: Constants.grey,
              ),
            ),
          ),
          Constants.sizedBoxHeight20,
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Text(
                      'Badges',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Constants.sizedBoxHeight5,
                    Text(
                      '10',
                      style: TextStyle(
                        fontSize: Constants.profilefontSize,
                        color:Constants.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Friends',
                      style: TextStyle(
                        fontWeight: Constants.profileFontweight,
                      ),
                    ),
                    Constants.sizedBoxHeight5,
                    Text(
                      '50',
                      style: TextStyle(
                        fontSize: Constants.profilefontSize,
                        color: Constants.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Scores',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Constants.sizedBoxHeight5,
                    Text(
                      '100',
                      style: TextStyle(
                        fontSize: Constants.profilefontSize,
                        color: Constants.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StarTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(Constants.profileStartext),
    );
  }
}
