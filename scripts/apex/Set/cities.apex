SetDemo.citySet();
SetDemo.randomIntegerSet();

List<Integer> listInteger= new List<Integer>();
listInteger.add(15);
listInteger.add(10);
listInteger.add(21);
listInteger.add(15);
listInteger.add(15);

System.debug('List ' + listInteger);

Set<Integer> setInt=SetDemo.setFormList(listInteger);
System.debug('set-> ' + setInt);

Set<String> cities=new Set<String>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('TOKYO');

        Set<String> capsCities=SetDemo.capitalizeSet(cities);
        system.debug('Caps cities= ' + capsCities);

