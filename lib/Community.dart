class Community {
  String communityName;
  int cid;
  var communityList;
  var communityListInvites;

  Community(String communityName, int cid) {
    this.communityName = communityName;
    this.cid = cid;
    communityList = new List();
    communityListInvites = new List();
  }

  void addMember(int memberUid) {
    communityList.add(memberUid);
    communityListInvites.remove(memberUid);
  }

  void inviteMember(int invitedId) {
    communityListInvites.add(invitedId);
  }

}