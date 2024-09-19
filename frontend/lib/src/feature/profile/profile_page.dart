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
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: 30,
            height: 30,
            margin: EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 185, 185, 185),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset('assets/icons/cross.svg'),
          ),
        ),
      ),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          leading: Text('huuuuuui'),
          centerTitle: true,
          expandedHeight: 300,
          pinned: true,
          flexibleSpace: LayoutBuilder(
            builder: (context, constraints) {
              return FlexibleSpaceBar(
                title: FittedBox(
                  fit: BoxFit.cover,
                  child: CircleAvatar(
                    radius: 158 / 2,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/beer.jpg',
                        height: 158,
                        width: 158,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SliverList.separated(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
            height: 8,
          ),
        )
      ]),
    );
  }
}

// Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             AnimatedPositioned(
//               left: 10,
//               top: 50,
//               duration: Duration(seconds: 2),
//               child: CircleAvatar(
//                 radius: 79,
//                 child: ClipOval(
//                     child: Image.asset(
//                   'assets/beer.jpg',
//                   height: 158,
//                   width: 158,
//                   fit: BoxFit.cover,
//                 )),
//               ),
//             ),
//             const Text("ID: 7921375",
//                 style: TextStyle(color: Colors.grey, fontSize: 14)),
//             const Text("goxa",
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 36,
//                     fontWeight: FontWeight.bold)),
//             const Text("Мудрец",
//                 style: TextStyle(color: Colors.grey, fontSize: 16)),
//             Row(
//               children: [
//                 const Text(
//                   "Отзывы",
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(width: 8),
//                 Container(
//                   width: 30,
//                   height: 30,
//                   decoration: BoxDecoration(
//                       color: const Color.fromARGB(255, 233, 252, 232),
//                       borderRadius: BorderRadius.circular(7)),
//                   child: const Center(
//                       child: Text(
//                     "2",
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   )),
//                 )
//               ],
//             ),
//             const SizedBox(
//               height: 16,
//             ),
//             Expanded(
//               child: ListView.separated(
//                 separatorBuilder: (context, index) =>
//                     const SizedBox(height: 20),
//                 itemCount: 10,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     decoration: BoxDecoration(
//                         color: const Color.fromARGB(255, 238, 249, 237),
//                         borderRadius: BorderRadius.circular(12)),
//                     child: Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   CircleAvatar(
//                                     radius: 20,
//                                     child: ClipOval(
//                                         child: Image.network(
//                                       'https://img.gazeta.ru/files3/98/13461098/instapic-96812-pic905-895x505-66022.jpg',
//                                       height: 40,
//                                       width: 40,
//                                       fit: BoxFit.cover,
//                                     )),
//                                   ),
//                                   const SizedBox(width: 16),
//                                   const Text(
//                                     "Руль Николай Игоревич",
//                                     style: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                               SvgPicture.asset(
//                                 'assets/icons/editpen.svg',
//                                 alignment: Alignment.topRight,
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 8),
//                           const Text(
//                             'Лучший препод эвер!!! Спасибо что имел на протяжении сема на каждой практике и лабе. Тупа лучший!!!',
//                             style: TextStyle(fontSize: 14),
//                           ),
//                           const SizedBox(height: 8),
//                           Container(
//                             child: const Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text('Объективность'),
//                                     Text('Лояльнось'),
//                                     Text('Профессионализм'),
//                                     Text('Резкость'),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         SizedBox(
//                                             width: 150,
//                                             child: LinearProgressIndicator()),
//                                         SizedBox(
//                                           height: 20,
//                                         ),
//                                         SizedBox(
//                                             width: 150,
//                                             child: LinearProgressIndicator()),
//                                         SizedBox(
//                                             width: 150,
//                                             child: LinearProgressIndicator()),
//                                         SizedBox(
//                                             width: 150,
//                                             child: LinearProgressIndicator()),
//                                       ],
//                                     ),
//                                     SizedBox(height: 30),
//                                     Column(
//                                       children: [
//                                         const Text('5.0',
//                                             style: TextStyle(
//                                                 fontSize: 14,
//                                                 fontWeight: FontWeight.bold)),
//                                         const Text('5.0',
//                                             style: TextStyle(
//                                                 fontSize: 14,
//                                                 fontWeight: FontWeight.bold)),
//                                         const Text('5.0',
//                                             style: TextStyle(
//                                                 fontSize: 14,
//                                                 fontWeight: FontWeight.bold)),
//                                         const Text('5.0',
//                                             style: TextStyle(
//                                                 fontSize: 14,
//                                                 fontWeight: FontWeight.bold)),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(height: 16),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               const Text("Июнь 2024",
//                                   style: TextStyle(
//                                       fontSize: 10, color: Colors.grey)),
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Row(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     children: [
//                                       SvgPicture.asset(
//                                         'assets/icons/like.svg',
//                                         alignment: Alignment.bottomRight,
//                                       ),
//                                       const SizedBox(
//                                         width: 8,
//                                       ),
//                                       const Text(
//                                         "5",
//                                         style: TextStyle(
//                                             fontSize: 16, color: Colors.grey),
//                                       ),
//                                     ],
//                                   ),
//                                   const SizedBox(width: 16),
//                                   Row(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     children: [
//                                       SvgPicture.asset(
//                                         'assets/icons/dislike.svg',
//                                         alignment: Alignment.bottomRight,
//                                       ),
//                                       const SizedBox(
//                                         width: 8,
//                                       ),
//                                       const Text(
//                                         "5",
//                                         style: TextStyle(
//                                             fontSize: 16, color: Colors.grey),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             )
//           ],
//         ),
//       ),