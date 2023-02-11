@isTest
public class Accounttest {
@isTest
    public static void test1(){
        Test.startTest();
        TestDataFactory.createAcc(1);
        Test.stopTest();
        Account a=[Select Type from account];
        system.assertEquals('Prospect', a.Type);
    }
    @isTest
    public static void test2(){
        Test.startTest();
        TestDataFactory.createAcc(10);
        Test.stopTest();
        
        list<Account> acclist=[select type from account];
        for(Account a:acclist){
        system.assertEquals('Prospect', a.Type);    
        }
        
    }
     @isTest
    public static void test3(){
        Test.startTest();
        TestDataFactory.createAcc(1);
        Account a=[select type from account];
        a.AnnualRevenue=489000;
        update a;
        Test.stopTest();
        
       Account acc=[select  Description from account];
        
        system.assertEquals('This Account is updated by ' +UserInfo.getName(), acc.Description);    
      
        
    }
     @isTest
    public static void test4(){
        Test.startTest();
        TestDataFactory.createAcc(10);
        list<Account> acclist=[select type from account];
        list<Account> newlist=new list<Account>();
        for(Account a:acclist){
            a.AnnualRevenue=1235000;
            newlist.add(a);
        }
        update newlist;
        Test.stopTest();
        
        list<Account> acclist2=[select Description from account];
        for(Account a:acclist2){
        system.assertEquals('This Account is updated by ' +UserInfo.getName(), a.Description);   
        }
    }
}