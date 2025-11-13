import 'package:flutter/material.dart';
import 'package:healthcare/constant/constants.dart';

class TopDoctors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Top Doctors",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF221F1F),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return topdoctors();
          },
          separatorBuilder: (context, index) => Divider(color: Colors.white),
          itemCount: 20,
        ),
      ),
    );
  }
}
