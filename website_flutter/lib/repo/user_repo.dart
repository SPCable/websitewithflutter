class UserRepo {
  //fake-user:
  // user: admin , pass: admin

  String user = "admin";
  String pass = "admin";

  Future<int> signIn(String username, String password) async {
    if (username == user && password == pass) {
      return 1;
    }
    return 0;
  }

  Future<void> signOut(String username, String password) async {
    if (username == user && password == pass) {
      print("Success!");
    }
  }
}
