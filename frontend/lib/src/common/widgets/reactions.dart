import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:like_button/like_button.dart';
import 'package:shared/shared.dart';

enum ReactionType {
  like,
  dislike;

  String get path {
    switch (this) {
      case ReactionType.like:
        return 'assets/icons/like.svg';
      case ReactionType.dislike:
        return 'assets/icons/dislike.svg';
    }
  }
}

class Reactions extends StatefulWidget {
  final Review? review;

  const Reactions({
    super.key,
    this.review, // ignore: unused_element
  });

  @override
  // ignore: library_private_types_in_public_api
  _ReactionsState createState() => _ReactionsState();
}

class _ReactionsState extends State<Reactions> with TickerProviderStateMixin {
  AnimationController? _likeAnimationController;
  AnimationController? _dislikeAnimationController;

  bool isLiked = false;
  bool isDisliked = false;
  int likeCount = 10;
  int dislikeCount = 5;

  @override
  void initState() {
    super.initState();
    _likeAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(
          milliseconds: 200), // продолжительность анимации в миллисекундах
    );
    _dislikeAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(
          milliseconds: 200), // продолжительность анимации в миллисекундах
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isDisliked = false;
                  isLiked = !isLiked;
                });
                isLiked?_likeAnimationController?.forward():_likeAnimationController?.reverse();
                _dislikeAnimationController!.reverse();
              },
              child: ScaleTransition(
                scale: Tween<double>(
                  begin: 1.0,
                  end: 1.2,
                ).animate(_likeAnimationController!),
                child: SvgPicture.asset(
                  'assets/icons/like.svg',
                  alignment: Alignment.bottomRight,
                  color: isLiked?Color.fromARGB(255, 34, 166, 64):Colors.grey,
                ),
              ),
            ),
            // LikeButton(
            //     size: 24,
            //     isLiked: isLiked,
            //     likeCount: likeCount,
            //     likeCountPadding: EdgeInsets.only(left: 7),
            //     bubblesColor: BubblesColor(dotPrimaryColor: Color.fromARGB(255, 34, 166, 64), dotSecondaryColor: Colors.transparent),
            //     circleColor: CircleColor(start: Colors.transparent, end: Colors.transparent),
            //     onTap:(isLiked) async {
            //       if (isDisliked)setState(() {
            //         isDisliked = false;
            //       });
            //       isLiked = !isLiked;
            //       likeCount += isLiked?1:-1;
            //       return isLiked;
            //     },
            //     likeBuilder: (isLiked) {
                  // final color = isLiked?Color.fromARGB(255, 34, 166, 64):Colors.grey;
                  // return SvgPicture.asset(
                  //   'assets/icons/like.svg',
                  //   alignment: Alignment.bottomRight,
                  //   color: color,
                  // );
            //     },
            //     countBuilder: (likeCount, isLiked, text) {
            //       Color? counterColor = isLiked?Colors.black:Colors.grey;
            //       return Text(
            //         // '${widget.review!.likes}',
            //         text,
            //         style: TextStyle(fontSize: 16, color: counterColor),
            //       );
            //     }),
            const SizedBox(
              width: 8,
            ),
            // Text(
            //   '${widget.review!.likes}',
            //   style: const TextStyle(fontSize: 16, color: Colors.grey),
            // ),
          ],
        ),
        const SizedBox(width: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isLiked = false;
                  isDisliked = !isDisliked;
                });
                isDisliked?_dislikeAnimationController?.forward():_dislikeAnimationController?.reverse();
                _likeAnimationController!.reverse();
              },
              child: ScaleTransition(
                scale: Tween<double>(
                  begin: 1.0,
                  end: 1.2,
                ).animate(_dislikeAnimationController!),
                child: SvgPicture.asset(
                  'assets/icons/dislike.svg',
                  alignment: Alignment.bottomRight,
                  color: isDisliked?Colors.red:Colors.grey,
                ),
              ),
            ),
            // LikeButton(
            //     size: 24,
            //     isLiked: isDisliked,
            //     likeCount: dislikeCount,
            //     likeCountPadding: EdgeInsets.only(left: 7),
            //     bubblesColor: BubblesColor(dotPrimaryColor: Colors.red, dotSecondaryColor: Colors.transparent),
            //     circleColor: CircleColor(start: Colors.transparent, end: Colors.transparent),
            //     onTap:(isDisliked) async {
            //       if (isLiked){
            //         setState(() {
            //           isLiked = false;
            //         });
            //       }
            //       isDisliked = !isDisliked;
            //       dislikeCount += isDisliked?1:-1;
            //       return isDisliked;
            //     },
            //     likeBuilder: (isDisliked) {
            //       final color = isDisliked?Colors.red:Colors.grey;
            //       return SvgPicture.asset(
            //         'assets/icons/dislike.svg',
            //         alignment: Alignment.bottomRight,
            //         color: color,
            //       );
            //     },
            //     countBuilder: (dislikeCount, isDisliked, text) {
            //       Color? counterColor = isDisliked?Colors.black:Colors.grey;
            //       return Text(
            //         // '${widget.review!.likes}',
            //         text,
            //         style: TextStyle(fontSize: 16, color: counterColor),
            //       );
            //     }),
            // SvgPicture.asset(
            //   'assets/icons/dislike.svg',
            //   alignment: Alignment.bottomRight,
            // ),
            // LikeButton(
            //     size: 24,
            //     isLiked: isDisliked,
            //     likeCount: dislikeCount,
            //     likeCountPadding: EdgeInsets.only(left: 7),
            //     bubblesColor: BubblesColor(dotPrimaryColor: Colors.red, dotSecondaryColor: Colors.transparent),
            //     circleColor: CircleColor(start: Colors.transparent, end: Colors.transparent),
            //     likeCountAnimationDuration: Duration(microseconds: 0),
            //     onTap:(isDisiked) async {
            //       this.isDisliked = !isDisiked;
            //       dislikeCount += this.isDisliked?1:-1;
            //       return !isDisliked;
            //     },
            //     likeBuilder: (isDisliked) {
            //       final color = isDisliked?Colors.red:Colors.grey;
            //       return SvgPicture.asset(
            //         'assets/icons/dislike.svg',
            //         alignment: Alignment.bottomRight,
            //         color: color,
            //       );
            //     },
            //     countBuilder: (disikeCount, isDisliked, text) {
            //       Color? counterColor = isDisliked?Colors.black:Colors.grey;
            //       return Text(
            //         // '${widget.review!.likes}',
            //         text,
            //         style: TextStyle(fontSize: 16, color: counterColor),
            //       );
            //     }),
            const SizedBox(
              width: 8,
            ),
            // Text(
            //   '${widget.review!.dislikes}',
            //   style: const TextStyle(fontSize: 16, color: Colors.grey),
            // ),
          ],
        ),
      ],
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:shared/shared.dart';

// enum ReactionType {
//   like,
//   dislike;

//   String get path {
//     switch (this) {
//       case ReactionType.like:
//         return 'assets/icons/like.svg';
//       case ReactionType.dislike:
//         return 'assets/icons/dislike.svg';
//     }
//   }
// }

// class Reactions extends StatefulWidget {
//   final Review? review;

//   const Reactions({
//     super.key,
//     this.review, // ignore: unused_element
//   });

//   @override
//   // ignore: library_private_types_in_public_api
//   _ReactionsState createState() => _ReactionsState();
// }

// class _ReactionsState extends State<Reactions> with TickerProviderStateMixin {
//   AnimationController? _animationController;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 _animationController?.forward();
//               },
//               child: ScaleTransition(
//                 scale: _animationController!,
//                 child: SvgPicture.asset(
//                   'assets/icons/like.svg',
//                   alignment: Alignment.bottomRight,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               width: 8,
//             ),
//             Text(
//               '${widget.review!.likes}',
//               style: const TextStyle(fontSize: 16, color: Colors.grey),
//             ),
//           ],
//         ),
//         const SizedBox(width: 16),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SvgPicture.asset(
//               'assets/icons/dislike.svg',
//               alignment: Alignment.bottomRight,
//             ),
//             const SizedBox(
//               width: 8,
//             ),
//             Text(
//               '${widget.review!.dislikes}',
//               style: const TextStyle(fontSize: 16, color: Colors.grey),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
