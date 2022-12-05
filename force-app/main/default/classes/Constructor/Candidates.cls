public  class Candidates {
    public String Name;
    public String Gender;
    public static String CompanyName;
    public static Integer countCandidates=0;

    public Candidates(){
        countCandidates++;
    }

    public Candidates(String n,String g){
        
        name=n;
        gender=g;
    }

    public void printCandidate(){
        system.debug('Candidate Name is ' + Name);
        system.debug('Gender is ' + Gender);
        system.debug('Company Name is ' + CompanyName);
    }

    public static void printCandidateInfo(){
        system.debug('Company name is ' + CompanyName);
        //we cannot acces non-static members inside static method
        //system.debug('Name is ' + Name);
    }
    
}
