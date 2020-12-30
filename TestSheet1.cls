public class TestSheet1 {
    public static void Dholu(List<Account> AcOldList,List<Account> AcNewList){
        
        System.debug('On mtehhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh');
       try{
        
        list<Contact> CnList=[Select Name,accountId,MailingCity,Account_City__c from Contact Where AccountID In:AcOldList];
        system.debug('AcList'+AcOldList);
        system.debug('CnList'+CnList);
        Map<ID,String> Map2=new Map<Id,String>();
        For(Account ao:AcOldList){
            For(Account an:AcNewList){
                System.debug('old===>>      '+Ao.BillingCity+'       New===>>     '+An.BillingCity);
                if(Ao.BillingCity != An.BillingCity || Ao.BillingCountry != An.BillingCountry || Ao.BillingState != An.BillingState || Ao.BillingStreet !=An.BillingStreet || Ao.BillingPostalCode != An.BillingPostalCode)
                {
                   Map2.put(Ao.ID,An.BillingCity);
                   System.debug('Billing Adress not matched');
                }
            }
        }
        list<Contact> UpdateCn=new list<Contact>();
        for(Id I1:Map2.keyset()){
            For(Contact Cq:CnList){
                if(I1 == Cq.AccountId){
                system.debug('Account ID MAtched');
                Contact inC=new COntact();
                Inc.id=Cq.id;
                Inc.account_City__c =Map2.get(I1);
                UpdateCn.add(Inc);
                System.debug('Updated Contact'+UpdateCn);
               }
            }
        }
        Update UpdateCn;
        }
        Catch(Exception e){
            System.debug('Error Line::'+e.getLineNumber()+'Error::'+e.getMessage());
        }
    }  
}