public  class ApexUsecaseTwo {
    public static void SendEmail(String toEmail) {
        if(!string.isEmpty(toEmail)){
      Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
      List<string> toAddressList = new List<string>();
      toAddressList.add(toEmail);
       mail.setSubject('URGENT - Take a Look');
       mail.setPlainTextBody('This is the notification trigger by the salesforce Apex');
        mail.setToAddresses(toAddressList);

      Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
}
}