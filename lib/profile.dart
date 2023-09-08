import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //toolbarHeight: 80,

          elevation: 70,
          backgroundColor: Colors.blue,

          title: const Text("Profile" , style:
          TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white
          ),),
          centerTitle: true,

        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/pp.png'),radius: 20,),
              SizedBox(height: 4,),
              Text("Jhon Deo",style:
              TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.green,
                  fontSize: 16,
          ),
              ),
              SizedBox(height: 2,),
              Text("Flutter batch 4",style:
              TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.blue,
                fontSize: 12,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
