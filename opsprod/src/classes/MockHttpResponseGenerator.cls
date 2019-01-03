@isTest
global class MockHttpResponseGenerator implements HttpCalloutMock {
    global HTTPResponse respond(HTTPRequest req) {
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setHeader('Accept','application/json');
        //res.setBody('{"foo":"bar"}');
        //res.setStatusCode(200);
        return res;
    }
}