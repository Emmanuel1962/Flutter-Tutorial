void main() {
// // STRING METHOD
//  String name='John-Chuku Emmanuel';
//   print (name.toUpperCase());
//   print(name.toLowerCase());

//   print(name.substring(3,6));
//   print(name[1]);

// String password= '   12345    ';

//   print(password);
//   print(password.trim());
//   if(password.trim().length<8){
//     print(true);
//   }else{
//     print(false);
//   }

// String shoe= 'Claks is a good shoe';
//   if(shoe.startsWith('U')){
//     print(true);
//   }else{
//     print(false);
//   }

// if (shoe.endsWith('shoe')){
//   print(true);
//  }else{
//   print (false);
// }

//   print(shoe.replaceAll(' ','-'));// this replaces all the space with hyphen

//   var email='derajohnchuku@gmail.com';
//   if(email.contains('@')){
//     print('good email');
//      }else{
//     print('bad email');
//   }

// SPILT METHOD
//   this used when coverting your string to list. and it uses comma to seprate it for you

  String jam = 'okafor micheal kachi';

  var sname = jam.split('');
  print(sname);

  var fname = sname[0];
  print(fname);

  var kname = sname[1];
  print(kname);

  var lname = sname[2];
  print(lname);

  String person = 'emmanuel';
  print(person.toUpperCase());
}
/*
   * ASSIGNMENT
   1. RUN A LOOP TO PRINT OUT STAR SHAPE IN 6 ROWS
   2. WRITE A FUNCTION THAT CAPITALIZES THE FIRST LETTER OF A STRING
  


String capitalizeFirstLetter(String word) {
  if (word.isEmpty) {
    return word; // Return the original string if it is empty
  }
  return word[0].toUpperCase() + word.substring(1);
}

void main() {
  // Example usage:
  String name='emmanuel';
  String result = capitalizeFirstLetter(input);
  print(result); 


  */
