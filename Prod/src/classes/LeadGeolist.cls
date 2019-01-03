global with sharing class LeadGeolist {
    public Static Decimal distances {get; set;}
    public Lead lt{get; set;}
    public List<Lead> leads{get; set;}
    public Boolean Match{get; set;}
    /*public List<SelectOption> getDistanceValue() {
        List<SelectOption> distOptions = new List<SelectOption>();
        distOptions.add(new SelectOption('1', '1'));
        distOptions.add(new SelectOption('5', '5'));
        distOptions.add(new SelectOption('10', '10'));
        distOptions.add(new SelectOption('20', '20'));
        return distOptions;
    }*/

    //String lat ='';
    //String lon ='';
    //String distance ='20';
    String units = 'mi';
    /* String query ='SELECT Id, LastName, FirstName, Latitude, Longitude FROM Lead'+
        'WHERE DISTANCE(address,GEOLOCATION({0},{1}), {2})< {3}'+
        		   'ORDER BY DISTANCE(address,GEOLOCATION({0},{1}), \'\'{2}\'\')< {3}';
    public LeadGeolist(){
        leads=database.Query(String.format(query, new List<String> { lat, lon, units, distance }));
    }*/
    public LeadGeolist(){
        lt = new lead();
        distances = 0;
        /*if(distances==20){
        leads=[SELECT Id, LastName, FirstName, Name, Latitude, Longitude FROM Lead WHERE DISTANCE(address,GEOLOCATION(12.9065,77.6791), 'mi')< 20 ORDER BY DISTANCE(address,GEOLOCATION(12.9065,77.6791), 'mi')];
		}*/
    }
    
    public void ListGenerate(){
        Match=false;
		System.debug('Teast:'+distances);
        //if(distances==20){
        	//leads=[SELECT Id, LastName, FirstName, Name, Latitude, Longitude FROM Lead WHERE DISTANCE(address,GEOLOCATION(12.9065,77.6791), 'mi')< :distances ORDER BY DISTANCE(address,GEOLOCATION(12.9065,77.6791), 'mi')];
		//}
		//
        if(leads.size()>0){
            Match=true;
        }
   	 }

        @RemoteAction
        public static List<Lead> findAll() {
            List<Lead> lstr = new List<Lead>();
            //System.debug('distances remote: '+distances);
           if(distances != null){
                
               	lstr = [SELECT Id, LastName, FirstName, Name, Latitude, Longitude FROM Lead WHERE DISTANCE(address,GEOLOCATION(12.9065,77.6791), 'mi')< :distances ORDER BY DISTANCE(address,GEOLOCATION(12.9065,77.6791), 'mi')];
           }
           else{
                lstr = [SELECT Id, LastName, FirstName, Name, Latitude, Longitude FROM Lead WHERE DISTANCE(address,GEOLOCATION(12.9065,77.6791), 'mi')< 0 ORDER BY DISTANCE(address,GEOLOCATION(12.9065,77.6791), 'mi')];
           }
            return lstr;
        }
}