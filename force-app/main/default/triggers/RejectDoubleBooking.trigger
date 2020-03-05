trigger RejectDoubleBooking on Session_Speaker__c (before insert, before update) {
    List<Id> speakerIds = new List<Id>();
    Map<Id, DateTime> requested_bookings = new Map<Id, DateTime>();
    for(Session_Speaker__c newItem : trigger.new){}

}