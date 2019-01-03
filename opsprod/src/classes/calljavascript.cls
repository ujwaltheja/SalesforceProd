public class calljavascript {
    public string callfunc{get;set;}
    private final lead lead1;
    public calljavascript(ApexPages.StandardController controller) {
        this.lead1 = (lead)controller.getRecord();

    }
    public calljavascript()
    {
    callfunc='<script> func(); </script>';
    }

}