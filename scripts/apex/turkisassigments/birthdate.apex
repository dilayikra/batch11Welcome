Date birthDate=date.newInstance(2001,3,26);
System.debug('My birthday is ' + birthDate);
integer birthDay=birthDate.day();
integer birthMonth=birthDate.month();
Integer birthYear=birthDate.year();

Integer sum=birthDay+birthMonth+birthYear;
System.debug(sum);