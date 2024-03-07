import 'package:flutter/material.dart';
import 'chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: HomePage(),
    );
  }
}

class Person{
  String? name;
  String? message;
  int? sms;

  Person({
    this.name,
    this.message,
    this.sms
  });
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Messagerie',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.person_sharp,
                color: Colors.white,
              )
          )
        ],
      ),

      body: Column(
        children: [
          MenuSection(),
          Expanded(
              child: MessageSection()
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage() ));
        },
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}

class MenuSection extends StatelessWidget {
  final List menuItems = ['Boîte de réception', 'Messages envoyés', 'Brouillon'];
  MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.blue,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.all(1),
          child: Row(
            children: menuItems.map((item) {
              return Container(
                child: TextButton(
                  onPressed: (){},
                  child: Text(
                    item,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class MessageSection extends StatelessWidget {
  MessageSection({super.key});
  @override
  Widget build(BuildContext context) {

    final List<Person> personnes = [
      Person(name: 'Joel Prince', message: "Je suis a la maison", sms: 1),
      Person(name: 'Godwill', message: "Je suis a la maison", sms: 5),
      Person(name: 'Emery', message: "Je suis a la maison", sms: 9),
      Person(name: 'Josias',message: "Je suis a la maison", sms: 6),
      Person(name: 'Appolinaire', message: "Je suis a la maison", sms: 4),
      Person(name: 'Pamela', message: "Je suis a la maison", sms: 2),
      Person(name: 'Géoffroy', message: "Je suis a la maison", sms: 6),
      Person(name: 'Rustique', message: "Je suis a la maison", sms: 20),
      Person(name: 'Séphora', message: "Je suis a la maison", sms: 1),
      Person(name: 'Alain', message: "Je suis a la maison", sms: 6),
      Person(name: 'Rodrigue', message: "Je suis a la maison", sms: 8),
      Person(name: 'Jean', message: "Je suis a la maison", sms: 7),
      Person(name: 'Marc', message: "Je suis a la maison", sms: 14),
      Person(name: 'Luc', message: "Je suis a la maison", sms: 2),
      Person(name: 'Pierre', message: "Je suis a la maison", sms: 3),
      Person(name: 'Paul', message: "Je suis a la maison", sms: 5),
      Person(name: 'Henri', message: "Je suis a la maison", sms: 1),
      Person(name: 'Amour', message: "Je suis a la maison", sms: 3),
      Person(name: 'Aimé', message: "Je suis a la maison", sms: 4),
      Person(name: 'Flora', message: "Je suis a la maison", sms: 2),
    ];

    return Container(
      child: ListView(
        children: [
          ...personnes.map((e) =>
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage() ));
                },
                splashColor: Colors.blue,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/a.jpg'),
                  ),
                  title: Text(e.name.toString()),
                  subtitle: Text(
                      e.message.toString(),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                  ),
                  trailing: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      e.sms.toString(),
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              )
          ).toList()
        ],
      ),
    );
  }
}
