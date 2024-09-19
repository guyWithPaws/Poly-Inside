// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:poly_inside/src/common/widgets/review_title.dart';
import 'package:poly_inside/src/common/widgets/stars_rating.dart';
import 'package:poly_inside/src/feature/review/review_page.dart';

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
  ScrollController? _scrollController;
  bool? enable;

  /* #region Lifecycle */
  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController?.addListener(scrollListener);

    enable = false;
    super.initState();
    // Initial state initialization
  }

  void scrollListener() {
    if (_scrollController?.position.pixels !=
        _scrollController?.position.minScrollExtent) {
      setState(() {
        enable = true;
      });
    } else {
      setState(() {
        enable = false;
      });
    }
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          enable!
              ? _scrollController?.jumpTo(0)
              : Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                      builder: (builderContext) => const ReviewPage()));
        },
        backgroundColor: Colors.green,
        label: Center(
          child: enable!
              ? const Icon(CupertinoIcons.up_arrow)
              : const Text('Написать отзыв'),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              pinned: true,
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
                          value: 4.8,
                          size: Size(40, 40),
                        ),
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
                return const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: ReviewTitle());
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
