void main() {
 // switch statement
  /* this is a control statment that exceutes a set a logic based on the result of a comparison between a 
    a controlling expression and the labels specified in the switch block.
    the switch synatax makes use of a case and a break.
    
    in my understanding this statment is used when you have a specified number of values you are operating on 
    you can't use numebrs for this expect for specified numbers
   
    */


// int age =18;
  
//   switch (age){
//     case 11:
//       print('age is 11');
//       break;
      
//     case 20:
//       print('age is 20');
//       break;
      
//     case 18:
//       print('age is 18');
//       break;
      
      
//     case 40:
//       print('age is 40');
      
//     default:
//       print('None of the above');
//       break;
//   }

  
  
  
  // loop
  /*
   * loops are syntax that is used to make an event reoccur depending on the codition. Reoccurence is directly
   * proportional to the condition ,
   * 
   * There are four types of loop:
   * 1) For Loop
   *   which consists of 
   * A) intiliaztion
   * B)Condition
   * C) control (decrement(--), increament(++))
   ///continue -Skips and continues a loop and doesn't return or break 
    ///return/break - stops a loop once the target or comparison is reached
    
    2) While loop
    3) Do While Loop
    4) for each loop
    
     */
  
  //1 loop i from numbers 100 to 0
//   for(int i=100; i>0; i--){
//     print(i);
//   } 
//    // 2 loop k from numbers 0 to 100
//     for(int k=0; k<100; k++){
//       print(k);
//     }
  
// Continue for Loop///
  
//   for (int l=1; l<10; l++){
//     if(l==5){
//       continue;// it will skip 5 and continue i.e=1,2,3,4,6,7,8,9
// //       break;// it will  break at 5 i.e=1,2,3,4 
// //       return;// it will return at 5 i.e=1,2,3,4
//     }
//   print(l);
//   }
  
  //while loop
//   int m=100;
//   while (m>0){
//     m--;
//     print(m);
//   }
  
  // Do while 
//   int n =0;
//   do{
//     n++;
//     print(n);
//   }while (n<100);  
  
  
//   Assginment 
//   loop the multiplication table from 1 to 12 
  
//  ANSWER TO ASSIGNMENT
  for (int i = 1; i <= 12; i++) {
    for (int j = 1; j <= 12; j++) {
     var ans=i*j;
      print('$i * $j = $ans');
    }
  }

  
//   PERSONAL PRACTICE
//   int a=0;
  
//   for(int i=1; 1<=12,i++){
    
//     a=1*10;
//     print('10 x $i=$a');
    
//   }
  

}
