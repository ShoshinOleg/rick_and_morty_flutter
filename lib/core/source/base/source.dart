import '../../error/failures.dart';
import '../../resouce.dart';

class Source {
  Future<Resource<T>> resource<T>(
      Future<T> Function() invoke
  ) async {
    try {
      final response = await invoke.call();
      return Success(data: response);
    } on Exception catch (ex) {
      return Resource.error(failure: Failure.fromException(ex));
    }
  }
}