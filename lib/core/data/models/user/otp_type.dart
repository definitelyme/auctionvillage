enum OTPType {
  createQuestion('createQuestion'),
  resetPin('resetTransactionPin');

  final String name;

  const OTPType(this.name);

  @override
  String toString() => name;

  T maybeWhen<T>({
    T Function()? createQuestion,
    T Function()? resetPin,
    required T Function() orElse,
  }) {
    switch (this) {
      case OTPType.createQuestion:
        return createQuestion != null ? createQuestion() : orElse();
      case OTPType.resetPin:
        return resetPin != null ? resetPin() : orElse();
    }
  }
}
