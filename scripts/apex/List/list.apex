ListDemo.allCats();

List<String> listStr = new List<String>();
if (listStr.isEmpty()) {
    system.debug('List is empty.Okey');
    
} 

List<Integer> listInteger= new List<Integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        listInteger.add(12);
        listInteger.add(18);
        system.debug('Before sort-> ' + listInteger);
        listInteger.sort();
        System.debug('After sort-> ' + listInteger);

        //List<String> listSample;
        //listSample.add('will this');


