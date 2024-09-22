// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// named import => Only import a specific contract from the given file
import {SimpleStorage} from './SimpleStorage.sol';

contract StorageFactory {

    SimpleStorage[] public listOfSimpleStorageContracts;

    // Every time this function is called, a SimpleStorage contract would bbe created
    // & pushed to the list.
    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorage);
    }

    function setFavNumberInSimpleStorageContract(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function getFavNummberFromSimpleStrageContract(uint256 _simpleStorageIndex) public view returns(uint256) {
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
} 