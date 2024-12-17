class Users{
  List<Map<String,dynamic>> usersList = [];

  void addUsers({required Name , required Age, required Email}){
    Map<String,dynamic> m = {};
    m['Name'] = Name;
    m['Age'] = Age;
    m['Email'] = Email;
    usersList.add(m);
  }

  // List<Map<String,dynamic>> getUsers(){
  //   return usersList;
  // }

  void getUsers(){
    for(int i=0; i<usersList.length; i++){
      print("${usersList[i]} \n");
    }
  }

  void updateUsers({required Name , required Age, required Email , required id}){
    Map<String,dynamic> m = {};
    m['Name'] = Name;
    m['Age'] = Age;
    m['Email'] = Email;
    usersList[id] = m;
    print("User Details Updated!");
  }

  void deleteUser({required id}){
    usersList.removeAt(id);
    print("User Deleted!");
  }

}