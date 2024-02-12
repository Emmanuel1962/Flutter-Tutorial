void main() {
// variable declaration 
  /*
   A Variable(var) is a container or parameter used to hold a set value or information
   that will be used later
   A variable can be of the type
   1. String
   2. int
   3. double
   4. boolean(bool)= takes only true or false
   */
  
  
  
  String ann='syliva';
  int doe= 3;
  double ken= 3.2;
  bool k =true;
  bool l=false;
  
  
  // OPERATION IN DART
  /*
   Operators are signs and symbols used in dart to make programming easier
   TYPES OF OPERATORS
   1. Assignment-'='
   2. Additional operator - '+'
   3. Subraction - '-'
   4. division-"/"
   5. modulus-"%"-- the remainder after division.
   6. And operator-"&&"
   7. Or operators-'||'
   8. multiplication-'*'
   9. comparison operator-'=='
   */
  
  int i=10;
  int ii=5;
  // double iii= i+ii;
  
  /*
   conveting to  an int =toInt()
   
   converting to an a double=toDouble()
   
  */
  
  var ans =i+ii;
  print(ans);// 15
  
  var ans2 =i-ii;
  print(ans2);// 5
  
  var ans3=i/ii;
  print(ans3);// 2
   var ans4= i%ii;
  print(ans4);// remainder is 0 so therefore ans is 0;
  
  var ans5= i*ii;
  print(ans5); // 50
  
  
  
  // Conditional statement
  /* These are coding  synatax that are used to run a particular 
    section of code depending on the condition.
    There are three types:
    1. IF statements
    2. Switch Statements.
    3.Loop
    */
  
  
  //IF Statement
  /*
   * three types of if statement
    a. if 
    b. if else
    c. if else if
    */
  /// || it works when either of them is true
  /// && works when the 2 statement is true, if one is false its not doesnt work 
  int age=19;
  if(age>=20 || age<= 40){
    print('i am old');
   }else {
    print('i am young');
  }
  
  if(age>30 && age<=40){
    print('You are teenager');
  }else if (age> 19 && age <=40){
    print('You are a youth');
  }else if (age!=60) {
    print('You are not 60 years');// this thing != means not equal to tthe value put by the side
  } else if (age>40) {
      print ('You are above 40');
      
    }else{
    print('leave this app');
  }
  
  
  
  
  
  }
   
  
  
