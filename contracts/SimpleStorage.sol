// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


contract SimpleStorage {

    // default visibilty of the function set to internal
    uint256 myFavouriteNumber;
    
    // structure
    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    // dynamic array
    Person[] public listOfPersons;

    // mapping here acts as an associative array assigning fav number to a person name
    mapping(string => uint256) public nameToFavNumber;

    function store(uint256 _favouriteNumber) public {
        myFavouriteNumber = _favouriteNumber;
    }

    // view keyword means we're just reading the data from the block chain
    // so tranaction would not occur while calling this function unless and until called from a setter function
    // this acts as  a getter function
    function retrieve() public view returns(uint256) {
        return myFavouriteNumber;
    } 

    // calldata, memory and storage types of function params
    // calldata & memory are both temporary means they will exist only for the duration of functioncall
    // while storage is a permanent
    // memory variable can be changed to assign a new value but not the calldata

    function addPerson(string memory _name, uint256 _favNumber) public {
        listOfPersons.push( Person(_favNumber, _name) );
        nameToFavNumber[_name] = _favNumber;
    }
}