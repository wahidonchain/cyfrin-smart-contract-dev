// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // solidity versions I am using for this purpose (and anything greater than this)

contract SimpleStorage {
    // defaults to 0 if no value specified, same as typing uint256 favoriteNumber = 0;
    
    uint256 public favoriteNumber;   
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    
    function retrieve() public view returns(uint256){
        return favoriteNumber; // shows the code behind "public" and new retrieve box shows up when contract is deployed
                               // view = view just reads state from the blockchain, store is actually updating
                               // pure = pure functions disallow updating state AND reading from state or storage
                               // The blue buttons are blue representing view or pure functions, we can call them without having to send a transaction
                               // returns = specifies what the function is going to give us when we call it i.e favoriteNumber of type unit256
    }
}