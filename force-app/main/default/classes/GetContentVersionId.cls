public class GetContentVersionId {
    
    @InvocableMethod(label='Get Content Version Id' description='Gets the content version id from a document id')
    public static List<Id> ContentVersionId (List<Id> docIds){   
        List<Id> cvIds = new List<Id>();
        for(Id dId : docIds){
            for(ContentVersion cv : [select Id from contentVersion where ContentDocumentId = :dId]){
       			//Ideally, should be a conditional here to ensure we always get the latest version, but checking IsLatest results in an error.
       			//Not a problem if this is used only for the use case of uploading a brand new document
                cvIds.add(cv.Id);           
        	}
        }    
	    return cvIds;
    }
}