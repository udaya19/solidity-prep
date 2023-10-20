// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Struct {
    struct Car{
        string  model;
        uint year;
        address owner;
    }
    // usage of struct in state variables
    Car public car;
    Car[] public cars;
    mapping(address=>Car[]) public carsByOwner;

    //initializing struct
    function examples() external {
        Car memory toyota = Car("Toyota",2020,msg.sender);
        Car memory lambo = Car("Lamborgni",2023,msg.sender);
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2022;
        tesla.owner = msg.sender;
        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);
        carsByOwner[msg.sender].push(toyota);
        carsByOwner[msg.sender].push(lambo);
        carsByOwner[msg.sender].push(tesla);
    }

}