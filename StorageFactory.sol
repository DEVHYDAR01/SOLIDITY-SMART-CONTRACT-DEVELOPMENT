// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 favoriteNumber;

    struct Person {
        uint256 favoritenumber;
        string name;
    }

    Person[] public list_of_people;

    mapping(string => uint256) public nameToFavoriteNumber;

    function add_person(string memory _name, uint256 _favoritenumber) public {
        list_of_people.push(Person(_favoritenumber, _name));
        nameToFavoriteNumber[_name] = _favoritenumber;
    }

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;       
    }
}

contract StorageFactory {
    SimpleStorage public simpleStorage;

    function createSimpleStorage() public {
        simpleStorage = new SimpleStorage();
    }

}
