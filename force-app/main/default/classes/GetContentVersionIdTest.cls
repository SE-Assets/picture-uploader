@isTest
private class GetContentVersionIdTest {

    @isTest static void TestContentVersionId()
    {
        ContentVersion contentVersionInsert = new ContentVersion(
            Title = 'Test',
            PathOnClient = 'Test.jpg',
            VersionData = Blob.valueOf('Test Content Data'),
            IsMajorVersion = true
        );
        insert contentVersionInsert;
        
        //Test test test test
        List<Id> contentVersionIds = new List<Id>();
        for(ContentVersion cv : [SELECT Id FROM ContentVersion WHERE Id = :contentVersionInsert.Id]){
            contentVersionIds.add(cv.Id);
        }
        List<Id> contentDocIds = new List<Id>();
        for(ContentDocument cd : [SELECT Id FROM ContentDocument]){
            contentDocIds.add(cd.Id);
        }
        System.assertEquals(contentVersionIds, GetContentVersionId.ContentVersionId(contentDocIds));
       
    }
}