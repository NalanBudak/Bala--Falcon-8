@isTest
public with sharing class RestCalloutsTest {
    @isTest
    private static void getAnimalsTest() {
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);
        HttpResponse response = RestCallouts.getAnimals();
        System.assertEquals(response.getStatus(), 'OK');
        System.assertEquals(response.getStatusCode(), 200);
    }

    @isTest
    private static void getUsersTest() {
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);
        HttpResponse response = RestCallouts.getUsers();
        System.assertEquals(response.getStatus(), 'OK');
        System.assertEquals(response.getStatusCode(), 200);
    }
}