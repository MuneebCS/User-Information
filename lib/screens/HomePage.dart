import 'package:flutter/material.dart';
import 'package:identify_user/models/User_info.dart';
import 'package:identify_user/screens/user_detail.dart';
import 'package:identify_user/services/remote_services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Result> _users = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    try {
      Userinfo response = await RemoteServices().fetchUserInfo();
      setState(() {
        _users = response.results;
      });
    } catch (error) {
      print("Error Fetching data : $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Our Users"),
      ),
      body: ListView.builder(
        itemCount: _users.length,
        itemBuilder: (context, index) {
          final user = _users[index];
          return Card(
            elevation: 6,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(user.picture.thumbnail),
              ),
              title: Text(
                '${user.name.title} ${user.name.first} ${user.name.last}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle:
                  Text('Gender: ${user.gender.toString().split('.').last}'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                _navigateToUserDetail(context, user);
              },
            ),
          );
        },
      ),
    );
  }
}

void _navigateToUserDetail(BuildContext context, Result user) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => UserDetailPage(user: user),
    ),
  );
}
