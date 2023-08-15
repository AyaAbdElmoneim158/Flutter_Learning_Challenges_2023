import 'package:flutter/material.dart';

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff284461),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.black26,
            radius: 110,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://img.freepik.com/free-vector/abstract-logo-flame-shape_1043-44.jpg?size=338&ext=jpg"),
              radius: 105,
            ),
          ),
          const SizedBox(height: 14),
          Text(
            "Aya Abd Elmoneim",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Colors.white, fontFamily: "Pacifico", fontSize: 32), //
          ),
          Text(
            "student .... ....",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.grey, fontWeight: FontWeight.w600), //
          ),
          const SizedBox(height: 14),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Card(
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Color(0xff284461),
                ),
                title: Text(
                  "(+01) 1234787738",
                  style: TextStyle(
                      color: Color(0xff284461),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Card(
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Color(0xff284461),
                ),
                title: Text(
                  "Aya@gmail.com",
                  style: TextStyle(
                      color: Color(0xff284461),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
