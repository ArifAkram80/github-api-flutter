enum Status { empty, loading, success, error }

class Result<T> {
  Status status;
  T? data;
  String? message;
  Result.success(this.data) : status = Status.success;
  Result.empty() : status = Status.empty;
  Result.loading() : status = Status.loading;
  Result.error(this.message) : status = Status.error;
}
