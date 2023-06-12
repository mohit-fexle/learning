public class responseWrapper {
	@AuraEnabled Public String message;
    @AuraEnabled Public Boolean isSuccess;
    @AuraEnabled public Object body;
    @AuraEnabled public String type;
    
    public void setError(String errorMessage)
    {
        this.isSuccess = False;
        this.message = errorMessage;
        this.body = null;
    }
    
    public void setBody(Object body)
    {
        this.isSuccess = True;
        this.body = body;
    }
    
    public responseWrapper()
    {
        this.isSuccess = True;
    }
}