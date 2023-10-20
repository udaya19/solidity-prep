// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract FunctionOutputs {
    uint public _x;
    bool public _b;
    function returnMany() public pure returns(uint, bool){
        return (1, true);
    }

    function named() public pure returns (uint x, bool b){
        return (1,false);
    }
    function assigned() public pure returns(uint x, bool b){
        x = 1;
        b = false;
    }

    function destructAssignments() public  {
        (uint x,bool b) = returnMany();
        _x = x;
        _b = b;
    }
}