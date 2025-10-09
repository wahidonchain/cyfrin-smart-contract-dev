// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // solidity versions I am using for this purpose (and anything greater than this)

contract SimpleStorage {
    
    
    uint256 myFavoriteNumber; // defaults to 0 if no value specified, same as typing uint256 favoriteNumber = 0;
                              // remove public to make it an internal favoriteNumber
                              // we will use the retrieve function below to get this instead
                              // 4.1 myFavoriteNumber was implicitly coverted to a storage variable
                              // 4.2 we can always retrieve what is in myFavoriteNumber
                              // 4.3 the variable therefore exists outside of function calls

    // uint256[] listOfFavoriteNumbers; // [0, 78, 90]
                                        //  0.  1.  2. (labelled as elements, it's common to start counting from 0)

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople; 
    
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    
    function retrieve() public view returns(uint256){
        return myFavoriteNumber; 
    }
 
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
    // _name = "cat";  // 2.1 defining name as "cat"
                       // 2.2 changed "memory" to "calldata"
                       // 2.3 calldata is a read-only memory...allows temporary variables that cannot be modified...
                       // ...we cannot pass modifiable variables through calldata, memory variables are temp and can be modified
                       // 2.4 storage is permanent variables that can be modified
                       // 2.5 we will remove the "cat" definition for now (commented) and change back to "memory"

        listOfPeople.push( Person(_favoriteNumber, _name) ); // 1.1 calldata, memory, and storage - places that the EVM can read and write to (there are many more)
                                                             // 1.2 calldata and memory = the _name variable is only going to exist temporarily for the duration of the function call
                                                             // 1.3 if we remove "memory" we get an error "Data location must be given for the paramter in the function"
                                                             // 1.4 inside functions most variables default to ‘memory’ variables but strings are different...
                                                             // ...and have to be specified (this has to do with arrays and structs)
    }

}