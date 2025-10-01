// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // solidity versions I am using for this purpose (and anything greater than this)

contract SimpleStorage {
    
    // Basic Solidity Types: boolean, uint, int, address, bytes

    // Semi colons tell solidity that a statement has completed
    
    bool hasFavouriteNumber = true; // true or false value
    
    uint256 favouriteNumber = 88; // unsigned integer, positive whole numbers, number of bytes specified as 256 (max size)
    
    string favoriteNumberInText = "eighty-eight"; // text variable that can represent a variable as a text string, 
                                                    // quotation marks indicate to solidity that it is a string
    
    int256 favoriteInt = -88; // signed whole number, positive or negative, number of bytes specified as 256
    
    address myAddress = 0xa2cf94ea3e0Ecc8FEA4BDA698e17F3e09CD91704; // wallet address
    
    bytes32 favoriteBytes32 = "cat"; // strings are basicly bytes objects but for text and can also be represented like this
                                        //strings can be converted easily into byte objects
}