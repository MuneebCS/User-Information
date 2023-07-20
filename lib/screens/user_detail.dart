import 'package:flutter/material.dart';
import 'package:identify_user/models/User_info.dart';

class UserDetailPage extends StatelessWidget {
  final Result user;

  UserDetailPage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${user.name.title} ${user.name.first} ${user.name.last}',
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(user.picture.large),
                radius: 50,
              ),
            ),
            SizedBox(height: 10),
            Divider(
              thickness: 2,
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Profile',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Name : ${user.name.title} ${user.name.first} ${user.name.last}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Gender : ${user.gender.toString().split('.').last}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Email : ${user.email}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Date of Birth : ${user.dob.date.toString().split(' ')[0]}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Phone : ${user.phone}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Cell : ${user.cell}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'ID : ${user.id.name} - ${user.id.value}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Divider(
              thickness: 2,
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Address',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Location : ${user.location.street.number} ${user.location.street.name}, ${user.location.city}, ${user.location.state}, ${user.location.country}, ${user.location.postcode}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Street : ${user.location.street.number} ${user.location.street.name}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'City : ${user.location.city}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Postcode : ${user.location.postcode}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Country : ${user.location.country}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Coordinates : ${user.location.coordinates.latitude}, ${user.location.coordinates.longitude}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Timezone : ${user.location.timezone.offset} - ${user.location.timezone.description}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Divider(
              thickness: 2,
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Login Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'UUID : ${user.login.uuid}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Username : ${user.login.username}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Password : ${user.login.password}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Salt : ${user.login.salt}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'MD5 : ${user.login.md5}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'SHA-1 : ${user.login.sha1}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'SHA-256 : ${user.login.sha256}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
