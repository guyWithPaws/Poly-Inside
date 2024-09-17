import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';


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
  Widget build(BuildContext context) =>
    const Placeholder(child: Text('hhhhhhhhui'),);
}
