class User {
  String username;
  String address;
  int uid;
  var friendList;

  User(String username, String address, int uid) {
    this.username = username;
    this.address = address;
    this.uid = uid;
    friendList = new List();
  }

  void addFriend(int friendUid) {
    friendList.add(friendUid);
  }

  void writeUser() {

  }

  void readUser() {

  }

}