import 'package:flutter/material.dart';
import 'package:texnomart/data/source/remote/response/charracters/charracters.dart';

class AllFeatures extends StatelessWidget {
  final List<Datum> charracters;
  const AllFeatures({super.key, required this.charracters});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          "Xususiyatlari",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            for(final datum in charracters)GroupItems(datum: datum,),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}

class GroupItems extends StatelessWidget {
  final Datum datum;
  const GroupItems({super.key, required this.datum});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Title(name: datum.name??""),
      for(final char in datum.characters??[]) InfoTile(name: char.name??"", info: char.value??"")
    ],);
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
