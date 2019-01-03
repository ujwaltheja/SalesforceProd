trigger crtcase on Case (after insert, after update) {
    
    Map<Id,Case> appCases=new Map<Id,Case>();
    
    if(Trigger.isUpdate && Trigger.isAfter){
        for(Case oCase: Trigger.new){
            if(oCase.IsClosed && oCase.Type.equals('Other')){
                appcases.put(oCase.Id,oCase);
            }
        }
        if(appCases.values().isEmpty()){
            UpdFollowUp.updRequest(appCases);
        }
    }
}