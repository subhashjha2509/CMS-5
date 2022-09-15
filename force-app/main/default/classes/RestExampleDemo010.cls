public class RestExampleDemo010 {
    
    public static Decimal convertToInr(Decimal Euro){
        
        Decimal inr=0.0;
        HTTP http=new HTTP();
        HttpRequest req=new HttpRequest();
        req.setEndpoint('http://api.exchangeratesapi.io/v1/latest?access_key=6ed1929fb66f8e6e38242e2739045fb4&format=1');
        req.setMethod('GET');
        HttpResponse resp=   http.send(req);
        system.debug('Response Status'+resp.getStatus());
        system.debug('Response Body'+resp.getBody());
        Map<String,Object> resultMap=(Map<String,Object>)JSON.deserializeUntyped(resp.getBody());
        Map<String,Object> conversionMap=(Map<String,Object>)resultMap.get('rates');
        //system.debug(resultMap.get('success'));
        system.debug('resultMap'+resultMap);
        system.debug('conversionMap'+conversionMap);
        Decimal euroToinr=(Decimal)conversionMap.get('INR');
        inr=euroToinr*Euro;
        return inr;
    }
    
}