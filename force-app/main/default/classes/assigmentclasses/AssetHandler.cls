public with sharing class AssetHandler {
    public static void Assethandlerupdate (List<Asset> triggernew,List<Asset> triggerold,map<id,Asset> triggerNewMap,map<id,Asset> triggerOldMap) {
        for (Asset eachAsset :triggernew ) {
            if (eachAsset.status!=null) {
                if (eachAsset.status =='Shipped') {
                    eachAsset.description='Asset is shipped';
                    
                }
                if (eachAsset.status=='Installed') {
                    eachAsset.description='Asset is Installed';
                    
                }

                
         
            }
            
            
            
            
            
            
            
            
        }

        
    }
 
}
