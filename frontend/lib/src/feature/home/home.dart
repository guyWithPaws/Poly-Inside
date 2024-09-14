import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';


/// {@template home}
/// Home widget.
/// {@endtemplate}
class Home extends StatefulWidget {
  /// {@macro home}
  const Home({
    super.key, // ignore: unused_element
  });
  
  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  @internal
  static _HomeState? maybeOf(BuildContext context) =>
    context.findAncestorStateOfType<_HomeState>();
  
  @override
  State<Home> createState() => _HomeState();
}


/// State for widget Home.
class _HomeState extends State<Home> {

  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
  }
  
  @override
  void didUpdateWidget(covariant Home oldWidget) {
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
    const Placeholder();
}
