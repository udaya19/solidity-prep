// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract HashFunc {
    function hash(string memory text, uint num, address addr) external pure returns(bytes32){
        return keccak256(abi.encodePacked(text,num,addr));
    }
}