import 'package:bwa_chatty/pages/chat_page.dart';
import 'package:bwa_chatty/theme.dart';
import 'package:bwa_chatty/widgets/chat_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatPage()));
        },
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
         child: Center(
           child: SingleChildScrollView(
             child: Column(
               children: [
                 SizedBox(
                   height: 40,
                 ),
                 ClipOval(
                   child: Image.asset(
                     'assets/images/profile_pic.jpg',
                     height: 100,
                     width: 100,
                     fit: BoxFit.cover,
                   ),
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 Text(
                   'Dwitio Ahmad Pranoto',
                   style: TextStyle(
                       fontSize: 20,
                       color: whiteColor
                   ),
                 ),
                 SizedBox(
                   height: 2,
                 ),
                 Text(
                   'Freelance Engineer',
                   style: TextStyle(
                       color: lightBlueColor,
                       fontSize: 16
                   ),
                 ),
                 SizedBox(
                   height: 30,
                 ),
                 Container(
                   width: double.infinity,
                   padding: EdgeInsets.all(30),
                   decoration: BoxDecoration(
                       color: whiteColor,
                       borderRadius: BorderRadius.vertical(
                           top: Radius.circular(40)
                       )
                   ),
                   child:
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         'Friends',
                         style: titleTextStyle,
                       ),
                       ChatTile(
                         imageUrl: 'assets/images/kucing.jpg',
                         name: 'Najib',
                         text: 'Maaf, saya akan berusaha lg...',
                         time: 'Now',
                         unread: true,
                       ),
                       ChatTile(
                         imageUrl: 'assets/images/kelinci.jpg',
                         name: 'Faris',
                         text: 'Oke, nanti saya perbaiki lagi....',
                         time: '23.50',
                         unread: false,
                       ),
                       SizedBox(
                         height: 30,
                       ),
                       Text(
                         'Groups',
                         style: titleTextStyle,
                       ),
                       ChatTile(
                           imageUrl: 'assets/images/grup1.png',
                           name: 'Forum Xiaomi',
                           text: 'Mengapa kita semua butuh...',
                           time: '12.15',
                           unread: false
                       ),
                       ChatTile(
                           imageUrl: 'assets/images/grup2.jpg',
                           name: 'Forum Oppo',
                           text: 'Gan mau tanya dong ane kan...',
                           time: '8.11',
                           unread: true
                       ),
                       ChatTile(
                           imageUrl: 'assets/images/grup3.jpeg',
                           name: 'Forum Vivo',
                           text: 'Ini rasanya kalo punya seb...',
                           time: '8.11',
                           unread: true
                       ),
                     ],
                   ),
                 )
               ],
             ),
           )
         )
      ),
    );
  }
}