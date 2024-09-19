import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:poly_inside/src/feature/home/stars_rating.dart';

/// {@template professor_profile_page}
/// ProfessorProfilePage widget.
/// {@endtemplate}
class ProfessorProfilePage extends StatefulWidget {
  /// {@macro professor_profile_page}
  const ProfessorProfilePage({
    super.key, // ignore: unused_element
  });

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  @internal
  static _ProfessorProfilePageState? maybeOf(BuildContext context) =>
      context.findAncestorStateOfType<_ProfessorProfilePageState>();

  @override
  State<ProfessorProfilePage> createState() => _ProfessorProfilePageState();
}

/// State for widget ProfessorProfilePage.
class _ProfessorProfilePageState extends State<ProfessorProfilePage> {
  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
  }

  @override
  void didUpdateWidget(covariant ProfessorProfilePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Widget configuration changed
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // The configuration of InheritedWidgets has changed
    // Also called after initState but before build
  }

  @override
  void dispose() {
    // Permanent removal of a tree stent
    super.dispose();
  }
  /* #endregion */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.green,
          ),
          width: 200,
          height: 64,
          child: const Center(
            child: Text('Написать отзыв'),
          ),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              //pinned: true,
              expandedHeight: 500,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 79,
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
                    const Text(
                      'Руль Игорь Николаевич',
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StarsRating(
                            color: Colors.yellow,
                            value: 4.8,
                            baseColor: Colors.grey),
                        SizedBox(width: 16.0),
                        Text('4.8')
                      ],
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: MediaQuery.of(context).size.width - 32,
                      height: 180,
                      decoration: BoxDecoration(
                          color: const Color(0xffEEF9EF),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const Text('Отзывы'),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 31,
                          height: 26,
                          decoration: BoxDecoration(
                              color: const Color(0xffEEF9EF),
                              borderRadius: BorderRadius.circular(7)),
                          child: const Center(
                            child: Text('15'),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ),
            SliverList.separated(
              itemCount: 15,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffEEF9EF),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 32,
                      height: 100,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/beer.jpg',
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Center(
//               child: CircleAvatar(
//                 radius: 79,
//                 child: ClipOval(
//                   child: Image.asset(
//                     'assets/beer.jpg',
//                     height: 138,
//                     width: 138,
//                   ),
//                 ),
//               ),
//             ),
//             const Text(
//               'Руль Игорь Николаевич',
//               style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
//             ),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 StarsRating(
//                     color: Colors.yellow, value: 4.8, baseColor: Colors.grey),
//                 SizedBox(width: 16.0),
//                 Text('4.8')
//               ],
//             ),
//             const SizedBox(height: 16),
//             Container(
//               width: MediaQuery.of(context).size.width - 32,
//               height: 180,
//               decoration: BoxDecoration(
//                   color: Colors.green, borderRadius: BorderRadius.circular(12)),
//             ),
//             const SizedBox(
//               height: 16,
//             ),
//             Row(
//               children: [
//                 const Text('Отзывы'),
//                 const SizedBox(
//                   width: 8,
//                 ),
//                 Container(
//                   width: 31,
//                   height: 26,
//                   decoration: BoxDecoration(
//                       color: Colors.green,
//                       borderRadius: BorderRadius.circular(7)),
//                   child: const Center(
//                     child: Text('15'),
//                   ),
//                 )
//               ],
//             ),
//             const SizedBox(
//               height: 8,
//             ),
//             Expanded(
//               child: ListView.separated(
//                 itemCount: 15,
//                 separatorBuilder: (context, index) => const SizedBox(
//                   height: 8,
//                 ),
//                 itemBuilder: (context, index) {
//                   return Container(
//                     width: MediaQuery.of(context).size.width - 32,
//                     height: 290,
//                     decoration: BoxDecoration(
//                       color: Colors.green,
//                       borderRadius: BorderRadius.circular(12)
//                     ),
//                     child: Column(
//                       children: [
//                         Row(
//                           children: [
//                             CircleAvatar(
//                               radius: 20,
//                               child: ClipOval(
//                                 child: Image.asset(
//                                   'assets/beer.jpg',
//                                   height: 40,
//                                   width: 40,
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             )
//           ],
//         ),
//       )),
//     );
//   }
// }
