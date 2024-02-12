void main() {
/* 
 *INTRO TO MAPS 
 In Flutter, maps refer to the data structure used to 
 store key-value pairs. it is simliar  to thr concept of an associative array in other programming language.
 
 Flutter provides a built-in class called Map for working with maps.
 */
  
//   Map<String,dynamic>jss2={
//     'name':'Amos',
//     'gender':'Male',
//     'Class':'Jss2',
//     'level': 1,
//   };
//    print(jss2['name']);
//   print(jss2['gender']);
  
//   jss2.forEach((key,value){
// //     print('$key: $value');
//   });
  
//   Map<String, dynamic> bio ={
//     'Profile':{'name':'Amos','gender': 'Male'},
//     'Education':{'secondary':'Airforce','tertiary':'Unn'},
//   };
  
//  print(bio['Profile']['name']);
  
//   list of maps
  List<Map<String,dynamic>> student=[
    {'Username':'EMMMANUEL','Class':'SS3','Password': 1234},
    {'Username':'Peace','Class':'SS2','Password':5678},
    {'Username':'Somtee','Class':"SS1", 'Password':9012},
    {'Username':'Andy','Class':'jss3','Password':2345},
  ];
  for(int i=0;i<student.length;i++){
    print(student[i]);
  }
  

  // adding to the map
  var myMap={};
  myMap['name']="General";
  myMap['gender']="Male";
  
  print(myMap);
  

  // removing from the map
  myMap.remove('gender');
  print(myMap);
  
  
  
  
  
//   ASSIGNMENT
  
//   create a list of list of maps
//   print out emmanuel fromm the list of maps 

// Answer to assignment

//   List<List<Map<String,dynamic>>> classMate=[ 
//     [
//     {'Username':'Somtee','Class':'jss2','Password': 4321},
//     {'Username':'Peace','Class':'SS2','Password':5678},
//     {'Username':'Somtee','Class':"SS1", 'Password':9012},
//     {'Username':'Andy','Class':'jss3','Password':2345},
//   ]
//     ];
  
//   for (var c in classMate){
//     for(var b in c){
//       print(b);
//     }
//   }
  
//   List<Map<String,dynamic>> student=[
//     {'Username':'EMMMANUEL','Class':'SS3','Password': 1234},
//     {'Username':'Peace','Class':'SS2','Password':5678},
//     {'Username':'Somtee','Class':"SS1", 'Password':9012},
//     {'Username':'Andy','Class':'jss3','Password':2345},
//   ];
// //   print(student['Username'][0]);
// //   for(var name in student){
//     print(student.first['Username']);
  
  
  

}
  




