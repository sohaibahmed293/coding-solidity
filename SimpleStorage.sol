// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;


contract SimpleStorage {
    uint256 myFavouriteNumber;

    
    // structure
    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    // array of Persons
    // dynamic array
    Person[] public listOfPersons;

    mapping(string => uint256) public nameToFavNumber;

    // Person anyPerson = Person({
    //     favouriteNumber: 7,
    //     name: "Sohaib"
    // });

    function store(uint256 _favouriteNumber) public {
        myFavouriteNumber = _favouriteNumber;
    }

    // view keyword means we're just reading the data from the block chain
    // so tranaction would occur while calling this function
    // this acts as  a getter function
    function retrieve() public view returns(uint256) {
        return myFavouriteNumber;
    } 

    // calldata, memory and storage types of function params
    // calldata & memory are both temporary. storage is a permanent variable
    // memory variable can be changed to assign a new valye but not the calldata

    function addPerson(string memory _name, uint256 _favNumber) public {
        listOfPersons.push( Person(_favNumber, _name) );
        nameToFavNumber[_name] = _favNumber;
    }
}