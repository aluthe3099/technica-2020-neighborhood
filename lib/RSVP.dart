class RSVP {
  var userId;
  String eventName;
  var eventId;

  var rsvpList = new List();
  var peopleNeededList = new List();
  var peopleInvitedList = new List();

  var maxPeople;
  var minPeople;

  bool going = false;
  bool notGoing = false;
  bool conditional = false;

  RSVP(var userId, var eventId, var maxPeople, var minPeople, var peopleNeededList, var peopleInvitedList, bool going, bool notGoing, bool condition) {
    this.userId = userId;
    this.eventId = eventId;

    this.going = going;
    this.notGoing = notGoing;
    this.conditional = conditional;

    this.maxPeople = maxPeople;
    this.minPeople = minPeople;

    this.peopleNeededList = peopleNeededList;
    this.peopleInvitedList = peopleInvitedList;

    rsvpList = new List();
    this.peopleNeededList = peopleNeededList;
  }

void updateRSVP(int memberUid, int eventId) {
  if (going) {
    going = true;
  }
  else if (notGoing) {
    going = false;
  }
  else {
    for (var neededCounter = 0; neededCounter < peopleNeededList.length; neededCounter = neededCounter + 1) {
      bool found = false;
      for (var i = 0; i < rsvpList.length; i = i++) {
        if (rsvpList[i].getRSVP < 0) {
          found = true;
        }
      }
      if (found == false) {
        going = false;
      }
    }
    var peopleGoing = 0;
    for (var i = 0; i < rsvpList.length; i++) {
      if (rsvpList[i].getRSVP > 0) {
        peopleGoing = peopleGoing + 1;
      }
    }
    if (peopleGoing > maxPeople || peopleGoing < minPeople) {
      going = false;
    }
  }
}
//  void getRSVP(int memberUid, int eventId) {
//    this.rsvpList.add(memberUid, new RSVP());
//  }

  void inviteMember(int invitedId) {
    //invitedList.add(invitedId);
  }

  getUserId() {
    return userId;
  }
}