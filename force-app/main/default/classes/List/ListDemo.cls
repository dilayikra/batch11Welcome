public  class ListDemo {
    public static string candidatesList(Integer i) {

        List<String> candidates = new List<String>();
        candidates.add('Tony');
        candidates.add('Steve');
        candidates.add('Thor');
        candidates.add('Romanoff');
        candidates.add('Clint');
        candidates.add('Banner');
        System.debug('List of candidates is ' + candidates);
        string value='';
        if (i>=0 && i<candidates.size()) {
            value=candidates[i];
            
        } else {
            value='No value found.come on';
            
        }
        return value;
        

    }
    public static void randomInteger() {
        List<Integer> listInteger= new List<Integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        system.debug('List of random integer is ' + listInteger);
        

        //Integer index3Valuev=listInteger.get(3);

        //Integer index3Valuev2=listInteger[3];
        //system.debug('index 3 value is ' + index3Valuev);
        system.debug('List of random integers= ' + listInteger);
        
    }  

    public static void allCats(){
        List<Cat> listCats = new List<Cat>();
        Cat sfCat2=new Cat('Leo','Orange');
        Cat sfCat3=new Cat('Luna','Gray');
        Cat falconCat=new cat('Fluffykins','white');
        listCats.add(falconCat);
        listCats.add(sfCat2);
        listCats.add(sfCat3);

        
    }
        
    } 

