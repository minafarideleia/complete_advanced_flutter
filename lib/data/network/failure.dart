class Failure {
  int code; // 200 or 400
  String message; // error or success

  Failure(this.code, this.message);
}
