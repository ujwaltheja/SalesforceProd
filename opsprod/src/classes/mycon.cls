public class mycon {
    
   /* public date date1 {set;get;}
    public date date2 {set;get;}
    public date date3 {set;get;}
    public date date4 {set;get;}*/
    public String name {get; set;}
    public list<Contact> contacts {get; set;}
    
    public pagereference display()
    {
        //date3 = date1;
        //date4 = date2;
        
        
        pagereference pr = new pagereference('/apex/page2');
        return pr;
        
    }
    public void checkAndRedirect(){
    	contacts = [SELECT Id, LastName FROM Contact where LastName like :name];
        //return contacts;
    }
    
    //return contacts;
}