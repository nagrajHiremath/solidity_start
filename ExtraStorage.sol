//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import "./StorageFactory.sol";

/*
Inheritance & override
KeywordsForOverride: virtual, override
- to override any method that method need to specify as virtual.
*/
contract ExtraStorage is StorageFactory{

    function storeFavNumber(uint index, uint favNumber) public override{
        SimpleStorage simpleStorage = simpleStorageArray[index];
        simpleStorage.store(favNumber+5);
    }

}