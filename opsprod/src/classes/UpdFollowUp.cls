public class UpdFollowUp{
    public static void updRequest(Map<Id,Case> appCases){
        List<Case> lstcase=new List<Case>();
        
        for(Case a: appCases.values()){
            Case newCase=new Case(
            Origin='Phone',
            Type='Other');
            lstcase.add(newCase);
        }
        if(lstcase.Size()>0){
            insert lstcase;
        }
    }
}