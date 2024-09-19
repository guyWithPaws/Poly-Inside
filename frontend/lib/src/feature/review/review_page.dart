import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';


/// {@template review_page}
/// ReviewPage widget.
/// {@endtemplate}
class ReviewPage extends StatefulWidget {
  /// {@macro review_page}
  const ReviewPage({
    super.key, // ignore: unused_element
  });
  
  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  @internal
  static _ReviewPageState? maybeOf(BuildContext context) =>
    context.findAncestorStateOfType<_ReviewPageState>();
  
  @override
  State<ReviewPage> createState() => _ReviewPageState();
}


/// State for widget ReviewPage.
class _ReviewPageState extends State<ReviewPage> {

  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
  }
  
  @override
  void didUpdateWidget(covariant ReviewPage oldWidget) {
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
