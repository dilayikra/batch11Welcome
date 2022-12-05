public  class SetDemo {
    public static void citySet(){
        Set<String> cities=new Set<String>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('TOKYO');

        system.debug('set of cities ' + cities);
        }

        public static void randomIntegerSet(){
            Set<Integer> setInt=new Set<Integer>();
            setInt.add(15);
            setInt.add(10);
            setInt.add(21);
            setInt.add(15);
            setInt.add(21);

            System.debug( setInt);
        }

        public static set<Integer> setFormList(List<Integer> intList){
            set<Integer> returnSet=new Set<Integer>();
            returnSet.addAll(intList);
            return returnSet;
        }

        public static Set<String> capitalizeSet(Set<String> setString){
            Set<String> capsSet=new Set<String>();
            for (String eachStr:setString){
                String tempStr=eachStr.toUpperCase();
                capsSet.add(tempStr);
            
            }
            return capsSet;

        }
    
}
