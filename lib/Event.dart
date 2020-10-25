class Event {
  String eventName;
  int eventId;
  var invitedList;
  var goingList;
  var rsvpList;

  Event(String eventName, int eventId) {
    this.eventName = eventName;
    this.eventId = eventId;
    invitedList = new List();
    rsvpList = new List();
  }

//  void getRSVP(int memberUid) {
//    rsvpList.add(memberUid, new RSVP());
//  }

  void inviteMember(int invitedId) {
    invitedList.add(invitedId);
  }

}