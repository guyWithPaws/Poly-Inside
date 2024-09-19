import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grpc/grpc_web.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:poly_inside/src/common/repository/client_impl.dart';
import 'package:shared/shared.dart';

class ProfilePage extends StatefulWidget {
  /// {@macro profile_page}
  const ProfilePage({
    super.key, // ignore: unused_element
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ClientRepository? repository;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          width: 30,
          height: 30,
          margin: const EdgeInsets.only(left: 33),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 185, 185, 185),
            shape: BoxShape.circle,
          ),
          child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset('assets/icons/cross.svg')),
        ),
      ),
      body: Expanded(
        child: Column(
          children: [
            CircleAvatar(
              radius: 79,
              child: ClipOval(
                  child: Image.network(
                'https://img.gazeta.ru/files3/98/13461098/instapic-96812-pic905-895x505-66022.jpg',
                height: 158,
                width: 158,
                fit: BoxFit.cover,
              )),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 13, bottom: 0),
                child: Text("ID: 7921375",
                    style: TextStyle(color: Colors.grey, fontSize: 14))),
            const Padding(
                padding: EdgeInsets.only(top: 0),
                child: Text("goxa",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.bold))),
            const Text("Мудрец",
                style: TextStyle(color: Colors.grey, fontSize: 16)),
            Row(
              children: [
                const Padding(
                    padding: EdgeInsets.only(top: 15, left: 21),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Отзывы",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ))),
                Padding(
                  padding: EdgeInsets.only(top: 14, left: 10),
                  child: Container(
                    width: 20,
                    height: 26,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 233, 252, 232),
                        borderRadius: BorderRadius.circular(7)),
                    child: const Center(
                        child: Text(
                      "2",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                )
              ],
            ),
            SizedBox(height: 19,),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) { return
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 26,
                        right: 26,
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 238, 249, 237),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 11),
                                    child: CircleAvatar(
                                      radius: 20,
                                      child: ClipOval(
                                          child: Image.network(
                                        'https://img.gazeta.ru/files3/98/13461098/instapic-96812-pic905-895x505-66022.jpg',
                                        height: 40,
                                        width: 40,
                                        fit: BoxFit.cover,
                                      )),
                                    ),
                                  ),
                                  const Padding(
                                      padding: EdgeInsets.only(top: 8, left: 16),
                                      child: Text(
                                        "Руль Николай Игоревич",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0, right: 20),
                                      child: SvgPicture.asset(
                                        'assets/icons/editpen.svg',
                                        alignment: Alignment.topRight,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(16),
                                child: Text(
                                  'Лучший препод эвер!!! Спасибо что имел на протяжении сема на каждой практике и лабе. Тупа лучший!!!',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 32,
                                  ),
                                  Text(
                                    "Объективность",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  SvgPicture.asset(
                                      'assets/icons/activeindicator.svg'),
                                  SvgPicture.asset(
                                      'assets/icons/trackandstop.svg'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '5.0',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 32,
                                  ),
                                  Text(
                                    "Лояльность",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  SizedBox(
                                    width: 57,
                                  ),
                                  SvgPicture.asset(
                                      'assets/icons/activeindicator.svg'),
                                  SvgPicture.asset(
                                      'assets/icons/trackandstop.svg'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '5.0',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 32,
                                  ),
                                  Text(
                                    "Профессионализм",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  SizedBox(
                                    width: 24,
                                  ),
                                  SvgPicture.asset(
                                      'assets/icons/activeindicator.svg'),
                                  SvgPicture.asset(
                                      'assets/icons/trackandstop.svg'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '5.0',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 32,
                                  ),
                                  Text(
                                    "Резкость",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  SvgPicture.asset(
                                      'assets/icons/activeindicator.svg'),
                                  SvgPicture.asset(
                                      'assets/icons/trackandstop.svg'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '5.0',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 11, top: 30),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Text(
                                      "Июнь 2024",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                      textAlign: TextAlign.left,
                                    ),
                                    Expanded(
                                      child: SvgPicture.asset(
                                        'assets/icons/like.svg',
                                        alignment: Alignment.bottomRight,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/dislike.svg',
                                      alignment: Alignment.bottomRight,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 41,
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }
}
