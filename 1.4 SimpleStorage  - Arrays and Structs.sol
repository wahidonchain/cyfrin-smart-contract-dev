// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // solidity versions I am using for this purpose (and anything greater than this)

contract SimpleStorage {
    
    
    uint256 myFavoriteNumber; // defaults to 0 if no value specified, same as typing uint256 favoriteNumber = 0;
                              // remove public to make it an internal favoriteNumber
                              // we will use the retrieve function below to get this instead

    // uint256[] listOfFavoriteNumbers; // [0, 78, 90]
                                        //  0.  1.  2. (labelled as elements, it's common to start counting from 0)

    struct Person {
        uint256 favoriteNumber;
        string name;          // used struct to create new type "Person"
                              // changed the name of "favoriteNumber" above to "myFavoriteNumber" and below also... 
                              // ...to avoid confusion since they are out of the scope of this new struct "Person"
    }

    Person[] public listOfPeople; // [] - our array is empty for now
                                  // In our conract we won't see any values populate for uint256 because our array is empty
                                  // this is a dynamic array since its size can grow or shrink
                                  // if we added a number, e.g "Person[3]" it would become a static array with 3 Persons (can define up to any size)
                                  // we will add a function below our retrieve function that will allow us add people and update the array

    // Person public Pat = Person({favoriteNumber: 7, name: "Pat"}); 
                                          // defining Person with number of "7" and name of "Pat"
                                          // 1st Parameter "7" goes to 1st item (favoriteNumber) in the Person struct... 
                                          // ...2nd Item "Pat" goes in the 2nd item (name) in the Person struct
                                          // We now have a new button called "Pat" we can call...
                                          // ...which gives their favoriteNumber and their name
                                          // Solidity automatically indexes custom types...
                                          // ...uint256 favoriteNumber at index 0 and string name at index 1 and so on
    // Person public Mariah = Person({favoriteNumber: 16, name: "Mariah"});
    // Person public John = Person({favoriteNumber: 12, name: "John"});
                                          // added more custom Persons to our struct
                                          // turned into a comment for now as we will create an array for these People above
    
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    
    function retrieve() public view returns(uint256){
        return myFavoriteNumber; // shows the code behind "public" and new retrieve box shows up when contract is deployed
                                 // view = view just reads state from the blockchain, store is actually updating
                                 // pure = pure functions disallow updating state AND reading from state or storage
                                 // The blue buttons are blue representing view or pure functions, we can call them without having to send a transaction
                                 // returns = specifies what the function is going to give us when we call it i.e favoriteNumber of type unit256
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person(_favoriteNumber, _name) ); // this gives us a new "addPerson" function in our contract
                                                             // we can test this by specifying "Wahid" and "7" into the addPerson function then hit listOfPeople to see the name and number added
                                                             // Solidity will index each added person in the order you add (1st person in the list will be 0, next will be 1, etc)
    }
}