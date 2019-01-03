public class Calloutcontroller {
    public List<Consolewrap> ConsoleWrapperList{get; set;}
    
    public List<Consolewrap> getperformcallout(){
        ConsoleWrapperList= new List<Consolewrap>();
        
        HttpRequest req = new HttpRequest();
        HttpResponse res = new HttpResponse();
        Http http = new Http();
        
        req.setEndpoint('https://raw.githubusercontent.com/parthiban019/samplejson/master/student.json');
        req.setMethod('GET');
        
        res=http.send(req);
        
        if(res.getStatusCode()==200 && res.getBody()!=null){
            ConsoleWrapperList=(List<Consolewrap>)json.deserialize(res.getBody(), List<Consolewrap>.class);
        }
        return ConsoleWrapperList;
    }
}