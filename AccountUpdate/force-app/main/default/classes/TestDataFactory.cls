public class TestDataFactory {
    public static void createAcc(Integer num){
        list<Account>listAcc=new list<Account>();
        For(integer i=1;i<=num;i++){
            Account acc=new Account();
            acc.Name='HandsonAcc '+i;
            ListAcc.add(acc);
        }
        insert ListAcc;
    }

}