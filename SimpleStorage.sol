// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract SimpleStorage{
    string public text;
    // calldata -> 51204 gas
    // memory   -> 51772 gas 
    function set(string memory _text) public{
        text = _text;
    }
}