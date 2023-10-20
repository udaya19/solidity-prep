// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Name{
    string public name = "Uday";
    function getName() public view returns(string memory){
        return name;
    }
}