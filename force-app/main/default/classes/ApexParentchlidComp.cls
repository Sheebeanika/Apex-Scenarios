public class ApexParentchlidComp {
    public static Boolean ParentChildCompo (String AccName,String conName) {
List<Contact> conList = [ SELECT Id FROM Contact WHERE Name = :conName AND Account.Name = :AccName LIMIT 3];
                if(conList.size() > 0){
                    return true;
                }
                else {
                    return false;
                
                }
    }
}