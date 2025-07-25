class BaseError {
  final String message;

  BaseError(this.message);

  @override
  String toString() {
    return 'Error: $message';
  }
}
