import 'package:flutter/material.dart';

class AllFeatures extends StatefulWidget {
  const AllFeatures({super.key});

  @override
  State<AllFeatures> createState() => _AllFeaturesState();
}

class _AllFeaturesState extends State<AllFeatures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          "Xususiyatlari",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            Title(name: "Asosiy xususiyatlar",),
            InfoTile(name: "Brend", info: "Premier"),
            InfoTile(name: "Brend", info: "Premier"),
            InfoTile(name: "Brend", info: "Premier"),
            Title(name: "Asosiy xususiyatlar",),
            InfoTile(name: "Brend a;sdlfBrend a;sdlfBrend a;sdlf", info: "Premier"),
            InfoTile(name: "Brend", info: "Premier"),
            InfoTile(name: "Brend", info: "Premier"),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  final String name;
  const Title({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
      child: Text(
        name,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final String name;
  final String info;

  const InfoTile({super.key, required this.name, required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
      child: Row(
        children: [
          Expanded(
              child: Text(
            name,
            style: const TextStyle(
                color: Colors.black54, fontSize: 14, fontWeight: FontWeight.w400),
          )),
          Expanded(
              child: Text(
                textAlign: TextAlign.end,
            info,
            style: const TextStyle(
                color: Colors.black54, fontSize: 14, fontWeight: FontWeight.w400),
          )),
        ],
      ),
    );
  }
}
