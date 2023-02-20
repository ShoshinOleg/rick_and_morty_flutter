class Failure {
  final String message;

  const Failure({this.message = "Undefined failure massage"});

  @override
  String toString() => message;

  const factory Failure.base() = LocalFailure;

  factory Failure.fromException(Exception ex) {
    return NetworkFailure();
  }
}

class NetworkFailure extends Failure {
  NetworkFailure() : super(message: "Network failure");
}

class LocalFailure extends Failure {
  const LocalFailure() : super(message: "Local failure");
}
