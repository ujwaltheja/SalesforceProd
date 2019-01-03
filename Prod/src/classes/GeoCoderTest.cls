@isTest
public class GeoCoderTest {
	static testMethod void testController()
	{
		Account testAccount = new Account();
		testAccount.name = 'Unit Test';
		insert testAccount;
		
		ApexPages.standardController controller = new ApexPages.standardController(testAccount);
		GeoCoderController gcc = new GeoCoderController(controller);
		gcc.lat = '-100.00000';
		gcc.lon = '-100.00000';
		gcc.geoCodeResult();
		
		Account result = [SELECT Name, Id, Location__Latitude__s, Location__Longitude__s FROM Account where name = 'Unit Test'];
		system.assertNotEquals(null,result.Location__Latitude__s);
		system.assertNotEquals(null,result.Location__Longitude__s);
	}
}