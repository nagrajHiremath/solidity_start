//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import "./SimpleStorage.sol";


contract StorageFactory{

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorage() public{

        //creating new instance(contract) of SimpleStorage 
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function storeFavNumber(uint index, uint favNumber) public virtual{
        SimpleStorage simpleStorage = simpleStorageArray[index];
        simpleStorage.store(favNumber);
    }

    function getFavNumber(uint index) public view returns(uint){
        SimpleStorage simpleStorage = simpleStorageArray[index];
        return simpleStorage.retrive();
    }
    
}

