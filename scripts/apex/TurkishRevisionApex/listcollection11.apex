List<String> isimList=new List<String>();
isimList.add('Harry');
isimList.add('Ron');
isimList.add('Hermoine');
isimList.add('Neville');
isimList.add('Luna');
System.debug(isimList);
System.debug('index numarası 2 olan isim get ile =' + isimList.get(2));
System.debug('index numarası 2 olan isim köşeli parantez ile =' + isimList[2]);

Boolean check2=isimList.contains('Harry');
System.debug('Harry listede var mı? ' + check2 );

Boolean check=isimList.contains('Draco');
System.debug('Draco listede var mı? ' + check );

