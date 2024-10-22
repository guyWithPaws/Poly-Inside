class ProfessorFeatures {
  final double loyalty;
  final double harshness;
  final double professionalism;
  final double objectivity;

  ProfessorFeatures({
    required double harshness,
    required double loyalty,
    required double objectivity,
    required double professionalism,
  })  : harshness = double.parse(harshness.toStringAsFixed(2)),
        loyalty = double.parse(loyalty.toStringAsFixed(2)),
        objectivity = double.parse(objectivity.toStringAsFixed(2)),
        professionalism = double.parse(professionalism.toStringAsFixed(2));
}
