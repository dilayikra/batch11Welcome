SoqlDemo.accountSOQL_1();
SoqlDemo.accountSOQL_11();
SoqlDemo.accountSOQL_2();
SoqlDemo.accountSOQL_3();
SoqlDemo.accountSOQL_filter('2 minutes ago');

List<string> accs = new list<string>{'sforce', '2 minutes ago'};
SoqlDemo.accountSOQL_filter(accs);