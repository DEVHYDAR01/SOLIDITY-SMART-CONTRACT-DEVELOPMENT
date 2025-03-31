// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfsimpleStorage;

    function createSimpleStorage() public {
        SimpleStorage myNewSimpleStorage = new SimpleStorage();
        listOfsimpleStorage.push(myNewSimpleStorage);
    }

    function sFStore(uint256 _storeindex, uint256 _storeFavNumber) public {
        //address
        //ABI - Application Binary Interface
        SimpleStorage mySimpleStorage = listOfsimpleStorage[_storeindex];
        mySimpleStorage.store(_storeFavNumber);
    }
    function sfGet(uint256 _storeindex) public view returns (uint256) {
        // return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
        return listOfsimpleStorage[_storeindex].retrieve();
    }
}
