
import 'package:flutter/material.dart';
import 'package:person_detail_ist/person.dart';
import 'package:person_detail_ist/person_detail_page.dart';


class PersonListPage extends StatelessWidget {
  PersonListPage({super.key});
  final List<Person> people = [
    Person(
        imageUrl: "MalalaYousafzai.jpg",
        name: "Malala Yousafzai",
        phoneNumber: "123-4567890",
        email: "malala@example.com",
        description: "Nobel Prize Laureate and Education Advocate"),
    Person(
        imageUrl: "assets/AbdulSattar.jpg",
        name: "Dr. Abdul Sattar Edhi",
        phoneNumber: "987-6543210",
        email: "edhi@example.com",
        description: "Renowned Philanthropist and Humanitarian"),
    Person(
        imageUrl: "assets/TawakkolKamran.jpg",
        name: "Tawakkol Kamran",
        phoneNumber: "555-1234567",
        email: "Tawakkol@example.com",
        description: "Nobel Peace Prize Winner and Human Rights Activist"),
    Person(
        imageUrl: "assets/MoFarah.jpg",
        name: "Mo Farah",
        phoneNumber: "777-8880000",
        email: "mofarah@example.com",
        description: "Olympic Gold Medalist (Long Distance Runner"),
    Person(
        imageUrl: "assets/IlhanUmar.jpg",
        name: "Ilhan Umar",
        phoneNumber: "333-2222444",
        email: "ilhan@example.com",
        description: "US Congresswoman and Advocate for Social Justice"),
    Person(
        imageUrl: "assets/HamzaYusuf.jpg",
        name: "Hamza Yusuf",
        phoneNumber: "666-7777888",
        email: "hamza@example.com",
        description: "Prominent Islamic Scholar and Educator"),
    Person(
        imageUrl: "assets/HakeemOlajuwan.jpg",
        name: "Hakeem Olajuwan",
        phoneNumber: "333-5555777",
        email: "hakeem@example.com",
        description: "NBA Hall of Famer and Humanitarian"),
    Person(
        imageUrl: "assets/IbtihajMuhammad.jpg",
        name: "Ibtihaj Muhammad",
        phoneNumber: "888-5553333",
        email: "ibtihaj@example.com",
        description: "Olympic Medalist and Fencer"),
    Person(
        imageUrl: "assets/ReemAlHashimy.jpg",
        name: "Reem AL Hashimy",
        phoneNumber: "111-2223333",
        email: "reem@example.com",
        description: "Minister of State for International Cooperation (UAE)"),
    Person(
        imageUrl: "assets/AdnanPachachi.jpg",
        name: "Dr. Adnan Pachachi",
        phoneNumber: "444-6666777",
        email: "adnan@example.com",
        description: "Diplomat and Politician")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Person Details'),
      ),
      body: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index){
            return Card(
              elevation: 5,
              color: Colors.lightGreenAccent,
              child: ListTile(
                // dense: true,
                // visualDensity: const VisualDensity(vertical: 4),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(people[index].imageUrl),
                ),
                title: Text(
                  people[index].name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Text(people[index].description),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PersonDetailPage(person: people[index]),
                      ),
                  );
                },
                trailing: const Icon(Icons.keyboard_double_arrow_right),
              ),
            );
          }),
    );
  }
}
