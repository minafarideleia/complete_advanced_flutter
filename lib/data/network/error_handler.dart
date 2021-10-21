enum DataSource {
  SUCCESS,
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTHORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECEIVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION
}

class ResponseCode {
  // API status codes
  static const int SUCCESS = 200; // success with data
  static const int NO_CONTENT = 201; // success with no content
  static const int BAD_REQUEST = 400; // failure, api rejected the request
  static const int FORBIDDEN = 403; // failure, api rejected the request
  static const int UNAUTHORISED = 401; // failure user is not authorised
  static const int NOT_FOUND =
      404; // failure, api url is not correct and not found
  static const int INTERNAL_SERVER_ERROR =
      500; // failure, crash happened in server side

  // local status code
  static const int UNKNOWN = -1;
  static const int CONNECT_TIMEOUT = -2;
  static const int CANCEL = -3;
  static const int RECEIVE_TIMEOUT = -4;
  static const int SEND_TIMEOUT = -5;
  static const int CACHE_ERROR = -6;
  static const int NO_INTERNET_CONNECTION = -7;
}

class ResponseMessage {
  // API status codes
  static const String SUCCESS = "success"; // success with data
  static const String NO_CONTENT =
      "success with no content"; // success with no content
  static const String BAD_REQUEST =
      "Bad request, try again later"; // failure, api rejected the request
  static const String FORBIDDEN =
      "forbidden request, try again later"; // failure, api rejected the request
  static const String UNAUTHORISED =
      "user is unauthorised, try again later"; // failure user is not authorised
  static const String NOT_FOUND =
      "Url is not found, try again later"; // failure, api url is not correct and not found
  static const String INTERNAL_SERVER_ERROR =
      "some thing went wrong, try again later"; // failure, crash happened in server side

  // local status code
  static const String UNKNOWN = "some thing went wrong, try again later";
  static const String CONNECT_TIMEOUT = "time out error, try again later";
  static const String CANCEL = "request was cancelled, try again later";
  static const String RECEIVE_TIMEOUT = "time out error, try again later";
  static const String SEND_TIMEOUT = "time out error, try again later";
  static const String CACHE_ERROR = "Cache error, try again later";
  static const String NO_INTERNET_CONNECTION =
      "Please check your internet connection";
}
