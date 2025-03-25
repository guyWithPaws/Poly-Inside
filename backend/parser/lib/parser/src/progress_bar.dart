import 'package:l/l.dart';

class ProgressBar {
  final int totalLength;
  final int barLength;
  final int multiplier;
  int currentProgress = 0;

  ProgressBar({
    required this.totalLength,
    this.barLength = 40,
    this.multiplier = 1,
  });

  void update(int counter) {
    currentProgress = counter * multiplier;
    var progress = (counter * multiplier) / totalLength;
    var progressLength = (progress * barLength).round();
    var progressBar = '=' *
            (progressLength > 0
                ? (progressLength - 1)
                : progressLength) +
        (progressLength > 0 ? '>' : '') +
        ' ' * (barLength - progressLength);

    l.i('\r[$progressBar] ${(progress * 100).toStringAsFixed(1)}% | Progress: ~${counter * multiplier} / $totalLength');
  }

  void clear() => currentProgress = 0;
}
