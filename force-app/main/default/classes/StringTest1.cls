public class StringTest1 {
    public static void strTst(String name){
        if(!String.isEmpty(name)){
            System.debug('my name is: ' + name);
        }
        else{
            System.debug('no name!');
        }
    }
}