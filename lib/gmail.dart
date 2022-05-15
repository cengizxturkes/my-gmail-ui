import 'package:flutter/material.dart';

class Gmail extends StatefulWidget {
  const Gmail({Key? key}) : super(key: key);

  @override
  State<Gmail> createState() => _GmailState();
}

class _GmailState extends State<Gmail> {
  late List<Collection> _items;
  @override
  void initState() {
    super.initState();

    _items = [
      Collection(Colors.black, "18Şubat",
          "Selam Cengiz ne zamandir yoksun nerelerdesin", "Ali", false),
      Collection(
          Colors.yellow,
          "18Kasım",
          "dolayı. Telefonu ve cesurca yaptı ötekinden dolayı düşünüyor. Sinema ev",
          "Cumali",
          false),
      Collection(
          Colors.deepOrange,
          "18Mart",
          "değirmeni mutlu oldular lambadaki adanaya mıknatıslı okuma sayfası ve koyun yapacakmış masanın. Cesurca yaptı ama çobanın koşuyorlar gü",
          "İsmet",
          false),
      Collection(Colors.cyan, "18Şubat",
          "Selam Cengiz ne zamandir yoksun nerelerdesin", "Ali", false),
      Collection(
          Colors.orange,
          "18Ocak",
          "dolayı. Telefonu ve cesurca yaptı ötekinden dolayı düşünüyor. Sinema ev",
          "Cumali",
          false),
      Collection(
          Colors.purple,
          "18Mart",
          "değirmeni mutlu oldular lambadaki adanaya mıknatıslı okuma sayfası ve koyun yapacakmış masanın. Cesurca yaptı ama çobanın koşuyorlar gü",
          "İsmet",
          false),
      Collection(Colors.black, "18Şubat",
          "Selam Cengiz ne zamandir yoksun nerelerdesin", "Ali", false),
      Collection(
          Colors.blue,
          "18Şubat",
          "dolayı. Telefonu ve cesurca yaptı ötekinden dolayı düşünüyor. Sinema ev",
          "Cumali",
          false),
      Collection(
          Colors.red,
          "18Şubat",
          "değirmeni mutlu oldular lambadaki adanaya mıknatıslı okuma sayfası ve koyun yapacakmış masanın. Cesurca yaptı ama çobanın koşuyorlar gü",
          "İsmet",
          false),
    ];
  }

  Widget build(BuildContext context) {
    Color iconColor = Colors.green;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(18),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search in Mails",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(),
                      ),
                      prefixIcon: Icon(Icons.menu),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Icon(Icons.person_pin),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  width: size.width - 40,
                  child: Text(
                    "PRIMARY",
                    textAlign: TextAlign.start,
                  )),
              Container(
                height: size.height - 139,
                child: ListView.builder(
                    itemCount: _items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text(_items[index].name.substring(0, 1)),
                          backgroundColor: _items[index].bgColor,
                        ),
                        trailing: Column(children: [
                          Text(_items[index].date),
                          Container(
                            height: 40,
                            child: IconButton(
                              icon: Icon(Icons.star),
                              color: iconColor,
                              onPressed: () {
                                setState(() {
                                  iconColor = Colors.redAccent;
                                });
                              },
                            ),
                          ),
                        ]),
                        title: Text(
                          _items[index].name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(_items[index].message),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.red,
          ),
          backgroundColor: Colors.white,
          onPressed: () {}),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: Colors.red),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Mail',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_outdoor_rounded),
            label: 'Meeting',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}

class Collection {
  final String name;
  final String message;
  final String date;
  final bool star;
  final Color bgColor;
  Collection(this.bgColor, this.date, this.message, this.name, this.star);
}
