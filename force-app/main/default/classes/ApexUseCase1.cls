public class ApexUseCase1 {
    public static void CreateContact(string FirstName, string LastName,string Email) {
          List<Contact> conList = new List<Contact>();
          if(!string.isBlank(LastName)){
          contact con = new contact();
          con.FirstName = FirstName;
          con.LastName = LastName;
          con.Email   = Email;
          conList.add(con);
          insert conList;
    } 
}
}