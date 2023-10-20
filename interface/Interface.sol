// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

interface GetName {
    function getName() external view returns(string memory);
}

contract CallInterface{
    string public name;
    function getName(address _name) external {
       name = GetName(_name).getName();
    }
}