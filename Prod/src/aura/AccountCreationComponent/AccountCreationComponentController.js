({
	createAccount : function(component, event, helper) {
        
        var accNameField = component.find("accname");
        var accName= accNameField.get("v.value");
        
        if(accName == '')
        {
            accNameField.set("v.value", false);
            accNameField.addErrors("v.value", [{message:"Account Name is Mandatory. Please Enter the value and Save."}]);
        }
		else
        {
            accNameField.set("v.value", true);
            var newAccount= component.get("v.newAccount");
            
            var action= component.get("c.saveAccount");
            
            action.setParams({
                "acc":newAccount
            });
            
            $A.enqueueAction(action);
            
            alert('Record Saved Successfully');
        }
	}
})