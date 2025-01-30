import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lab8/pages/mainfoodpage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // ดึงข้อมูลผู้ใช้จาก Firebase Authentication
    User? user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome ${user?.displayName ?? 'User'}"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pop(context); // กลับไปหน้าก่อนหน้า
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // แสดงรูปโปรไฟล์
            CircleAvatar(
              radius: 50,
              backgroundImage: user?.photoURL != null
                  ? NetworkImage(user!.photoURL!)
                  : AssetImage('assets/default_profile.png') as ImageProvider,
            ),
            SizedBox(height: 20),

            // แสดงข้อมูลชื่อ อีเมล และเวลาเข้าสู่ระบบล่าสุด
            InfoCard(title: "Display Name", value: user?.displayName ?? "N/A"),
            InfoCard(title: "Email", value: user?.email ?? "N/A"),
            InfoCard(
              title: "Last Sign In",
              value: user?.metadata.lastSignInTime.toString() ?? "N/A",
            ),
            SizedBox(height: 20),
            
            // ปุ่ม Go to Foods Menu
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainFoodPage()),
                );
              },
              child: Text("Go to Foods Menu"),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget สำหรับแสดงข้อมูลแต่ละบรรทัด
class InfoCard extends StatelessWidget {
  final String title;
  final String value;

  const InfoCard({required this.title, required this.value, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Card(
        child: ListTile(
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(value),
        ),
      ),
    );
  }
}

// สร้างหน้า FoodsMenuPage เพื่อให้ Navigation ทำงานได้
class FoodsMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Foods Menu")),
      body: Center(child: Text("This is the Foods Menu Page")),
    );
  }
}