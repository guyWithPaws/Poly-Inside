import 'package:flutter/material.dart';

/// {@template search_bar}
/// ProfessorSearchBar widget.
/// {@endtemplate}
class ProfessorSearchBar extends StatefulWidget {
  final TextEditingController? controller;

  /// {@macro search_bar}
  const ProfessorSearchBar({
    super.key,
    required this.controller, // ignore: unused_element
  });

  @override
  State<ProfessorSearchBar> createState() => _ProfessorSearchBarState();
}

/// State for widget ProfessorSearchBar.
class _ProfessorSearchBarState extends State<ProfessorSearchBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ProfessorSearchBar oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    widget.controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
        color: const Color(0xffEEF9EF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.search,
            color: Color(0xff8A8A8A),
          ),
          const SizedBox(
            width: 5,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.5 - 16 - 29,
            child: TextField(
              textAlign: TextAlign.start,
              maxLines: 1,
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                hintStyle: TextStyle(
                  color: Color(0xff8A8A8A),
                ),
                hintText: 'Найти преподавателя',
                border: InputBorder.none,
              ),
              controller: widget.controller,
            ),
          ),

        ],
      ),
    );
  }
}
