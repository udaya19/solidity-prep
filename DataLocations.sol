// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract DataLocations {
    struct MyStruct{
        uint foo;
        string text;
    }
    mapping(address=>MyStruct) public myStruct;

    function examples(uint [] calldata _y) public pure returns (uint[] memory){
        callData(_y);
        uint[] memory arr = new uint[](3);
        arr[0] = 1;
        return arr;
    }

    function callData(uint [] calldata _y) private pure {//calldata donot copy elements to a new location thus saving gas where as memory creates a copy of elements and then pass as a parameter
        uint a = _y[0];
    }
}