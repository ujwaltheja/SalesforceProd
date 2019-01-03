({
	gotoURL : function (component) {
        
        var urlEvent = $A.get("e.force:navigateToURL");
        urlEvent.setParams({
          "url": "/lightning/page/home"
        });
        urlEvent.fire();
    },
})