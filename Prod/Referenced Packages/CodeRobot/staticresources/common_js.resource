//Code Robot (c) 2017
//Common javascript

//Code Robot namespace
var CRNS = 'CodeRobot__';

//gets the object property with or without namespaces
function getObjProp(obj, objProp)
{
    return obj[objProp] == undefined ? obj[CRNS + objProp] : obj[objProp];
}

//Code Robot config modal controls
function unselectUserPriority()
{
	$("#user_priority_unselected").append($('#user_priority_selected :selected'));
	$('#user_priority_selected :selected').remove();
}
function selectUserPriority()
{
	$("#user_priority_selected").append($('#user_priority_unselected :selected'));
	$('#user_priority_unselected :selected').remove();
}
function movePriorityUp()
{
	var selectedOpts = $('#user_priority_selected :selected');
	selectedOpts.first().prev().before(selectedOpts);
}
function movePriorityDown()
{
	var selectedOpts = $('#user_priority_selected :selected');
	selectedOpts.last().next().after(selectedOpts);
}
//Code Robot config modal controls END

//display page error/msgs
function displayMessage(addType, formGroupId, msg, cls, isSuccess, errStackTrace, isDebug)
{
    if(addType == "singleId")
    {
        $("#" + formGroupId + " > .help-block").text(msg);
        if(isSuccess)
        {
            $("#" + formGroupId + " > .form-control-feedback").addClass("glyphicon-ok");
            $("#" + formGroupId).addClass("has-success");
        }
        else
        {
            $("#" + formGroupId + " > .form-control-feedback").addClass("glyphicon-remove");
            $("#" + formGroupId).addClass("has-error");
        }
    }
    else
    {
        if(cls.indexOf('alert-danger') != -1)
        {
            msg = '<b>Error: </b>' + msg;
        }
        var msgDiv = $("<div class='alert " + cls + " fade in'/>");
        msgDiv.append(msg);
        if(isDebug && errStackTrace != '')
        {
            msgDiv.append('<br/>' + errStackTrace);
        }
        $("#" + formGroupId).append("<br/>");
        $("#" + formGroupId).append(msgDiv);
    }
}
//clears messages
function clearMessage(formGroupId)
{
    if(formGroupId == "importRecordDiv" || formGroupId == "utilClsDiv")
    {
        $("#" + formGroupId + " > .help-block").text("");
        $("#" + formGroupId + " > .form-control-feedback").removeClass("glyphicon-remove");
        $("#" + formGroupId).removeClass("has-error");
        $("#" + formGroupId + " > .form-control-feedback").removeClass("glyphicon-ok");
        $("#" + formGroupId).removeClass("has-success");
    }
    else
    {
        $("#" + formGroupId).html("");
    }
}
//display page error/msgs END
//modal controls
//shows and hides elements and buttons on save and error of new project form
function toggleLoading(modalId)
{
    $("button.close").toggle();
    $("#" + modalId + " .modalFooterControls").toggle();
    $("#" + modalId + " .modalFooterLoading").toggle();
}
//removes the modal
function hideModal(modalId)
{
	$('#' + modalId).modal('hide');
    $('body').removeClass('modal-open');
    $('.modal-backdrop').remove();
}
//resets modal
function resetModal(modalId, msgId)
{
    $("#" + modalId + " button.close").show();
    $("#" + modalId + " .modalFooterControls").show();
    $("#" + modalId + " .modalFooterLoading").hide();
    if(msgId != "")
    {
	    $("#" + msgId).html("");
	    $("#" + msgId).removeClass();
    }
}
//end modal controls
// browser check 

function detectIE() {
	var ua = window.navigator.userAgent;

	// Test values; Uncomment to check result …

	// IE 10
	// ua = 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)';
  
	// IE 11
	// ua = 'Mozilla/5.0 (Windows NT 6.3; Trident/7.0; rv:11.0) like Gecko';
  
	// Edge 12 (Spartan)
	// ua = 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36 Edge/12.0';
  
	// Edge 13
	// ua = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586';

	var msie = ua.indexOf('MSIE ');
	if (msie > 0) {
		// IE 10 or older => return version number
		return parseInt(ua.substring(msie + 5, ua.indexOf('.', msie)), 10);
	}

	var trident = ua.indexOf('Trident/');
	if (trident > 0) {
		// IE 11 => return version number
		var rv = ua.indexOf('rv:');
		return parseInt(ua.substring(rv + 3, ua.indexOf('.', rv)), 10);
	}

	var edge = ua.indexOf('Edge/');
	if (edge > 0) {
		// Edge (IE 12+) => return version number
		return parseInt(ua.substring(edge + 5, ua.indexOf('.', edge)), 10);
	}

	// other browser
	return false;
}
// end browser check 
function unescapeHtml(safe) {
	var retS = String(safe).replace(/&amp;/g, '&')
					        .replace(/&lt;/g, '<')
					        .replace(/&gt;/g, '>')
					        .replace(/&quot;/g, '"')
					        .replace(/&#039;/g, "'")
					        .replace(/&#39;/g, "'");
	return retS;				        
}
function crb_htmlEscape(str) {
	    return String(str)
	            .replace(/</g, '&lt;')
	            .replace(/>/g, '&gt;');
	}