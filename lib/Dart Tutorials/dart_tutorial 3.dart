void main() {
//  List []
  
  /*
    In Flutter, list are the collection of ordered object of the same type. They are similiar to arrays
   in other programming languages, list are used to store and manipulate multiple values in a single variable 
    
    
   */
   
  
  // List<String> names=['Syliva', 'Emma','John','Monica'];
  // List<int> numbers=[5,6,7,8,9];
  // List<dynamic> both=['Emmanuel',001,'God did','Somtee', 90];// this is for both number and string and decimals 
  
//   Looping inside a list
//   for (int i=0; i<names.length;i++){
//     print(names[i]);
//     }
  
 // names.forEach((i){
   // print(i);
 // });
  
//   this is still a type of loop called 'FOR IN'
//   the loop here can  be called anything .
//   this is the same thing as 'For loop'. but there situations that "for in "loop is used
  
//   for (var loop in names){
//     print(loop);
//   }
  
  
//   This is called a List inside a list=  List<List<String>> jss1= [[]] Examples is below
  
  var jss1=[
    ['Ezinne','Sylva'],
    ['Emma','Somtee'],
    ['Austine','Samuel'],
    ['Vincent','Toochi']
  ];
  print(jss1[0][0]);
  print(jss1[2][1]);
  
  var myList=[];
 
  
 print(myList);
 
  
  
  // this is for adding and removing values in the list
  myList.add('Emma');
  myList.add('Somtee');
  print(myList);
  

  //  myList.remove('Somtee');// this is used when you know the particular value. 
  myList.removeAt(0); // this is used when you dont know the particular values in the synax
  print(myList);
  
  
  
  
  
  
  
  
//   Assignment
//   print out all the names in jss1 in ascending order
  // Answer to assignment
  for (int i=0; i<jss1.length;i++){
//     for (int j=0; j<jss1[i].length;j++){
//       print(jss1[i][j]);
//     }
      
      for(var c in jss1[i]){
        print(c);
      }
    }   
  
  //   a more easier way to loop inside a loop for the asssignment
for(var name in jss1){
  for (var element in name){
    print (element);
  }
}
  
  
}
  




