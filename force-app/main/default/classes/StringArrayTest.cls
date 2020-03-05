public class StringArrayTest
{
    public static List<String> generateStringArray(Integer n)
    {
        List<String> myArray = new List<String>();
        for(Integer i = 0; i < n; i++)
        {
            String formate = 'Test' + ' ' + i;
            myArray.add(formate);
            System.debug(myArray[i]);
        }
        return myArray;  
    }
}