
import 'package:flutter/material.dart';
import 'package:person_detail_ist/person.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonDetailPage extends StatelessWidget {

  final Person person;
  const PersonDetailPage({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Person Detail"),),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: 300,
              width: 250,
              child: Image.asset(
                person.imageUrl,
                fit: BoxFit.cover,

              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DecoratedBox(
              decoration: const BoxDecoration(color: Colors.greenAccent),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Name: ${person.name}",),
                  ),
                  ListTile(
                    title: Text("Phone: ${person.phoneNumber}"),
                    onTap: (){
                      _makePhoneCall(person.phoneNumber);
                    },
                  ),
                  ListTile(
                    title: Text("Email: ${person.email}"),
                    onTap: (){
                      _sendEmail(person.email);
                    },
                  ),
                  ListTile(
                    title: Text("Description: ${person.description}"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _makePhoneCall(String phoneNumber) async {
    final url = 'tel:$phoneNumber';
    if(await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  _sendEmail(String email) async{
    final url = 'mailto: $email';
    if(await canLaunchUrl(url as Uri)){
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
