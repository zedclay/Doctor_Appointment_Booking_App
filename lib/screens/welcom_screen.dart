import 'package:doctor_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'Home_Screen.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                pColor.withOpacity(0.8),
                pColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset("assets/images/doctors.png"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Doctors Online",
                style: TextStyle(
                  color: wColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Appoint your Doctor",
                style: TextStyle(
                  color: wColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                color: wColor,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text(
                      "Let's Go",
                      style: TextStyle(
                        color: pColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Image.asset(
                "assets/images/lined heart.png",
                color: wColor,
                scale: 2,
                width: 200,
                height: 100,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
