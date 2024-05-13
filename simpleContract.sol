// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStrorage {
    /**
        Types: boolean, uint8-256, int, bytes, strings
    **/
    // uint256 favouriteNumber = 5;
    // int256 favouriteInt = 5;
    // string favouriteNumberInText = "five";
    // bool hasFavouriteNumber = true;
    // // address myAddress = 0x005;

    uint256 public favouriteNumber;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
        favouriteNumber += 1;
    }

    People public person = People({
        favouriteNumber: 2,
        name: "samuel"
    });

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    People[] public people;

    function retreive() public view returns(uint256){
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People)
    }
}