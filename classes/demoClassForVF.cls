global class demoClassForVF {
    global String accountId{get;set;}
    global Account objAccount {get;set;}
    global string name {get;set;}
    Public demoClassForVF(){
    List<Account> lstAccount = new List<Account>();
        lstAccount =[Select id,name from Account where id=:accountId];
        system.debug('lstAccount---->'+lstAccount);
        if(lstAccount.size()>0){
          name =lstAccount[0].name; 
        }
    }
}