/*
  							 ____    _____   __  __   ___  __  __   ___   ____    _____ 
  							|  _ \  | ____| |  \/  | |_ _| \ \/ /  |_ _| |  _ \  | ____|
  							| |_) | |  _|   | |\/| |  | |   \  /    | |  | | | | |  _|  
  							|  _ <  | |___  | |  | |  | |   /  \    | |  | |_| | | |___ 
  							|_| \_\ |_____| |_|  |_| |___| /_/\_\  |___| |____/  |_____|
*/

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;  // version

/*
EVM - Etherium Virtual Machine
Avalancie, polygon, fantom are evm compatible blockchain...so we deploy solidity code here.
*/

contract SimpleStorage {

    /*
    DataTypes: boolean, uint, int, address, byte, string
    bool hasFavouriteNumber = true;
    uint favouriteNumber = 123; -> uint8 has 8 bytes size and default 256 bytes. only +ve whole numbers
    int favouriteNumber = 123; -> int8 has 8 bytes size and default 256 bytes. it can be +ve or -ve.
    string favouriteNumberInText = "Five"; 
    address myAddress = 0x42441250F8e5A5acEbB87fB643ca6CBfa78d9065; -> your wallet account address
    bytes8 favouriteNumber = "cat"; -> bytes8 has 8 bytes size and default 32 bytes.
    */

    /*
    Visibility: public: visible externaly and internaly
                private: only this contract call this variable
                external: only visible externaly
                internal (default): only children contract call
    */

    uint public favouriteNumber; //this is initialised default number is 0



    struct persons{
        string name;
        uint age;
    }

    persons[] public array;

    //map data strucher declaration
    mapping(string => uint) public nameToFavouriteNumber;

    function store(uint _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    //method type: view, pure dont allow to modification and dont use gas
    function retrive() public view returns(uint){
        return favouriteNumber;
    }

    /*storage types: 
    calldata - temporary variable...cant be modified
    memory - temporary variable...can be modified
    storage - permanant storage..can be modified
    */
    function addPersons(string memory _name, uint _age) public {
        persons memory newPerson = persons({name: _name, age: _age});
        array.push(newPerson);
        nameToFavouriteNumber[_name] = favouriteNumber;
    }

}

// contractAddress: 0xd9145CCE52D386f254917e481eB44e9943F39138