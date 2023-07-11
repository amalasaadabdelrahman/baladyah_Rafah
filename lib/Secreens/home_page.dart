import 'package:flutter/material.dart';

import '../components/custom_container.dart';
import '../components/custom_stack.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      drawer: Drawer(
        backgroundColor: Colors.green,
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
            ),
          )
        ],
        titleSpacing: 10,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              ListTile(
                trailing: Container(
                  width: 60,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Image(
                    image: AssetImage('assets/m.jpg'),
                  ),
                ),
                title: Text(
                  'أمل أسعد عبد الرحمن',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  '220190838',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '...البحث',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 28,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 45.0,
                            top: 20,
                          ),
                          child: Text(
                            'المهام',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.green,
                          thickness: 4,
                          height: 0,
                          indent: 250,
                          endIndent: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomSyack(
                                    task: ' المؤجلة',
                                    onpressed: () {
                                      Navigator.pushNamed(context, 'delayed');
                                    },
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  CustomSyack(
                                    task: '  قيد العمل',
                                    onpressed: () {
                                      Navigator.pushNamed(
                                          context, 'in_opearation');
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomSyack(
                                    task: ' الملغاة',
                                    onpressed: () {
                                      Navigator.pushNamed(context, 'canceled');
                                    },
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  CustomSyack(
                                    task: 'المنجزة',
                                    onpressed: () {
                                      Navigator.pushNamed(context, 'completed');
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                    // child: Column(
                    //   children: [
                    //     Container(
                    //       margin: EdgeInsets.all(20),
                    //       padding: EdgeInsets.symmetric(horizontal: 50),
                    //       decoration: BoxDecoration(
                    //           color: Colors.black,
                    //           borderRadius: BorderRadius.circular(50)),
                    //       child: Text(
                    //         'المهام',
                    //         style: TextStyle(
                    //           fontSize: 30,
                    //           fontWeight: FontWeight.bold,
                    //           color: Colors.white,
                    //         ),
                    //         textDirection: TextDirection.rtl,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
