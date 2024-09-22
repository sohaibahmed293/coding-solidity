// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {SimpleStorage} from "./SimpleStorage.sol";

// this contract inherits SimpleStorage contract
contract Inheritance is SimpleStorage {

    // virtual / override
    // In order to override a function in child class, add an override key word in function declaration
    // while add a virtual keyword to the parent class function declaration.
    function store(uint256 _favouriteNumber) public override {
        myFavouriteNumber  = _favouriteNumber + 10;
    }
}