enum AppFontSize {
  displayLarge(48.0, 1.25),
  displayMedium(36.0, 1.2),
  displaySmall(30.0, 1.25),
  titleLarge(24.0, 1.33),
  titleMedium(20.0, 1.5),
  titleSmall(18.0, 1.55),
  bodyLarge(16.0, 1.5),
  bodyMedium(14.0, 1.4),
  bodySmall(12.0, 1.5);

  const AppFontSize(this.size, this.lineHeight);

  final double size;
  final double lineHeight;
}
