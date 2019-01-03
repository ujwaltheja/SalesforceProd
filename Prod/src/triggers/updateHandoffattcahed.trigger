trigger updateHandoffattcahed on Top_X_Dest__c (after insert, after update, after delete) {
    // storing records
    //True
    map<id,id> maptop = new map<id,id>();
    set<id> oppid = new set<id>();
    //false
    map<id,id> maptopfalse = new map<id,id>();
    set<id> oppidInfalseCase = new set<id>();
    
    // delete
    map<id,id> deletecase = new map<id,id>();
    set<id> oppdelcaseid = new set<id>();
    
    list<Opportunity> opplist = new list<Opportunity>(); // quirey list
    list<Opportunity> listtoupdate = new list<Opportunity>();
    
    
    for(Top_X_Dest__c top : trigger.isdelete ? trigger.old : trigger.new)
    {
        if(trigger.isInsert || trigger.isUpdate)
        {
            if(top.Document_Attached__C == true && ((top.Type__c == 'Contract Flow Down') || (top.Type__c == 'Handoff')))
            {
                maptop.put(top.OppTopXDest__c, top.id);
                oppid.add(top.OppTopXDest__c);
                System.debug('Here '+top.OppTopXDest__c);
            }
            else
            {
                maptopfalse.put(top.OppTopXDest__c, top.id);
                oppid.add(top.OppTopXDest__c);
                System.debug('Here '+top.OppTopXDest__c);    
            }
        }
        if(trigger.isDelete)
        {
            deletecase.put(top.OppTopXDest__c, top.id);
            oppdelcaseid.add(top.OppTopXDest__c);
            oppid.add(top.OppTopXDest__c);
            
        }
        
    }
    opplist =[select id, Name from opportunity];
    
    for(Opportunity opp: opplist)
    {
        if(maptop.containsKey(opp.id))
        {
            opp.Handoff_Attached__c ='Yes';
        }
        if(maptopfalse.containsKey(opp.id))
        {
            opp.Handoff_Attached__c ='No';
        }
        if(deletecase.containsKey(opp.id))
        {
            opp.Handoff_Attached__c ='';
        }
        listtoupdate.add(opp) ;
    }
    if( listtoupdate.size()>0)
    {
            update listtoupdate;
            system.debug('testL'+listtoupdate);
    }
}