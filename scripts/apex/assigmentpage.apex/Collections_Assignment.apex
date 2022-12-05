List<String> listMethods=new List<String>();
listMethods.add('Monday');
listMethods.add('Tuesday');
listMethods.add('Wednesday');
listMethods.add('Thursday');
listMethods.add('Friday');
listMethods.add('Saturday');

System.debug('Day List-> ' + listMethods);

listMethods.add('Sunday');
System.debug(listMethods);

boolean listDays=listMethods.contains('March');
System.debug('List contains March? ' + listDays);

System.debug('How many elements does the list have? ' + listMethods.size());
System.debug('Is list empty? ' + listMethods.isEmpty());
System.debug(listMethods.get(2));
listMethods.sort();
System.debug(listMethods);

listMethods.remove(3);
System.debug('New list is-> '+ listMethods); 

System.debug('--------------------------------');

Set<String> newList= new Set<String>();
newList.addAll(listMethods);
System.debug(newList);

newList.add('Sunday');
System.debug('Full list is ' + newList);

System.debug('How many elements does the set have? ' + newList.size() );
Boolean isContain=newList.contains('Friday');
system.debug('Does the list contain Friday? ' + isContain );







