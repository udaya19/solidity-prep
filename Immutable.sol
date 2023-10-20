// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Immutable {
    address public immutable owner;
    constructor(){
        owner = msg.sender;
    }
    function changeOwner(address _newOwner) public {
        require(msg.sender == owner,"Not an owner");
        owner = _newOwner;//error because owner is immutable and cannot be changed
    }
}