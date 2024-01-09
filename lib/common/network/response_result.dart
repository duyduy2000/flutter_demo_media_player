sealed class ResponseResult<T> {
  factory ResponseResult.success({required T data}) => Success(data: data);

  factory ResponseResult.loading({String? message}) => Loading(message: message);

  factory ResponseResult.error({required String message}) => Error(message: message);
}

class Loading<T> implements ResponseResult<T> {
  String? message;

  Loading({this.message});
}

class Success<T> implements ResponseResult<T> {
  T data;

  Success({required this.data});
}

class Error<T> implements ResponseResult<T> {
  String message;

  Error({required this.message});
}
